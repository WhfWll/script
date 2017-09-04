package com.alipay.apmobilesecuritysdk.e;

import com.bangcle.andjni.JniLib;

public final class a
{
  private static volatile String a = "";
  private static volatile boolean b = false;
  
  static
  {
    JniLib.a(a.class, 73);
  }
  
  public static native String a();
  
  public static native String b();
}
