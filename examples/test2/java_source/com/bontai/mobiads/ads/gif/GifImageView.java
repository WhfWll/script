package com.bontai.mobiads.ads.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.bangcle.andjni.JniLib;

public class GifImageView
  extends ImageView
  implements Runnable
{
  private static final String TAG = "GifDecoderView";
  private boolean animating;
  private OnAnimationStop animationStopCallback = null;
  private Thread animationThread;
  private final Runnable cleanupRunnable = new Runnable()
  {
    static
    {
      JniLib.a(2.class, 247);
    }
    
    public native void run();
  };
  private OnFrameAvailable frameCallback = null;
  private long framesDisplayDuration = -1L;
  private GifDecoder gifDecoder;
  private final Handler handler = new Handler(Looper.getMainLooper());
  private boolean renderFrame;
  private boolean shouldClear;
  private Bitmap tmpBitmap;
  private final Runnable updateResults = new Runnable()
  {
    static
    {
      JniLib.a(1.class, 246);
    }
    
    public native void run();
  };
  
  static
  {
    JniLib.a(GifImageView.class, 248);
  }
  
  public GifImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public GifImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private native boolean canStart();
  
  private native void startAnimationThread();
  
  public native void clear();
  
  public native long getFramesDisplayDuration();
  
  public native int getGifHeight();
  
  public native int getGifWidth();
  
  public native OnAnimationStop getOnAnimationStop();
  
  public native OnFrameAvailable getOnFrameAvailable();
  
  public native void gotoFrame(int paramInt);
  
  public native boolean isAnimating();
  
  protected native void onDetachedFromWindow();
  
  public native void resetAnimation();
  
  public native void run();
  
  public native void setBytes(byte[] paramArrayOfByte);
  
  public native void setFramesDisplayDuration(long paramLong);
  
  public native void setOnAnimationStop(OnAnimationStop paramOnAnimationStop);
  
  public native void setOnFrameAvailable(OnFrameAvailable paramOnFrameAvailable);
  
  public native void startAnimation();
  
  public native void stopAnimation();
  
  public static abstract interface OnAnimationStop
  {
    public abstract void onAnimationStop();
  }
  
  public static abstract interface OnFrameAvailable
  {
    public abstract Bitmap onFrameAvailable(Bitmap paramBitmap);
  }
}
