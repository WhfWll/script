package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;
import org.apache.http.client.RedirectHandler;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.HttpContext;

final class k
  extends DefaultHttpClient
{
  static
  {
    JniLib.a(k.class, 50);
  }
  
  k(i paramI, ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    super(paramClientConnectionManager, paramHttpParams);
  }
  
  protected final native ConnectionKeepAliveStrategy createConnectionKeepAliveStrategy();
  
  protected final native HttpContext createHttpContext();
  
  protected final native BasicHttpProcessor createHttpProcessor();
  
  protected final native RedirectHandler createRedirectHandler();
}
