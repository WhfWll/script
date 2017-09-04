package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.protocol.HttpContext;

final class j
  implements HttpRequestInterceptor
{
  static
  {
    JniLib.a(j.class, 49);
  }
  
  j() {}
  
  public final native void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext);
}
