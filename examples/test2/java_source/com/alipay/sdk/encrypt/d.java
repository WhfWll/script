package com.alipay.sdk.encrypt;

import com.bangcle.andjni.JniLib;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;

public final class d
{
  public static final String a = "SHA1WithRSA";
  private static final String b = "RSA";
  
  static
  {
    JniLib.a(d.class, 155);
  }
  
  public d() {}
  
  public static native String a(String paramString1, String paramString2);
  
  private static native boolean a(String paramString1, String paramString2, String paramString3);
  
  private static native PublicKey b(String paramString1, String paramString2)
    throws NoSuchAlgorithmException, Exception;
  
  private static native String c(String paramString1, String paramString2);
  
  private static native String d(String paramString1, String paramString2);
}
