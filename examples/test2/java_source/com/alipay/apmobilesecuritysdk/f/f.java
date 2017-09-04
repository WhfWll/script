package com.alipay.apmobilesecuritysdk.f;

import com.bangcle.andjni.JniLib;

public final class f
{
  public String a = "";
  public String b = "";
  public String c = "";
  public String d = "";
  public String e = "";
  
  static
  {
    JniLib.a(f.class, 79);
  }
  
  public f() {}
  
  public f(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramString5;
  }
  
  private native String a();
  
  private native void a(String paramString);
  
  private native String b();
  
  private native void b(String paramString);
  
  private native String c();
  
  private native void c(String paramString);
  
  private native String d();
  
  private native void d(String paramString);
  
  private native String e();
  
  private native void e(String paramString);
}
