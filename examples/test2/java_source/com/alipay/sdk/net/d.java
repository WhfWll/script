package com.alipay.sdk.net;

import android.content.Context;
import com.alipay.sdk.data.e;
import com.alipay.sdk.data.f;
import com.alipay.sdk.exception.NetErrorException;
import com.bangcle.andjni.JniLib;
import org.json.JSONException;
import org.json.JSONObject;

public final class d
{
  private int a = 0;
  private com.alipay.sdk.data.c b;
  
  static
  {
    JniLib.a(d.class, 161);
  }
  
  public d() {}
  
  public d(com.alipay.sdk.data.c paramC)
  {
    b = paramC;
  }
  
  private native String a(Context paramContext, String paramString1, String paramString2, com.alipay.sdk.data.c paramC, f paramF)
    throws NetErrorException;
  
  private static native String a(String paramString);
  
  private native JSONObject a(Context paramContext, e paramE, f paramF)
    throws NetErrorException;
  
  private native JSONObject a(Context paramContext, e paramE, f paramF, String paramString1, String paramString2)
    throws JSONException, NetErrorException;
  
  private static native JSONObject a(f paramF, String paramString)
    throws JSONException;
  
  private static native JSONObject a(String paramString, f paramF)
    throws JSONException;
  
  private static native void a(JSONObject paramJSONObject);
  
  public final native com.alipay.sdk.protocol.c a(Context paramContext, e paramE, boolean paramBoolean)
    throws NetErrorException;
}
