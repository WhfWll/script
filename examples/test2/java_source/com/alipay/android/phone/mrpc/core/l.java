package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;
import org.apache.http.HttpResponse;
import org.apache.http.impl.client.DefaultRedirectHandler;
import org.apache.http.protocol.HttpContext;

final class l
  extends DefaultRedirectHandler
{
  int a;
  
  static
  {
    JniLib.a(l.class, 51);
  }
  
  l(k paramK) {}
  
  public final native boolean isRedirectRequested(HttpResponse paramHttpResponse, HttpContext paramHttpContext);
}
