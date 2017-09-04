package org.webrtc;

import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import java.nio.ByteBuffer;

public class MediaCodecVideoEncoder
{
  private static final int COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m = 2141391876;
  private static final int DEQUEUE_TIMEOUT = 0;
  private static final String TAG = "MediaCodecVideoEncoder";
  private static final int VIDEO_ControlRateConstant = 2;
  private static final String VP8_MIME_TYPE = "video/x-vnd.on2.vp8";
  private static final int[] supportedColorList = { 19, 21, 2141391872, 2141391876 };
  private static final String[] supportedHwCodecPrefixes = { "OMX.qcom.", "OMX.Nvidia." };
  private int colorFormat;
  private MediaCodec mediaCodec;
  private Thread mediaCodecThread;
  private ByteBuffer[] outputBuffers;
  
  private MediaCodecVideoEncoder() {}
  
  private void checkOnMediaCodecThread()
  {
    if (mediaCodecThread.getId() != Thread.currentThread().getId()) {
      throw new RuntimeException("MediaCodecVideoEncoder previously operated on " + mediaCodecThread + " but is now called on " + Thread.currentThread());
    }
  }
  
  static MediaCodec createByCodecName(String paramString)
  {
    try
    {
      paramString = MediaCodec.createByCodecName(paramString);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  private int dequeueInputBuffer()
  {
    checkOnMediaCodecThread();
    try
    {
      int i = mediaCodec.dequeueInputBuffer(0L);
      return i;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Log.e("MediaCodecVideoEncoder", "dequeueIntputBuffer failed", localIllegalStateException);
    }
    return -2;
  }
  
  private MediaCodecVideoEncoder.OutputBufferInfo dequeueOutputBuffer()
  {
    checkOnMediaCodecThread();
    int i;
    label185:
    do
    {
      for (;;)
      {
        try
        {
          MediaCodec.BufferInfo localBufferInfo = new MediaCodec.BufferInfo();
          i = mediaCodec.dequeueOutputBuffer(localBufferInfo, 0L);
          if (i >= 0)
          {
            ByteBuffer localByteBuffer = outputBuffers[i].duplicate();
            localByteBuffer.position(offset);
            localByteBuffer.limit(offset + size);
            if ((flags & 0x1) == 0) {
              break label185;
            }
            bool = true;
            if (bool) {
              Log.d("MediaCodecVideoEncoder", "Sync frame generated");
            }
            return new MediaCodecVideoEncoder.OutputBufferInfo(i, localByteBuffer.slice(), bool, presentationTimeUs);
          }
          if (i == -3)
          {
            outputBuffers = mediaCodec.getOutputBuffers();
            return dequeueOutputBuffer();
          }
          if (i != -2) {
            break;
          }
          return dequeueOutputBuffer();
        }
        catch (IllegalStateException localIllegalStateException)
        {
          Log.e("MediaCodecVideoEncoder", "dequeueOutputBuffer failed", localIllegalStateException);
          return new MediaCodecVideoEncoder.OutputBufferInfo(-1, null, false, -1L);
        }
        throw new RuntimeException("dequeueOutputBuffer: " + i);
        boolean bool = false;
      }
    } while (i != -1);
    return null;
  }
  
  private boolean encode(boolean paramBoolean, int paramInt1, int paramInt2, long paramLong)
  {
    checkOnMediaCodecThread();
    if (paramBoolean) {}
    try
    {
      Log.d("MediaCodecVideoEncoder", "Sync frame request");
      Bundle localBundle = new Bundle();
      localBundle.putInt("request-sync", 0);
      mediaCodec.setParameters(localBundle);
      mediaCodec.queueInputBuffer(paramInt1, 0, paramInt2, paramLong, 0);
      return true;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Log.e("MediaCodecVideoEncoder", "encode failed", localIllegalStateException);
    }
    return false;
  }
  
  private static MediaCodecVideoEncoder.EncoderProperties findVp8HwEncoder()
  {
    if (Build.VERSION.SDK_INT < 19) {
      return null;
    }
    int i = 0;
    Object localObject2;
    int k;
    int j;
    if (i < MediaCodecList.getCodecCount())
    {
      localObject2 = MediaCodecList.getCodecInfoAt(i);
      if (((MediaCodecInfo)localObject2).isEncoder())
      {
        localObject1 = ((MediaCodecInfo)localObject2).getSupportedTypes();
        k = localObject1.length;
        j = 0;
        if (j >= k) {
          break label342;
        }
        if (!localObject1[j].equals("video/x-vnd.on2.vp8")) {}
      }
    }
    label109:
    label337:
    label342:
    for (Object localObject1 = ((MediaCodecInfo)localObject2).getName();; localObject1 = null)
    {
      Object localObject3;
      if (localObject1 != null)
      {
        Log.d("MediaCodecVideoEncoder", "Found candidate encoder " + (String)localObject1);
        localObject3 = supportedHwCodecPrefixes;
        k = localObject3.length;
        j = 0;
        if (j >= k) {
          break label337;
        }
        if (!((String)localObject1).startsWith(localObject3[j])) {}
      }
      for (j = 1;; j = 0)
      {
        if (j != 0)
        {
          localObject2 = ((MediaCodecInfo)localObject2).getCapabilitiesForType("video/x-vnd.on2.vp8");
          localObject3 = colorFormats;
          k = localObject3.length;
          j = 0;
          for (;;)
          {
            if (j < k)
            {
              m = localObject3[j];
              Log.d("MediaCodecVideoEncoder", "   Color: 0x" + Integer.toHexString(m));
              j += 1;
              continue;
              j += 1;
              break;
              j += 1;
              break label109;
            }
          }
          localObject3 = supportedColorList;
          int m = localObject3.length;
          j = 0;
          while (j < m)
          {
            int n = localObject3[j];
            int[] arrayOfInt = colorFormats;
            int i1 = arrayOfInt.length;
            k = 0;
            while (k < i1)
            {
              int i2 = arrayOfInt[k];
              if (i2 == n)
              {
                Log.d("MediaCodecVideoEncoder", "Found target encoder " + (String)localObject1 + ". Color: 0x" + Integer.toHexString(i2));
                return new MediaCodecVideoEncoder.EncoderProperties((String)localObject1, i2);
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
  
  private ByteBuffer[] initEncode(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Log.d("MediaCodecVideoEncoder", "Java initEncode: " + paramInt1 + " x " + paramInt2 + ". @ " + paramInt3 + " kbps. Fps: " + paramInt4 + ". Color: 0x" + Integer.toHexString(colorFormat));
    if (mediaCodecThread != null) {
      throw new RuntimeException("Forgot to release()?");
    }
    Object localObject = findVp8HwEncoder();
    if (localObject == null) {
      throw new RuntimeException("Can not find HW VP8 encoder");
    }
    mediaCodecThread = Thread.currentThread();
    try
    {
      MediaFormat localMediaFormat = MediaFormat.createVideoFormat("video/x-vnd.on2.vp8", paramInt1, paramInt2);
      localMediaFormat.setInteger("bitrate", paramInt3 * 1000);
      localMediaFormat.setInteger("bitrate-mode", 2);
      localMediaFormat.setInteger("color-format", colorFormat);
      localMediaFormat.setInteger("frame-rate", paramInt4);
      localMediaFormat.setInteger("i-frame-interval", 100);
      Log.d("MediaCodecVideoEncoder", "  Format: " + localMediaFormat);
      mediaCodec = createByCodecName(codecName);
      if (mediaCodec == null) {
        return null;
      }
      mediaCodec.configure(localMediaFormat, null, null, 1);
      mediaCodec.start();
      colorFormat = colorFormat;
      outputBuffers = mediaCodec.getOutputBuffers();
      localObject = mediaCodec.getInputBuffers();
      Log.d("MediaCodecVideoEncoder", "Input buffers: " + localObject.length + ". Output buffers: " + outputBuffers.length);
      return localObject;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Log.e("MediaCodecVideoEncoder", "initEncode failed", localIllegalStateException);
    }
    return null;
  }
  
  public static boolean isPlatformSupported()
  {
    return findVp8HwEncoder() != null;
  }
  
  private void release()
  {
    Log.d("MediaCodecVideoEncoder", "Java releaseEncoder");
    checkOnMediaCodecThread();
    try
    {
      mediaCodec.stop();
      mediaCodec.release();
      mediaCodec = null;
      mediaCodecThread = null;
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;)
      {
        Log.e("MediaCodecVideoEncoder", "release failed", localIllegalStateException);
      }
    }
  }
  
  private boolean releaseOutputBuffer(int paramInt)
  {
    checkOnMediaCodecThread();
    try
    {
      mediaCodec.releaseOutputBuffer(paramInt, false);
      return true;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Log.e("MediaCodecVideoEncoder", "releaseOutputBuffer failed", localIllegalStateException);
    }
    return false;
  }
  
  private boolean setRates(int paramInt1, int paramInt2)
  {
    checkOnMediaCodecThread();
    Log.v("MediaCodecVideoEncoder", "setRates: " + paramInt1 + " kbps. Fps: " + paramInt2);
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("video-bitrate", paramInt1 * 1000);
      mediaCodec.setParameters(localBundle);
      return true;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Log.e("MediaCodecVideoEncoder", "setRates failed", localIllegalStateException);
    }
    return false;
  }
}
