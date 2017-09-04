package com.lidroid.xutils.bitmap.core;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.view.View;
import com.lidroid.xutils.BitmapUtils.BitmapLoadTask;
import java.lang.ref.WeakReference;

public class AsyncDrawable<T extends View>
  extends Drawable
{
  private final Drawable baseDrawable;
  private final WeakReference<BitmapUtils.BitmapLoadTask<T>> bitmapLoadTaskReference;
  
  public AsyncDrawable(Drawable paramDrawable, BitmapUtils.BitmapLoadTask<T> paramBitmapLoadTask)
  {
    if (paramBitmapLoadTask == null) {
      throw new IllegalArgumentException("bitmapWorkerTask may not be null");
    }
    baseDrawable = paramDrawable;
    bitmapLoadTaskReference = new WeakReference(paramBitmapLoadTask);
  }
  
  public void clearColorFilter()
  {
    if (baseDrawable != null) {
      baseDrawable.clearColorFilter();
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (baseDrawable != null) {
      baseDrawable.draw(paramCanvas);
    }
  }
  
  public BitmapUtils.BitmapLoadTask<T> getBitmapWorkerTask()
  {
    return (BitmapUtils.BitmapLoadTask)bitmapLoadTaskReference.get();
  }
  
  public int getChangingConfigurations()
  {
    if (baseDrawable == null) {
      return 0;
    }
    return baseDrawable.getChangingConfigurations();
  }
  
  public Drawable.ConstantState getConstantState()
  {
    if (baseDrawable == null) {
      return null;
    }
    return baseDrawable.getConstantState();
  }
  
  public Drawable getCurrent()
  {
    if (baseDrawable == null) {
      return null;
    }
    return baseDrawable.getCurrent();
  }
  
  public int getIntrinsicHeight()
  {
    if (baseDrawable == null) {
      return 0;
    }
    return baseDrawable.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth()
  {
    if (baseDrawable == null) {
      return 0;
    }
    return baseDrawable.getIntrinsicWidth();
  }
  
  public int getMinimumHeight()
  {
    if (baseDrawable == null) {
      return 0;
    }
    return baseDrawable.getMinimumHeight();
  }
  
  public int getMinimumWidth()
  {
    if (baseDrawable == null) {
      return 0;
    }
    return baseDrawable.getMinimumWidth();
  }
  
  public int getOpacity()
  {
    if (baseDrawable == null) {
      return 127;
    }
    return baseDrawable.getOpacity();
  }
  
  public boolean getPadding(Rect paramRect)
  {
    return (baseDrawable != null) && (baseDrawable.getPadding(paramRect));
  }
  
  public int[] getState()
  {
    if (baseDrawable == null) {
      return null;
    }
    return baseDrawable.getState();
  }
  
  public Region getTransparentRegion()
  {
    if (baseDrawable == null) {
      return null;
    }
    return baseDrawable.getTransparentRegion();
  }
  
  public void invalidateSelf()
  {
    if (baseDrawable != null) {
      baseDrawable.invalidateSelf();
    }
  }
  
  public boolean isStateful()
  {
    return (baseDrawable != null) && (baseDrawable.isStateful());
  }
  
  public Drawable mutate()
  {
    if (baseDrawable == null) {
      return null;
    }
    return baseDrawable.mutate();
  }
  
  public void scheduleSelf(Runnable paramRunnable, long paramLong)
  {
    if (baseDrawable != null) {
      baseDrawable.scheduleSelf(paramRunnable, paramLong);
    }
  }
  
  public void setAlpha(int paramInt)
  {
    if (baseDrawable != null) {
      baseDrawable.setAlpha(paramInt);
    }
  }
  
  public void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (baseDrawable != null) {
      baseDrawable.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  public void setBounds(Rect paramRect)
  {
    if (baseDrawable != null) {
      baseDrawable.setBounds(paramRect);
    }
  }
  
  public void setChangingConfigurations(int paramInt)
  {
    if (baseDrawable != null) {
      baseDrawable.setChangingConfigurations(paramInt);
    }
  }
  
  public void setColorFilter(int paramInt, PorterDuff.Mode paramMode)
  {
    if (baseDrawable != null) {
      baseDrawable.setColorFilter(paramInt, paramMode);
    }
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    if (baseDrawable != null) {
      baseDrawable.setColorFilter(paramColorFilter);
    }
  }
  
  public void setDither(boolean paramBoolean)
  {
    if (baseDrawable != null) {
      baseDrawable.setDither(paramBoolean);
    }
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    if (baseDrawable != null) {
      baseDrawable.setFilterBitmap(paramBoolean);
    }
  }
  
  public boolean setState(int[] paramArrayOfInt)
  {
    return (baseDrawable != null) && (baseDrawable.setState(paramArrayOfInt));
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    return (baseDrawable != null) && (baseDrawable.setVisible(paramBoolean1, paramBoolean2));
  }
  
  public void unscheduleSelf(Runnable paramRunnable)
  {
    if (baseDrawable != null) {
      baseDrawable.unscheduleSelf(paramRunnable);
    }
  }
}
