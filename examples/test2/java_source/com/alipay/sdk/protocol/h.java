package com.alipay.sdk.protocol;

import com.alipay.sdk.data.e;
import com.alipay.sdk.data.f;
import com.bangcle.andjni.JniLib;
import org.json.JSONObject;

public final class h
  extends i
{
  private int l;
  private boolean m = false;
  
  static
  {
    JniLib.a(h.class, 166);
  }
  
  protected h(e paramE, f paramF)
  {
    super(paramE, paramF);
  }
  
  private native boolean d();
  
  public final native void a(JSONObject paramJSONObject);
  
  public final native boolean a();
  
  public final native int b();
  
  public final native String c();
}
