package com.lidroid.xutils.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import com.lidroid.xutils.bitmap.core.BitmapSize;
import java.lang.reflect.Field;

public class BitmapCommonUtils
{
  private static BitmapSize screenSize = null;
  
  private BitmapCommonUtils() {}
  
  private static int getImageViewFieldValue(Object paramObject, String paramString)
  {
    int j = 0;
    int i = j;
    if ((paramObject instanceof ImageView)) {}
    try
    {
      paramString = ImageView.class.getDeclaredField(paramString);
      paramString.setAccessible(true);
      int k = ((Integer)paramString.get(paramObject)).intValue();
      i = j;
      if (k > 0)
      {
        i = j;
        if (k < Integer.MAX_VALUE) {
          i = k;
        }
      }
      return i;
    }
    catch (Throwable paramObject) {}
    return 0;
  }
  
  public static BitmapSize getScreenSize(Context paramContext)
  {
    if (screenSize == null)
    {
      paramContext = paramContext.getResources().getDisplayMetrics();
      screenSize = new BitmapSize(widthPixels, heightPixels);
    }
    return screenSize;
  }
  
  public static BitmapSize optimizeMaxSizeByView(View paramView, int paramInt1, int paramInt2)
  {
    int j = paramInt1;
    int k = paramInt2;
    if ((j > 0) && (k > 0)) {
      return new BitmapSize(j, k);
    }
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    paramInt1 = k;
    int i = j;
    if (localLayoutParams != null)
    {
      if (width <= 0) {
        break label141;
      }
      paramInt2 = width;
      if (height <= 0) {
        break label162;
      }
      paramInt1 = height;
      i = paramInt2;
    }
    for (;;)
    {
      paramInt2 = i;
      if (i <= 0) {
        paramInt2 = getImageViewFieldValue(paramView, "mMaxWidth");
      }
      i = paramInt1;
      if (paramInt1 <= 0) {
        i = getImageViewFieldValue(paramView, "mMaxHeight");
      }
      paramView = getScreenSize(paramView.getContext());
      paramInt1 = paramInt2;
      if (paramInt2 <= 0) {
        paramInt1 = paramView.getWidth();
      }
      paramInt2 = i;
      if (i <= 0) {
        paramInt2 = paramView.getHeight();
      }
      return new BitmapSize(paramInt1, paramInt2);
      label141:
      paramInt2 = j;
      if (width == -2) {
        break;
      }
      paramInt2 = paramView.getWidth();
      break;
      label162:
      paramInt1 = k;
      i = paramInt2;
      if (height != -2)
      {
        paramInt1 = paramView.getHeight();
        i = paramInt2;
      }
    }
  }
}
