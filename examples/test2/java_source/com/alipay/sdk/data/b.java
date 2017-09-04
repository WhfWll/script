package com.alipay.sdk.data;

import com.bangcle.andjni.JniLib;
import org.apache.http.HttpResponse;
import org.json.JSONObject;

public final class b
{
  private static final String a = "Msp-Param";
  
  static
  {
    JniLib.a(b.class, 147);
  }
  
  public b() {}
  
  public static native e a();
  
  public static native e a(c paramC, String paramString, JSONObject paramJSONObject);
  
  private static native e a(JSONObject paramJSONObject, boolean paramBoolean);
  
  private static native String a(String paramString);
  
  private static native void a(c paramC, e paramE, String paramString);
  
  private static native void a(c paramC, HttpResponse paramHttpResponse);
  
  public static native byte[] a(byte[] paramArrayOfByte);
  
  private static native String b(String paramString);
  
  private static native String c(String paramString);
  
  private static native String d(String paramString);
  
  private static native String e(String paramString);
}
