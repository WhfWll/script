package com.alipay.sdk.auth;

import com.bangcle.andjni.JniLib;

public class APAuthInfo
{
  private String a;
  private String b;
  private String c;
  private String d;
  
  static
  {
    JniLib.a(APAuthInfo.class, 128);
  }
  
  public APAuthInfo(String paramString1, String paramString2, String paramString3)
  {
    this(paramString1, paramString2, paramString3, null);
  }
  
  public APAuthInfo(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    a = paramString1;
    b = paramString2;
    d = paramString3;
    c = paramString4;
  }
  
  public native String getAppId();
  
  public native String getPid();
  
  public native String getProductId();
  
  public native String getRedirectUri();
}
