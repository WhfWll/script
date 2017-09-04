package com.alipay.b.a.a.e;

import com.bangcle.andjni.JniLib;

public final class a
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  
  static
  {
    JniLib.a(a.class, 105);
  }
  
  public a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramString5;
    f = paramString6;
    g = paramString7;
  }
  
  public final native String toString();
}
