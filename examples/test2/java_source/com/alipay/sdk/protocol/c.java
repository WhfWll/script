package com.alipay.sdk.protocol;

import com.alipay.sdk.data.e;
import com.alipay.sdk.data.f;
import com.bangcle.andjni.JniLib;
import org.json.JSONObject;

public class c
{
  public e a;
  public f b;
  public JSONObject c;
  
  static
  {
    JniLib.a(c.class, 163);
  }
  
  public c(e paramE, f paramF)
  {
    a = paramE;
    b = paramF;
  }
  
  private native e a();
  
  private native f b();
  
  private native JSONObject c();
  
  public native void a(JSONObject paramJSONObject);
}
