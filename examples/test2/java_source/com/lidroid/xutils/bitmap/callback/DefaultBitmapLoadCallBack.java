package com.lidroid.xutils.bitmap.callback;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import com.lidroid.xutils.bitmap.BitmapDisplayConfig;
import java.lang.reflect.Method;

public class DefaultBitmapLoadCallBack<T extends View>
  extends BitmapLoadCallBack<T>
{
  public DefaultBitmapLoadCallBack() {}
  
  private void animationDisplay(T paramT, Animation paramAnimation)
  {
    try
    {
      Method localMethod = Animation.class.getDeclaredMethod("clone", new Class[0]);
      localMethod.setAccessible(true);
      paramT.startAnimation((Animation)localMethod.invoke(paramAnimation, new Object[0]));
      return;
    }
    catch (Throwable localThrowable)
    {
      paramT.startAnimation(paramAnimation);
    }
  }
  
  public void onLoadCompleted(T paramT, String paramString, Bitmap paramBitmap, BitmapDisplayConfig paramBitmapDisplayConfig, BitmapLoadFrom paramBitmapLoadFrom)
  {
    setBitmap(paramT, paramBitmap);
    paramString = paramBitmapDisplayConfig.getAnimation();
    if (paramString != null) {
      animationDisplay(paramT, paramString);
    }
  }
  
  public void onLoadFailed(T paramT, String paramString, Drawable paramDrawable)
  {
    setDrawable(paramT, paramDrawable);
  }
}
