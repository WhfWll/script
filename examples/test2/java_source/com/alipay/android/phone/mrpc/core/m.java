package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;
import org.apache.http.HttpResponse;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.protocol.HttpContext;

final class m
  implements ConnectionKeepAliveStrategy
{
  static
  {
    JniLib.a(m.class, 52);
  }
  
  m(k paramK) {}
  
  public final native long getKeepAliveDuration(HttpResponse paramHttpResponse, HttpContext paramHttpContext);
}
