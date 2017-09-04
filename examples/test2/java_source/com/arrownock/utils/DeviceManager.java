package com.arrownock.utils;

import com.bangcle.andjni.JniLib;

public class DeviceManager
{
  static
  {
    JniLib.a(DeviceManager.class, 222);
  }
  
  public DeviceManager() {}
  
  public static native void setHost(String paramString);
}
