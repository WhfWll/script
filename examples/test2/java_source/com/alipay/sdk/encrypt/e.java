package com.alipay.sdk.encrypt;

import com.bangcle.andjni.JniLib;

public final class e
{
  private static String a = "DESede/ECB/PKCS5Padding";
  
  static
  {
    JniLib.a(e.class, 156);
  }
  
  public e() {}
  
  public static native String a(String paramString1, String paramString2);
  
  public static native String b(String paramString1, String paramString2);
}
