package com.alipay.sdk.data;

import com.bangcle.andjni.JniLib;
import org.apache.http.Header;
import org.json.JSONObject;

public final class f
{
  public static final int a = 1000;
  public static final int b = 503;
  public int c = 0;
  public String d = "";
  public long e = 0L;
  public String f = "";
  public String g = null;
  public String h = null;
  public JSONObject i = null;
  public String j;
  public boolean k = true;
  public a l = null;
  Header[] m = null;
  
  static
  {
    JniLib.a(f.class, 151);
  }
  
  public f() {}
  
  private native a a();
  
  private native void a(int paramInt);
  
  private native void a(long paramLong);
  
  private native void a(a paramA);
  
  private native void a(String paramString);
  
  private native void a(JSONObject paramJSONObject);
  
  private native void b();
  
  private native void b(String paramString);
  
  private native int c();
  
  private native void c(String paramString);
  
  private native String d();
  
  private native void d(String paramString);
  
  private native void e(String paramString);
}
