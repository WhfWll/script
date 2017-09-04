package com.alipay.sdk.authjs;

import com.bangcle.andjni.JniLib;
import org.json.JSONException;
import org.json.JSONObject;

public final class a
{
  public static final String a = "CallInfo";
  public static final String b = "call";
  public static final String c = "callback";
  public static final String d = "bundleName";
  public static final String e = "clientId";
  public static final String f = "param";
  public static final String g = "func";
  public static final String h = "msgType";
  public String i;
  public String j;
  public String k;
  public String l;
  public JSONObject m;
  private boolean n = false;
  
  static
  {
    JniLib.a(a.class, 142);
  }
  
  public a(String paramString)
  {
    l = paramString;
  }
  
  private static native String a(a paramA);
  
  private native void a(String paramString);
  
  private native void a(JSONObject paramJSONObject);
  
  private native void a(boolean paramBoolean);
  
  private native boolean a();
  
  private native String b();
  
  private native void b(String paramString);
  
  private native String c();
  
  private native void c(String paramString);
  
  private native String d();
  
  private native void d(String paramString);
  
  private native String e();
  
  private native JSONObject f();
  
  private native String g()
    throws JSONException;
  
  public static enum a
  {
    private a() {}
  }
}
