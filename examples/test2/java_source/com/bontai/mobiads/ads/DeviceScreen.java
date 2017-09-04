package com.bontai.mobiads.ads;

import android.content.Context;
import android.util.DisplayMetrics;
import com.bangcle.andjni.JniLib;

public class DeviceScreen
{
  static
  {
    JniLib.a(DeviceScreen.class, 228);
  }
  
  public DeviceScreen() {}
  
  public static native int getAdHeight(Context paramContext);
  
  public static native String getAdSize(Context paramContext);
  
  public static native DisplayMetrics getMetric(Context paramContext);
  
  public static native int getScreenHeight(Context paramContext);
  
  public static native int getScreenWidth(Context paramContext);
}
