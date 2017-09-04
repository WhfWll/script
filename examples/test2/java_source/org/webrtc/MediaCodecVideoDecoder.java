package org.webrtc;

import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.Surface;
import java.nio.ByteBuffer;

class MediaCodecVideoDecoder
{
  private static final int COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m = 2141391876;
  private static final int CURRENT_SDK_VERSION = Build.VERSION.SDK_INT;
  private static final int DEQUEUE_INPUT_TIMEOUT = 500000;
  private static final int EGL14_SDK_VERSION = 17;
  private static final String TAG = "MediaCodecVideoDecoder";
  private static final String VP8_MIME_TYPE = "video/x-vnd.on2.vp8";
  private static final int[] supportedColorList;
  private static final String[] supportedHwCodecPrefixes = { "OMX.qcom.", "OMX.Nvidia." };
  private static final String[] supportedSwCodecPrefixes = { "OMX.google." };
  private int colorFormat;
  private EGLContext eglContext = EGL14.EGL_NO_CONTEXT;
  private EGLDisplay eglDisplay = EGL14.EGL_NO_DISPLAY;
  private EGLSurface eglSurface = EGL14.EGL_NO_SURFACE;
  private int height;
  private ByteBuffer[] inputBuffers;
  private MediaCodec mediaCodec;
  private Thread mediaCodecThread;
  private ByteBuffer[] outputBuffers;
  private int sliceHeight;
  private float[] stMatrix = new float[16];
  private int stride;
  private Surface surface = null;
  private SurfaceTexture surfaceTexture = null;
  private int textureID = -1;
  private boolean useSurface;
  private int width;
  
  static
  {
    supportedColorList = new int[] { 19, 21, 2141391872, 2141391876 };
  }
  
  private MediaCodecVideoDecoder() {}
  
  private void checkEglError(String paramString)
  {
    int i = EGL14.eglGetError();
    if (i != 12288)
    {
      Log.e("MediaCodecVideoDecoder", paramString + ": EGL Error: 0x" + Integer.toHexString(i));
      throw new RuntimeException(paramString + ": EGL error: 0x" + Integer.toHexString(i));
    }
  }
  
  private void checkGlError(String paramString)
  {
    int i = GLES20.glGetError();
    if (i != 0)
    {
      Log.e("MediaCodecVideoDecoder", paramString + ": GL Error: 0x" + Integer.toHexString(i));
      throw new RuntimeException(paramString + ": GL Error: 0x " + Integer.toHexString(i));
    }
  }
  
  private void checkOnMediaCodecThread()
  {
    if (mediaCodecThread.getId() != Thread.currentThread().getId()) {
      throw new RuntimeException("MediaCodecVideoDecoder previously operated on " + mediaCodecThread + " but is now called on " + Thread.currentThread());
    }
  }
  
  private int dequeueInputBuffer()
  {
    checkOnMediaCodecThread();
    try
    {
      int i = mediaCodec.dequeueInputBuffer(500000L);
      return i;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Log.e("MediaCodecVideoDecoder", "dequeueIntputBuffer failed", localIllegalStateException);
    }
    return -2;
  }
  
  private MediaCodecVideoDecoder.DecoderOutputBufferInfo dequeueOutputBuffer(int paramInt)
  {
    checkOnMediaCodecThread();
    int i;
    try
    {
      localBufferInfo = new MediaCodec.BufferInfo();
      i = mediaCodec.dequeueOutputBuffer(localBufferInfo, paramInt);
    }
    catch (IllegalStateException localIllegalStateException)
    {
      MediaCodec.BufferInfo localBufferInfo;
      label71:
      MediaFormat localMediaFormat;
      int[] arrayOfInt;
      int j;
      Log.e("MediaCodecVideoDecoder", "dequeueOutputBuffer failed", localIllegalStateException);
      return new MediaCodecVideoDecoder.DecoderOutputBufferInfo(-1, 0, 0, -1L);
    }
    if (i == -3)
    {
      outputBuffers = mediaCodec.getOutputBuffers();
      Log.d("MediaCodecVideoDecoder", "Output buffers changed: " + outputBuffers.length);
    }
    while (i != -2)
    {
      i = mediaCodec.dequeueOutputBuffer(localBufferInfo, paramInt);
      break;
    }
    localMediaFormat = mediaCodec.getOutputFormat();
    Log.d("MediaCodecVideoDecoder", "Format changed: " + localMediaFormat.toString());
    width = localMediaFormat.getInteger("width");
    height = localMediaFormat.getInteger("height");
    if ((!useSurface) && (localMediaFormat.containsKey("color-format")))
    {
      colorFormat = localMediaFormat.getInteger("color-format");
      Log.d("MediaCodecVideoDecoder", "Color: 0x" + Integer.toHexString(colorFormat));
      arrayOfInt = supportedColorList;
      j = arrayOfInt.length;
      i = 0;
    }
    for (;;)
    {
      if (i < j)
      {
        int k = arrayOfInt[i];
        if (colorFormat != k) {
          break label461;
        }
        i = 1;
        label238:
        if (i == 0)
        {
          Log.e("MediaCodecVideoDecoder", "Non supported color format");
          return new MediaCodecVideoDecoder.DecoderOutputBufferInfo(-1, 0, 0, -1L);
        }
        if (localMediaFormat.containsKey("stride")) {
          stride = localMediaFormat.getInteger("stride");
        }
        if (localMediaFormat.containsKey("slice-height")) {
          sliceHeight = localMediaFormat.getInteger("slice-height");
        }
        Log.d("MediaCodecVideoDecoder", "Frame stride and slice height: " + stride + " x " + sliceHeight);
        stride = Math.max(width, stride);
        sliceHeight = Math.max(height, sliceHeight);
        break label71;
      }
      do
      {
        if (i >= 0)
        {
          MediaCodecVideoDecoder.DecoderOutputBufferInfo localDecoderOutputBufferInfo = new MediaCodecVideoDecoder.DecoderOutputBufferInfo(i, offset, size, presentationTimeUs);
          return localDecoderOutputBufferInfo;
        }
        return null;
        i = 0;
        break label238;
        if (i == -3) {
          break;
        }
      } while (i != -2);
      break;
      label461:
      i += 1;
    }
  }
  
  private void eglRelease()
  {
    Log.d("MediaCodecVideoDecoder", "EGL release");
    if (eglDisplay != EGL14.EGL_NO_DISPLAY)
    {
      EGL14.eglDestroySurface(eglDisplay, eglSurface);
      EGL14.eglDestroyContext(eglDisplay, eglContext);
      EGL14.eglReleaseThread();
      EGL14.eglTerminate(eglDisplay);
    }
    eglDisplay = EGL14.EGL_NO_DISPLAY;
    eglContext = EGL14.EGL_NO_CONTEXT;
    eglSurface = EGL14.EGL_NO_SURFACE;
  }
  
  private void eglSetup(EGLContext paramEGLContext, int paramInt1, int paramInt2)
  {
    Log.d("MediaCodecVideoDecoder", "EGL setup");
    EGLContext localEGLContext = paramEGLContext;
    if (paramEGLContext == null) {
      localEGLContext = EGL14.EGL_NO_CONTEXT;
    }
    eglDisplay = EGL14.eglGetDisplay(0);
    if (eglDisplay == EGL14.EGL_NO_DISPLAY) {
      throw new RuntimeException("Unable to get EGL14 display");
    }
    paramEGLContext = new int[2];
    if (!EGL14.eglInitialize(eglDisplay, paramEGLContext, 0, paramEGLContext, 1)) {
      throw new RuntimeException("Unable to initialize EGL14");
    }
    paramEGLContext = new EGLConfig[1];
    int[] arrayOfInt = new int[1];
    EGLDisplay localEGLDisplay = eglDisplay;
    int i = paramEGLContext.length;
    if (!EGL14.eglChooseConfig(localEGLDisplay, new int[] { 12324, 8, 12323, 8, 12322, 8, 12352, 4, 12339, 1, 12344 }, 0, paramEGLContext, 0, i, arrayOfInt, 0)) {
      throw new RuntimeException("Unable to find RGB888 EGL config");
    }
    eglContext = EGL14.eglCreateContext(eglDisplay, paramEGLContext[0], localEGLContext, new int[] { 12440, 2, 12344 }, 0);
    checkEglError("eglCreateContext");
    if (eglContext == null) {
      throw new RuntimeException("Null EGL context");
    }
    eglSurface = EGL14.eglCreatePbufferSurface(eglDisplay, paramEGLContext[0], new int[] { 12375, paramInt1, 12374, paramInt2, 12344 }, 0);
    checkEglError("eglCreatePbufferSurface");
    if (eglSurface == null) {
      throw new RuntimeException("EGL surface was null");
    }
  }
  
  private static MediaCodecVideoDecoder.DecoderProperties findVp8Decoder(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT < 19) {
      return null;
    }
    String[] arrayOfString = supportedHwCodecPrefixes;
    if (paramBoolean) {
      arrayOfString = supportedSwCodecPrefixes;
    }
    int i = 0;
    Object localObject2;
    int k;
    int j;
    if (i < MediaCodecList.getCodecCount())
    {
      localObject2 = MediaCodecList.getCodecInfoAt(i);
      if (!((MediaCodecInfo)localObject2).isEncoder())
      {
        localObject1 = ((MediaCodecInfo)localObject2).getSupportedTypes();
        k = localObject1.length;
        j = 0;
        if (j >= k) {
          break label358;
        }
        if (!localObject1[j].equals("video/x-vnd.on2.vp8")) {}
      }
    }
    label119:
    label353:
    label358:
    for (Object localObject1 = ((MediaCodecInfo)localObject2).getName();; localObject1 = null)
    {
      if (localObject1 != null)
      {
        Log.d("MediaCodecVideoDecoder", "Found candidate decoder " + (String)localObject1);
        k = arrayOfString.length;
        j = 0;
        if (j >= k) {
          break label353;
        }
        if (!((String)localObject1).startsWith(arrayOfString[j])) {}
      }
      for (j = 1;; j = 0)
      {
        if (j != 0)
        {
          localObject2 = ((MediaCodecInfo)localObject2).getCapabilitiesForType("video/x-vnd.on2.vp8");
          int[] arrayOfInt1 = colorFormats;
          k = arrayOfInt1.length;
          j = 0;
          for (;;)
          {
            if (j < k)
            {
              m = arrayOfInt1[j];
              Log.d("MediaCodecVideoDecoder", "   Color: 0x" + Integer.toHexString(m));
              j += 1;
              continue;
              j += 1;
              break;
              j += 1;
              break label119;
            }
          }
          arrayOfInt1 = supportedColorList;
          int m = arrayOfInt1.length;
          j = 0;
          while (j < m)
          {
            int n = arrayOfInt1[j];
            int[] arrayOfInt2 = colorFormats;
            int i1 = arrayOfInt2.length;
            k = 0;
            while (k < i1)
            {
              int i2 = arrayOfInt2[k];
              if (i2 == n)
              {
                Log.d("MediaCodecVideoDecoder", "Found target decoder " + (String)localObject1 + ". Color: 0x" + Integer.toHexString(i2));
                return new MediaCodecVideoDecoder.DecoderProperties((String)localObject1, i2);
              }
              k += 1;
            }
            j += 1;
          }
        }
        i += 1;
        break;
        return null;
      }
    }
  }
  
  private boolean initDecode(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, EGLContext paramEGLContext)
  {
    Surface localSurface = null;
    if (mediaCodecThread != null) {
      throw new RuntimeException("Forgot to release()?");
    }
    if ((paramBoolean2) && (paramEGLContext == null)) {
      throw new RuntimeException("No shared EGL context.");
    }
    MediaCodecVideoDecoder.DecoderProperties localDecoderProperties = findVp8Decoder(paramBoolean1);
    if (localDecoderProperties == null) {
      throw new RuntimeException("Cannot find HW VP8 decoder");
    }
    Log.d("MediaCodecVideoDecoder", "Java initDecode: " + paramInt1 + " x " + paramInt2 + ". Color: 0x" + Integer.toHexString(colorFormat) + ". Use Surface: " + paramBoolean2 + ". Use SW codec: " + paramBoolean1);
    if (paramEGLContext != null) {
      Log.d("MediaCodecVideoDecoder", "Decoder shared EGL Context: " + paramEGLContext);
    }
    mediaCodecThread = Thread.currentThread();
    try
    {
      width = paramInt1;
      height = paramInt2;
      useSurface = paramBoolean2;
      stride = paramInt1;
      sliceHeight = paramInt2;
      if (paramBoolean2)
      {
        eglSetup(paramEGLContext, paramInt1, paramInt2);
        makeCurrent();
        paramEGLContext = new int[1];
        GLES20.glGenTextures(1, paramEGLContext, 0);
        checkGlError("glGenTextures");
        textureID = paramEGLContext[0];
        GLES20.glBindTexture(36197, textureID);
        checkGlError("glBindTexture mTextureID");
        GLES20.glTexParameterf(36197, 10241, 9728.0F);
        GLES20.glTexParameterf(36197, 10240, 9729.0F);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        checkGlError("glTexParameter");
        Log.d("MediaCodecVideoDecoder", "Video decoder TextureID = " + textureID);
        surfaceTexture = new SurfaceTexture(textureID);
        surface = new Surface(surfaceTexture);
        localSurface = surface;
      }
      paramEGLContext = MediaFormat.createVideoFormat("video/x-vnd.on2.vp8", paramInt1, paramInt2);
      if (!paramBoolean2) {
        paramEGLContext.setInteger("color-format", colorFormat);
      }
      Log.d("MediaCodecVideoDecoder", "  Format: " + paramEGLContext);
      mediaCodec = MediaCodecVideoEncoder.createByCodecName(codecName);
      if (mediaCodec == null) {
        return false;
      }
      mediaCodec.configure(paramEGLContext, localSurface, null, 0);
      mediaCodec.start();
      colorFormat = colorFormat;
      outputBuffers = mediaCodec.getOutputBuffers();
      inputBuffers = mediaCodec.getInputBuffers();
      Log.d("MediaCodecVideoDecoder", "Input buffers: " + inputBuffers.length + ". Output buffers: " + outputBuffers.length);
      return true;
    }
    catch (IllegalStateException paramEGLContext)
    {
      Log.e("MediaCodecVideoDecoder", "initDecode failed", paramEGLContext);
    }
    return false;
  }
  
  private static boolean isEGL14Supported()
  {
    Log.d("MediaCodecVideoDecoder", "SDK version: " + CURRENT_SDK_VERSION);
    return CURRENT_SDK_VERSION >= 17;
  }
  
  private static boolean isPlatformSupported()
  {
    boolean bool = false;
    if (findVp8Decoder(false) != null) {
      bool = true;
    }
    return bool;
  }
  
  private void makeCurrent()
  {
    if (!EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
      throw new RuntimeException("eglMakeCurrent failed");
    }
  }
  
  private boolean queueInputBuffer(int paramInt1, int paramInt2, long paramLong)
  {
    checkOnMediaCodecThread();
    try
    {
      inputBuffers[paramInt1].position(0);
      inputBuffers[paramInt1].limit(paramInt2);
      mediaCodec.queueInputBuffer(paramInt1, 0, paramInt2, paramLong, 0);
      return true;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Log.e("MediaCodecVideoDecoder", "decode failed", localIllegalStateException);
    }
    return false;
  }
  
  private void release()
  {
    Log.d("MediaCodecVideoDecoder", "Java releaseDecoder");
    checkOnMediaCodecThread();
    try
    {
      mediaCodec.stop();
      mediaCodec.release();
      mediaCodec = null;
      mediaCodecThread = null;
      if (useSurface)
      {
        surface.release();
        if (textureID >= 0)
        {
          int i = textureID;
          Log.d("MediaCodecVideoDecoder", "Delete video decoder TextureID " + textureID);
          GLES20.glDeleteTextures(1, new int[] { i }, 0);
          checkGlError("glDeleteTextures");
        }
        eglRelease();
      }
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;)
      {
        Log.e("MediaCodecVideoDecoder", "release failed", localIllegalStateException);
      }
    }
  }
  
  private boolean releaseOutputBuffer(int paramInt, boolean paramBoolean)
  {
    checkOnMediaCodecThread();
    try
    {
      if (!useSurface) {
        paramBoolean = false;
      }
      mediaCodec.releaseOutputBuffer(paramInt, paramBoolean);
      return true;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Log.e("MediaCodecVideoDecoder", "releaseOutputBuffer failed", localIllegalStateException);
    }
    return false;
  }
}
