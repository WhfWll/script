package com.bontai.mobiads.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.bangcle.andjni.JniLib;

public class ScreenUtil
{
  static
  {
    JniLib.a(ScreenUtil.class, 235);
  }
  
  public ScreenUtil() {}
  
  public static native int getHeight(Activity paramActivity);
  
  public static native int getScreenHeight(Context paramContext);
  
  public static native int getStatusBarHeight(Activity paramActivity);
  
  public static native int getStatusBarHeight(Context paramContext);
  
  public static native int getTitleBarHeight(Activity paramActivity);
  
  public static native View getView(Activity paramActivity);
}
