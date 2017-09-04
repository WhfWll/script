package org.webrtc.videoengine;

import android.content.Context;
import android.graphics.ImageFormat;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PreviewCallback;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Display;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.WindowManager;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.Exchanger;

public class VideoCaptureAndroid
  implements Camera.PreviewCallback, SurfaceHolder.Callback
{
  private static final String TAG = "anLive";
  private static SurfaceHolder localPreview;
  private double averageDurationMs;
  private Camera camera;
  private int[] cameraGlTextures = null;
  private SurfaceTexture cameraSurfaceTexture;
  private VideoCaptureAndroid.CameraThread cameraThread;
  private Handler cameraThreadHandler;
  private Context context;
  private int frameCount;
  private int frameDropRatio;
  private final int id;
  private final Camera.CameraInfo info;
  private long lastCaptureTimeMs;
  private final long native_capturer;
  private final int numCaptureBuffers = 3;
  
  public VideoCaptureAndroid(int paramInt, long paramLong)
  {
    id = paramInt;
    native_capturer = paramLong;
    context = GetContext();
    info = new Camera.CameraInfo();
    Camera.getCameraInfo(paramInt, info);
  }
  
  private static native Context GetContext();
  
  private native void ProvideCameraFrame(byte[] paramArrayOfByte, int paramInt1, int paramInt2, long paramLong1, long paramLong2);
  
  private static <T> T exchange(Exchanger<T> paramExchanger, T paramT)
  {
    try
    {
      paramExchanger = paramExchanger.exchange(paramT);
      return paramExchanger;
    }
    catch (InterruptedException paramExchanger)
    {
      throw new RuntimeException(paramExchanger);
    }
  }
  
  private int getDeviceOrientation()
  {
    if (context != null)
    {
      switch (((WindowManager)context.getSystemService("window")).getDefaultDisplay().getRotation())
      {
      default: 
        return 0;
      case 1: 
        return 90;
      case 2: 
        return 180;
      }
      return 270;
    }
    return 0;
  }
  
  public static void setLocalPreview(SurfaceHolder paramSurfaceHolder)
  {
    localPreview = paramSurfaceHolder;
  }
  
  private void setPreviewDisplayOnCameraThread(SurfaceHolder paramSurfaceHolder, Exchanger<IOException> paramExchanger)
  {
    try
    {
      camera.setPreviewDisplay(paramSurfaceHolder);
      exchange(paramExchanger, null);
      return;
    }
    catch (IOException paramSurfaceHolder)
    {
      exchange(paramExchanger, paramSurfaceHolder);
    }
  }
  
  /* Error */
  private void setPreviewRotation(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 143	org/webrtc/videoengine/VideoCaptureAndroid:camera	Landroid/hardware/Camera;
    //   6: ifnull +12 -> 18
    //   9: aload_0
    //   10: getfield 151	org/webrtc/videoengine/VideoCaptureAndroid:cameraThreadHandler	Landroid/os/Handler;
    //   13: astore_2
    //   14: aload_2
    //   15: ifnonnull +6 -> 21
    //   18: aload_0
    //   19: monitorexit
    //   20: return
    //   21: new 104	java/util/concurrent/Exchanger
    //   24: dup
    //   25: invokespecial 152	java/util/concurrent/Exchanger:<init>	()V
    //   28: astore_2
    //   29: aload_0
    //   30: getfield 151	org/webrtc/videoengine/VideoCaptureAndroid:cameraThreadHandler	Landroid/os/Handler;
    //   33: new 154	org/webrtc/videoengine/VideoCaptureAndroid$3
    //   36: dup
    //   37: aload_0
    //   38: iload_1
    //   39: aload_2
    //   40: invokespecial 156	org/webrtc/videoengine/VideoCaptureAndroid$3:<init>	(Lorg/webrtc/videoengine/VideoCaptureAndroid;ILjava/util/concurrent/Exchanger;)V
    //   43: invokevirtual 162	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   46: pop
    //   47: aload_2
    //   48: aconst_null
    //   49: invokestatic 76	org/webrtc/videoengine/VideoCaptureAndroid:exchange	(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    //   52: pop
    //   53: goto -35 -> 18
    //   56: astore_2
    //   57: aload_0
    //   58: monitorexit
    //   59: aload_2
    //   60: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	61	0	this	VideoCaptureAndroid
    //   0	61	1	paramInt	int
    //   13	35	2	localObject1	Object
    //   56	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	56	finally
    //   21	53	56	finally
  }
  
  private void setPreviewRotationOnCameraThread(int paramInt, Exchanger<IOException> paramExchanger)
  {
    Log.v("anLive", "setPreviewRotation:" + paramInt);
    int i = paramInt;
    if (info.facing == 1) {
      i = (360 - paramInt) % 360;
    }
    camera.setDisplayOrientation(i);
    exchange(paramExchanger, null);
  }
  
  private boolean startCapture(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Exchanger localExchanger;
    boolean bool;
    try
    {
      Log.d("anLive", "startCapture: " + paramInt1 + "x" + paramInt2 + "@" + paramInt3 + ":" + paramInt4);
      if ((cameraThread != null) || (cameraThreadHandler != null)) {
        throw new RuntimeException("Camera thread already started!");
      }
    }
    finally
    {
      throw localObject;
      localExchanger = new Exchanger();
      cameraThread = new VideoCaptureAndroid.CameraThread(this, localExchanger);
      cameraThread.start();
      cameraThreadHandler = ((Handler)exchange(localExchanger, null));
      localExchanger = new Exchanger();
      cameraThreadHandler.post(new VideoCaptureAndroid.1(this, paramInt1, paramInt2, paramInt3, paramInt4, localExchanger));
    }
    return bool;
  }
  
  private void startCaptureOnCameraThread(int paramInt1, int paramInt2, int paramInt3, int paramInt4, Exchanger<Boolean> paramExchanger)
  {
    for (;;)
    {
      try
      {
        camera = Camera.open(id);
        if (localPreview == null) {
          continue;
        }
        localPreview.addCallback(this);
        if ((localPreview.getSurface() != null) && (localPreview.getSurface().isValid())) {
          camera.setPreviewDisplay(localPreview);
        }
        Log.d("anLive", "Camera orientation: " + info.orientation + " .Device orientation: " + getDeviceOrientation());
        Camera.Parameters localParameters = camera.getParameters();
        Log.d("anLive", "isVideoStabilizationSupported: " + localParameters.isVideoStabilizationSupported());
        if (localParameters.isVideoStabilizationSupported()) {
          localParameters.setVideoStabilization(true);
        }
        localParameters.setPictureSize(paramInt1, paramInt2);
        localParameters.setPreviewSize(paramInt1, paramInt2);
        localList = localParameters.getSupportedPreviewFpsRange();
        frameDropRatio = Integer.MAX_VALUE;
        i = 0;
      }
      catch (IOException localIOException2)
      {
        List localList;
        int[] arrayOfInt;
        Log.e("anLive", "startCapture failed", localIOException2);
        if (camera == null) {
          continue;
        }
        Exchanger localExchanger = new Exchanger();
        stopCaptureOnCameraThread(localExchanger);
        exchange(localExchanger, Boolean.valueOf(false));
        exchange(paramExchanger, Boolean.valueOf(false));
        return;
        if ((arrayOfInt[0] % paramInt3 != 0) || (arrayOfInt[1] % paramInt4 != 0)) {
          continue;
        }
        frameDropRatio = Math.min(arrayOfInt[1] / paramInt4, frameDropRatio);
        continue;
        if (frameDropRatio <= 1) {
          continue;
        }
        Log.d("anLive", "Frame dropper is enabled. Ratio: " + frameDropRatio);
        i = paramInt3 * frameDropRatio;
        paramInt3 = paramInt4 * frameDropRatio;
        Log.d("anLive", "Camera preview mfps range: " + i + " - " + paramInt3);
        localExchanger.setPreviewFpsRange(i, paramInt3);
        localExchanger.setPreviewFormat(17);
        camera.setParameters(localExchanger);
        paramInt2 = paramInt1 * paramInt2 * ImageFormat.getBitsPerPixel(17) / 8;
        paramInt1 = 0;
        if (paramInt1 >= 3) {
          continue;
        }
        camera.addCallbackBuffer(new byte[paramInt2]);
        paramInt1 += 1;
        continue;
        camera.setPreviewCallbackWithBuffer(this);
        frameCount = 0;
        averageDurationMs = (1000000.0F / (paramInt3 / frameDropRatio));
        camera.startPreview();
        exchange(paramExchanger, Boolean.valueOf(true));
        return;
      }
      catch (RuntimeException localRuntimeException)
      {
        int i;
        continue;
        i += 1;
        continue;
      }
      if (i < localList.size())
      {
        arrayOfInt = (int[])localList.get(i);
        if ((arrayOfInt[0] == paramInt3) && (arrayOfInt[1] == paramInt4)) {
          frameDropRatio = 1;
        }
      }
      else
      {
        if (frameDropRatio != Integer.MAX_VALUE) {
          continue;
        }
        Log.e("anLive", "Can not find camera fps range");
        new RuntimeException("Can not find camera fps range");
        exchange(paramExchanger, Boolean.valueOf(false));
        return;
        try
        {
          cameraGlTextures = new int[1];
          GLES20.glGenTextures(1, cameraGlTextures, 0);
          GLES20.glBindTexture(36197, cameraGlTextures[0]);
          GLES20.glTexParameterf(36197, 10241, 9729.0F);
          GLES20.glTexParameterf(36197, 10240, 9729.0F);
          GLES20.glTexParameteri(36197, 10242, 33071);
          GLES20.glTexParameteri(36197, 10243, 33071);
          cameraSurfaceTexture = new SurfaceTexture(cameraGlTextures[0]);
          cameraSurfaceTexture.setOnFrameAvailableListener(null);
          camera.setPreviewTexture(cameraSurfaceTexture);
        }
        catch (IOException localIOException1)
        {
          throw new RuntimeException(localIOException1);
        }
      }
    }
  }
  
  /* Error */
  private boolean stopCapture()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 12
    //   4: ldc_w 393
    //   7: invokestatic 206	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   10: pop
    //   11: new 104	java/util/concurrent/Exchanger
    //   14: dup
    //   15: invokespecial 152	java/util/concurrent/Exchanger:<init>	()V
    //   18: astore_2
    //   19: aload_0
    //   20: getfield 151	org/webrtc/videoengine/VideoCaptureAndroid:cameraThreadHandler	Landroid/os/Handler;
    //   23: new 395	org/webrtc/videoengine/VideoCaptureAndroid$2
    //   26: dup
    //   27: aload_0
    //   28: aload_2
    //   29: invokespecial 396	org/webrtc/videoengine/VideoCaptureAndroid$2:<init>	(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/concurrent/Exchanger;)V
    //   32: invokevirtual 162	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   35: pop
    //   36: aload_2
    //   37: iconst_0
    //   38: invokestatic 228	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   41: invokestatic 76	org/webrtc/videoengine/VideoCaptureAndroid:exchange	(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    //   44: checkcast 224	java/lang/Boolean
    //   47: invokevirtual 232	java/lang/Boolean:booleanValue	()Z
    //   50: istore_1
    //   51: aload_0
    //   52: getfield 208	org/webrtc/videoengine/VideoCaptureAndroid:cameraThread	Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;
    //   55: invokevirtual 399	org/webrtc/videoengine/VideoCaptureAndroid$CameraThread:join	()V
    //   58: aload_0
    //   59: aconst_null
    //   60: putfield 151	org/webrtc/videoengine/VideoCaptureAndroid:cameraThreadHandler	Landroid/os/Handler;
    //   63: aload_0
    //   64: aconst_null
    //   65: putfield 208	org/webrtc/videoengine/VideoCaptureAndroid:cameraThread	Lorg/webrtc/videoengine/VideoCaptureAndroid$CameraThread;
    //   68: ldc 12
    //   70: ldc_w 401
    //   73: invokestatic 206	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   76: pop
    //   77: aload_0
    //   78: monitorexit
    //   79: iload_1
    //   80: ireturn
    //   81: astore_2
    //   82: new 109	java/lang/RuntimeException
    //   85: dup
    //   86: aload_2
    //   87: invokespecial 112	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   90: athrow
    //   91: astore_2
    //   92: aload_0
    //   93: monitorexit
    //   94: aload_2
    //   95: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	96	0	this	VideoCaptureAndroid
    //   50	30	1	bool	boolean
    //   18	19	2	localExchanger	Exchanger
    //   81	6	2	localInterruptedException	InterruptedException
    //   91	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   51	58	81	java/lang/InterruptedException
    //   2	51	91	finally
    //   51	58	91	finally
    //   58	77	91	finally
    //   82	91	91	finally
  }
  
  /* Error */
  private void stopCaptureOnCameraThread(Exchanger<Boolean> paramExchanger)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 143	org/webrtc/videoengine/VideoCaptureAndroid:camera	Landroid/hardware/Camera;
    //   4: ifnonnull +14 -> 18
    //   7: new 109	java/lang/RuntimeException
    //   10: dup
    //   11: ldc_w 403
    //   14: invokespecial 211	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   17: athrow
    //   18: aload_0
    //   19: getfield 143	org/webrtc/videoengine/VideoCaptureAndroid:camera	Landroid/hardware/Camera;
    //   22: invokevirtual 406	android/hardware/Camera:stopPreview	()V
    //   25: aload_0
    //   26: getfield 143	org/webrtc/videoengine/VideoCaptureAndroid:camera	Landroid/hardware/Camera;
    //   29: aconst_null
    //   30: invokevirtual 382	android/hardware/Camera:setPreviewCallbackWithBuffer	(Landroid/hardware/Camera$PreviewCallback;)V
    //   33: getstatic 139	org/webrtc/videoengine/VideoCaptureAndroid:localPreview	Landroid/view/SurfaceHolder;
    //   36: ifnull +48 -> 84
    //   39: getstatic 139	org/webrtc/videoengine/VideoCaptureAndroid:localPreview	Landroid/view/SurfaceHolder;
    //   42: aload_0
    //   43: invokeinterface 409 2 0
    //   48: aload_0
    //   49: getfield 143	org/webrtc/videoengine/VideoCaptureAndroid:camera	Landroid/hardware/Camera;
    //   52: aconst_null
    //   53: invokevirtual 146	android/hardware/Camera:setPreviewDisplay	(Landroid/view/SurfaceHolder;)V
    //   56: aload_0
    //   57: getfield 143	org/webrtc/videoengine/VideoCaptureAndroid:camera	Landroid/hardware/Camera;
    //   60: invokevirtual 412	android/hardware/Camera:release	()V
    //   63: aload_0
    //   64: aconst_null
    //   65: putfield 143	org/webrtc/videoengine/VideoCaptureAndroid:camera	Landroid/hardware/Camera;
    //   68: aload_1
    //   69: iconst_1
    //   70: invokestatic 228	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   73: invokestatic 76	org/webrtc/videoengine/VideoCaptureAndroid:exchange	(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    //   76: pop
    //   77: invokestatic 418	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   80: invokevirtual 421	android/os/Looper:quit	()V
    //   83: return
    //   84: aload_0
    //   85: getfield 143	org/webrtc/videoengine/VideoCaptureAndroid:camera	Landroid/hardware/Camera;
    //   88: aconst_null
    //   89: invokevirtual 341	android/hardware/Camera:setPreviewTexture	(Landroid/graphics/SurfaceTexture;)V
    //   92: aload_0
    //   93: aconst_null
    //   94: putfield 333	org/webrtc/videoengine/VideoCaptureAndroid:cameraSurfaceTexture	Landroid/graphics/SurfaceTexture;
    //   97: aload_0
    //   98: getfield 45	org/webrtc/videoengine/VideoCaptureAndroid:cameraGlTextures	[I
    //   101: ifnull -45 -> 56
    //   104: iconst_1
    //   105: aload_0
    //   106: getfield 45	org/webrtc/videoengine/VideoCaptureAndroid:cameraGlTextures	[I
    //   109: iconst_0
    //   110: invokestatic 424	android/opengl/GLES20:glDeleteTextures	(I[II)V
    //   113: aload_0
    //   114: aconst_null
    //   115: putfield 45	org/webrtc/videoengine/VideoCaptureAndroid:cameraGlTextures	[I
    //   118: goto -62 -> 56
    //   121: astore_2
    //   122: ldc 12
    //   124: ldc_w 426
    //   127: aload_2
    //   128: invokestatic 346	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   131: pop
    //   132: aload_1
    //   133: iconst_0
    //   134: invokestatic 228	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   137: invokestatic 76	org/webrtc/videoengine/VideoCaptureAndroid:exchange	(Ljava/util/concurrent/Exchanger;Ljava/lang/Object;)Ljava/lang/Object;
    //   140: pop
    //   141: invokestatic 418	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   144: invokevirtual 421	android/os/Looper:quit	()V
    //   147: return
    //   148: astore_2
    //   149: goto -27 -> 122
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	152	0	this	VideoCaptureAndroid
    //   0	152	1	paramExchanger	Exchanger<Boolean>
    //   121	7	2	localIOException	IOException
    //   148	1	2	localRuntimeException	RuntimeException
    // Exception table:
    //   from	to	target	type
    //   18	56	121	java/io/IOException
    //   56	83	121	java/io/IOException
    //   84	118	121	java/io/IOException
    //   18	56	148	java/lang/RuntimeException
    //   56	83	148	java/lang/RuntimeException
    //   84	118	148	java/lang/RuntimeException
  }
  
  public void onPreviewFrame(byte[] paramArrayOfByte, Camera paramCamera)
  {
    if (Thread.currentThread() != cameraThread) {
      throw new RuntimeException("Camera callback not on camera thread?!?");
    }
    if (camera == null) {
      return;
    }
    if (camera != paramCamera) {
      throw new RuntimeException("Unexpected camera in callback!");
    }
    frameCount += 1;
    if ((frameDropRatio > 1) && (frameCount % frameDropRatio > 0))
    {
      camera.addCallbackBuffer(paramArrayOfByte);
      return;
    }
    long l = SystemClock.elapsedRealtime();
    if (frameCount > frameDropRatio)
    {
      double d = l - lastCaptureTimeMs;
      averageDurationMs = (0.9D * averageDurationMs + 0.1D * d);
      if (frameCount % 30 == 0) {
        Log.d("anLive", "Camera TS " + l + ". Duration: " + (int)d + " ms. FPS: " + (int)(1000.0D / averageDurationMs + 0.5D));
      }
    }
    lastCaptureTimeMs = l;
    int j = getDeviceOrientation();
    int i = j;
    if (info.facing == 0) {
      i = 360 - j;
    }
    j = info.orientation;
    ProvideCameraFrame(paramArrayOfByte, paramArrayOfByte.length, (i + j) % 360, l, native_capturer);
    camera.addCallbackBuffer(paramArrayOfByte);
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      Log.d("anLive", "VideoCaptureAndroid::surfaceChanged ignored: " + paramInt1 + ": " + paramInt2 + "x" + paramInt3);
      return;
    }
    finally
    {
      paramSurfaceHolder = finally;
      throw paramSurfaceHolder;
    }
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    try
    {
      Log.d("anLive", "VideoCaptureAndroid::surfaceCreated");
      Object localObject;
      if (camera != null)
      {
        localObject = cameraThreadHandler;
        if (localObject != null) {
          break label30;
        }
      }
      label30:
      do
      {
        return;
        localObject = new Exchanger();
        cameraThreadHandler.post(new VideoCaptureAndroid.4(this, paramSurfaceHolder, (Exchanger)localObject));
        paramSurfaceHolder = (IOException)exchange((Exchanger)localObject, null);
      } while (paramSurfaceHolder == null);
      throw new RuntimeException(paramSurfaceHolder);
    }
    finally {}
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    try
    {
      Log.d("anLive", "VideoCaptureAndroid::surfaceDestroyed");
      if (camera != null)
      {
        paramSurfaceHolder = cameraThreadHandler;
        if (paramSurfaceHolder != null) {
          break label30;
        }
      }
      label30:
      do
      {
        return;
        paramSurfaceHolder = new Exchanger();
        cameraThreadHandler.post(new VideoCaptureAndroid.5(this, paramSurfaceHolder));
        paramSurfaceHolder = (IOException)exchange(paramSurfaceHolder, null);
      } while (paramSurfaceHolder == null);
      throw new RuntimeException(paramSurfaceHolder);
    }
    finally {}
  }
}
