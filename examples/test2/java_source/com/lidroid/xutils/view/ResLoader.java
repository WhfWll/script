package com.lidroid.xutils.view;

import android.content.Context;
import android.content.res.Resources;
import android.view.animation.AnimationUtils;

public class ResLoader
{
  public ResLoader() {}
  
  public static Object loadRes(ResType paramResType, Context paramContext, int paramInt)
  {
    if ((paramContext == null) || (paramInt < 1)) {
      return null;
    }
    switch (paramResType)
    {
    default: 
      return null;
    case Animation: 
      return AnimationUtils.loadAnimation(paramContext, paramInt);
    case Boolean: 
      return Boolean.valueOf(paramContext.getResources().getBoolean(paramInt));
    case Color: 
      return Integer.valueOf(paramContext.getResources().getColor(paramInt));
    case ColorStateList: 
      return paramContext.getResources().getColorStateList(paramInt);
    case Dimension: 
      return Float.valueOf(paramContext.getResources().getDimension(paramInt));
    case DimensionPixelOffset: 
      return Integer.valueOf(paramContext.getResources().getDimensionPixelOffset(paramInt));
    case DimensionPixelSize: 
      return Integer.valueOf(paramContext.getResources().getDimensionPixelSize(paramInt));
    case Drawable: 
      return paramContext.getResources().getDrawable(paramInt);
    case IntArray: 
      return Integer.valueOf(paramContext.getResources().getInteger(paramInt));
    case Integer: 
      return paramContext.getResources().getIntArray(paramInt);
    case Movie: 
      return paramContext.getResources().getMovie(paramInt);
    case String: 
      return paramContext.getResources().getString(paramInt);
    case StringArray: 
      return paramContext.getResources().getStringArray(paramInt);
    case Text: 
      return paramContext.getResources().getText(paramInt);
    case TextArray: 
      return paramContext.getResources().getTextArray(paramInt);
    }
    return paramContext.getResources().getXml(paramInt);
  }
}
