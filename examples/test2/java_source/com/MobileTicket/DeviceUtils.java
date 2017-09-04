package com.MobileTicket;

import android.content.Context;
import com.bangcle.andjni.JniLib;

public class DeviceUtils
{
  static
  {
    JniLib.a(DeviceUtils.class, 3);
  }
  
  public DeviceUtils() {}
  
  public static native String getDeviceId(Context paramContext);
  
  public static native String getUUID(Context paramContext);
  
  private static native boolean isEmpty(String paramString);
}
