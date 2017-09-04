package com.alipay.sdk.util;

import com.bangcle.andjni.JniLib;
import org.json.JSONObject;

public final class c
{
  static
  {
    JniLib.a(c.class, 174);
  }
  
  public c() {}
  
  private static native String a(String paramString1, String paramString2);
  
  public static native JSONObject a(JSONObject paramJSONObject1, JSONObject paramJSONObject2);
}
