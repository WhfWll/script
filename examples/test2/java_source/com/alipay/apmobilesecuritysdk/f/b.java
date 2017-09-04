package com.alipay.apmobilesecuritysdk.f;

import com.bangcle.andjni.JniLib;

public final class b
{
  public String a = "";
  String b = "";
  public String c = "";
  
  static
  {
    JniLib.a(b.class, 75);
  }
  
  public b(String paramString1, String paramString2, String paramString3)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
  }
  
  private native String a();
  
  private native String b();
  
  private native String c();
}
