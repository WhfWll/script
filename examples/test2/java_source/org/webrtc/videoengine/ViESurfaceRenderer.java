package org.webrtc.videoengine;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Process;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

public class ViESurfaceRenderer
  implements SurfaceHolder.Callback
{
  private static final String TAG = "WEBRTC";
  private Bitmap bitmap = null;
  private ByteBuffer byteBuffer = null;
  private float dstBottomScale = 1.0F;
  private float dstLeftScale = 0.0F;
  private Rect dstRect = new Rect();
  private float dstRightScale = 1.0F;
  private float dstTopScale = 0.0F;
  private Rect srcRect = new Rect();
  private SurfaceHolder surfaceHolder;
  
  public ViESurfaceRenderer(SurfaceView paramSurfaceView)
  {
    surfaceHolder = paramSurfaceView.getHolder();
    if (surfaceHolder == null) {
      return;
    }
    surfaceHolder.addCallback(this);
  }
  
  private void changeDestRect(int paramInt1, int paramInt2)
  {
    dstRect.right = ((int)(dstRect.left + dstRightScale * paramInt1));
    dstRect.bottom = ((int)(dstRect.top + dstBottomScale * paramInt2));
  }
  
  private void saveBitmapToJPEG(int paramInt1, int paramInt2)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    bitmap.compress(Bitmap.CompressFormat.JPEG, 100, localByteArrayOutputStream);
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(String.format("/sdcard/render_%d.jpg", new Object[] { Long.valueOf(System.currentTimeMillis()) }));
      localFileOutputStream.write(localByteArrayOutputStream.toByteArray());
      localFileOutputStream.flush();
      localFileOutputStream.close();
      return;
    }
    catch (IOException localIOException) {}catch (FileNotFoundException localFileNotFoundException) {}
  }
  
  public Bitmap CreateBitmap(int paramInt1, int paramInt2)
  {
    Log.d("WEBRTC", "CreateByteBitmap " + paramInt1 + ":" + paramInt2);
    if (bitmap == null) {}
    try
    {
      Process.setThreadPriority(-4);
      bitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.RGB_565);
      srcRect.left = 0;
      srcRect.top = 0;
      srcRect.bottom = paramInt2;
      srcRect.right = paramInt1;
      return bitmap;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public ByteBuffer CreateByteBuffer(int paramInt1, int paramInt2)
  {
    Log.d("WEBRTC", "CreateByteBuffer " + paramInt1 + ":" + paramInt2);
    if (bitmap == null)
    {
      bitmap = CreateBitmap(paramInt1, paramInt2);
      byteBuffer = ByteBuffer.allocateDirect(paramInt1 * paramInt2 << 1);
    }
    return byteBuffer;
  }
  
  public void DrawBitmap()
  {
    if (bitmap == null) {}
    Canvas localCanvas;
    do
    {
      return;
      localCanvas = surfaceHolder.lockCanvas();
    } while (localCanvas == null);
    localCanvas.drawBitmap(bitmap, srcRect, dstRect, null);
    surfaceHolder.unlockCanvasAndPost(localCanvas);
  }
  
  public void DrawByteBuffer()
  {
    if (byteBuffer == null) {
      return;
    }
    byteBuffer.rewind();
    bitmap.copyPixelsFromBuffer(byteBuffer);
    DrawBitmap();
  }
  
  public void SetCoordinates(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    Log.d("WEBRTC", "SetCoordinates " + paramFloat1 + "," + paramFloat2 + ":" + paramFloat3 + "," + paramFloat4);
    dstLeftScale = paramFloat1;
    dstTopScale = paramFloat2;
    dstRightScale = paramFloat3;
    dstBottomScale = paramFloat4;
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    Log.d("WEBRTC", "ViESurfaceRender::surfaceChanged");
    changeDestRect(paramInt2, paramInt3);
    Log.d("WEBRTC", "ViESurfaceRender::surfaceChanged in_width:" + paramInt2 + " in_height:" + paramInt3 + " srcRect.left:" + srcRect.left + " srcRect.top:" + srcRect.top + " srcRect.right:" + srcRect.right + " srcRect.bottom:" + srcRect.bottom + " dstRect.left:" + dstRect.left + " dstRect.top:" + dstRect.top + " dstRect.right:" + dstRect.right + " dstRect.bottom:" + dstRect.bottom);
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    paramSurfaceHolder = surfaceHolder.lockCanvas();
    if (paramSurfaceHolder != null)
    {
      Rect localRect = surfaceHolder.getSurfaceFrame();
      if (localRect != null)
      {
        changeDestRect(right - left, bottom - top);
        Log.d("WEBRTC", "ViESurfaceRender::surfaceCreated dst.left:" + left + " dst.top:" + top + " dst.right:" + right + " dst.bottom:" + bottom + " srcRect.left:" + srcRect.left + " srcRect.top:" + srcRect.top + " srcRect.right:" + srcRect.right + " srcRect.bottom:" + srcRect.bottom + " dstRect.left:" + dstRect.left + " dstRect.top:" + dstRect.top + " dstRect.right:" + dstRect.right + " dstRect.bottom:" + dstRect.bottom);
      }
      surfaceHolder.unlockCanvasAndPost(paramSurfaceHolder);
    }
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    Log.d("WEBRTC", "ViESurfaceRenderer::surfaceDestroyed");
    bitmap = null;
    byteBuffer = null;
  }
}
