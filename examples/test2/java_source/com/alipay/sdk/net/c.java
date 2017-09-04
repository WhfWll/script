package com.alipay.sdk.net;

import android.content.Context;
import com.alipay.sdk.exception.NetErrorException;
import com.bangcle.andjni.JniLib;
import org.apache.http.HttpResponse;

public final class c
{
  static a a;
  
  static
  {
    JniLib.a(c.class, 160);
  }
  
  public c() {}
  
  public static native String a(HttpResponse paramHttpResponse)
    throws NetErrorException;
  
  private static native HttpResponse a(Context paramContext, String paramString1, String paramString2, com.alipay.sdk.data.c paramC)
    throws NetErrorException;
  
  private static native void a();
}
