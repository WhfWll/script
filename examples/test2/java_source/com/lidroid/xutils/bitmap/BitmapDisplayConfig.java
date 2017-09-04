package com.lidroid.xutils.bitmap;

import android.graphics.Bitmap.Config;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import com.lidroid.xutils.bitmap.core.BitmapSize;
import com.lidroid.xutils.bitmap.factory.BitmapFactory;
import com.lidroid.xutils.task.Priority;

public class BitmapDisplayConfig
{
  private Animation animation;
  private boolean autoRotation = false;
  private Bitmap.Config bitmapConfig = Bitmap.Config.RGB_565;
  private BitmapFactory bitmapFactory;
  private BitmapSize bitmapMaxSize;
  private Drawable loadFailedDrawable;
  private Drawable loadingDrawable;
  private Priority priority;
  private boolean showOriginal = false;
  
  public BitmapDisplayConfig() {}
  
  public BitmapDisplayConfig cloneNew()
  {
    BitmapDisplayConfig localBitmapDisplayConfig = new BitmapDisplayConfig();
    bitmapMaxSize = bitmapMaxSize;
    animation = animation;
    loadingDrawable = loadingDrawable;
    loadFailedDrawable = loadFailedDrawable;
    autoRotation = autoRotation;
    showOriginal = showOriginal;
    bitmapConfig = bitmapConfig;
    bitmapFactory = bitmapFactory;
    priority = priority;
    return localBitmapDisplayConfig;
  }
  
  public Animation getAnimation()
  {
    return animation;
  }
  
  public Bitmap.Config getBitmapConfig()
  {
    return bitmapConfig;
  }
  
  public BitmapFactory getBitmapFactory()
  {
    return bitmapFactory;
  }
  
  public BitmapSize getBitmapMaxSize()
  {
    if (bitmapMaxSize == null) {
      return BitmapSize.ZERO;
    }
    return bitmapMaxSize;
  }
  
  public Drawable getLoadFailedDrawable()
  {
    return loadFailedDrawable;
  }
  
  public Drawable getLoadingDrawable()
  {
    return loadingDrawable;
  }
  
  public Priority getPriority()
  {
    return priority;
  }
  
  public boolean isAutoRotation()
  {
    return autoRotation;
  }
  
  public boolean isShowOriginal()
  {
    return showOriginal;
  }
  
  public void setAnimation(Animation paramAnimation)
  {
    animation = paramAnimation;
  }
  
  public void setAutoRotation(boolean paramBoolean)
  {
    autoRotation = paramBoolean;
  }
  
  public void setBitmapConfig(Bitmap.Config paramConfig)
  {
    bitmapConfig = paramConfig;
  }
  
  public void setBitmapFactory(BitmapFactory paramBitmapFactory)
  {
    bitmapFactory = paramBitmapFactory;
  }
  
  public void setBitmapMaxSize(BitmapSize paramBitmapSize)
  {
    bitmapMaxSize = paramBitmapSize;
  }
  
  public void setLoadFailedDrawable(Drawable paramDrawable)
  {
    loadFailedDrawable = paramDrawable;
  }
  
  public void setLoadingDrawable(Drawable paramDrawable)
  {
    loadingDrawable = paramDrawable;
  }
  
  public void setPriority(Priority paramPriority)
  {
    priority = paramPriority;
  }
  
  public void setShowOriginal(boolean paramBoolean)
  {
    showOriginal = paramBoolean;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder;
    if (isShowOriginal())
    {
      str = "";
      localStringBuilder = new StringBuilder(String.valueOf(str));
      if (bitmapFactory != null) {
        break label52;
      }
    }
    label52:
    for (String str = "";; str = bitmapFactory.getClass().getName())
    {
      return str;
      str = bitmapMaxSize.toString();
      break;
    }
  }
}
