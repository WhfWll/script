package com.alipay.sdk.data;

import com.bangcle.andjni.JniLib;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

public final class e
{
  public a a;
  public WeakReference<c> b = null;
  public boolean c = true;
  boolean d = true;
  private JSONObject e;
  private JSONObject f;
  private long g;
  
  static
  {
    JniLib.a(e.class, 150);
  }
  
  public e(a paramA, JSONObject paramJSONObject)
  {
    this(paramA, paramJSONObject, (byte)0);
  }
  
  private e(a paramA, JSONObject paramJSONObject, byte paramByte)
  {
    a = paramA;
    e = paramJSONObject;
    f = null;
    b = new WeakReference(null);
  }
  
  private native void a(long paramLong);
  
  private native void a(c paramC);
  
  private native void a(JSONObject paramJSONObject);
  
  private native void a(boolean paramBoolean);
  
  private native boolean a();
  
  private native String b();
  
  private native void b(boolean paramBoolean);
  
  private native long c();
  
  private native c d();
  
  private native boolean e();
  
  private native a f();
  
  public final native JSONObject a(String paramString);
  
  public final native String toString();
}
