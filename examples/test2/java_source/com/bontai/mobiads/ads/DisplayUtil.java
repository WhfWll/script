package com.bontai.mobiads.ads;

import android.content.Context;
import com.bangcle.andjni.JniLib;

public class DisplayUtil
{
  public static final int CHINESE = 0;
  public static final int NUMBER_OR_CHARACTER = 1;
  
  static
  {
    JniLib.a(DisplayUtil.class, 230);
  }
  
  public DisplayUtil() {}
  
  public static native int dip2px(Context paramContext, float paramFloat);
  
  public static native int px2dip(Context paramContext, float paramFloat);
  
  public static native float sp2px(Context paramContext, float paramFloat, int paramInt);
}
