package com.alipay.sdk.protocol;

import com.bangcle.andjni.JniLib;
import org.json.JSONObject;

public final class b
{
  String a;
  String b;
  String c;
  String d;
  String e;
  boolean f;
  boolean g = true;
  boolean h = true;
  String i;
  String j;
  String k;
  JSONObject l;
  
  static
  {
    JniLib.a(b.class, 162);
  }
  
  private b(String paramString)
  {
    a = paramString;
  }
  
  private static native b a(String paramString, a paramA);
  
  private static native b a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString6, String paramString7, String paramString8, JSONObject paramJSONObject);
  
  private static native b a(JSONObject paramJSONObject);
  
  public static native b a(JSONObject paramJSONObject, String paramString);
  
  private native JSONObject b();
  
  private native String c();
  
  private native String d();
  
  private native String e();
  
  private native String f();
  
  private native String g();
  
  private native String h();
  
  private native String i();
  
  private native String j();
  
  private native boolean k();
  
  private native boolean l();
  
  private native boolean m();
  
  public final native JSONObject a();
}
