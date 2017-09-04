package com.alipay.sdk.net;

import com.bangcle.andjni.JniLib;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

public final class b
{
  public static final String a = "msp";
  public static b b;
  final DefaultHttpClient c;
  
  static
  {
    JniLib.a(b.class, 159);
  }
  
  private b(ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    c = new DefaultHttpClient(paramClientConnectionManager, paramHttpParams);
  }
  
  private b(HttpParams paramHttpParams)
  {
    c = new DefaultHttpClient(paramHttpParams);
  }
  
  public static native b a();
  
  private native <T> T a(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler)
    throws Exception;
  
  private native <T> T a(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
    throws Exception;
  
  private native <T> T a(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler)
    throws Exception;
  
  private native <T> T a(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
    throws Exception;
  
  private native HttpResponse a(HttpHost paramHttpHost, HttpRequest paramHttpRequest)
    throws Exception;
  
  private native HttpResponse a(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
    throws Exception;
  
  private native HttpResponse a(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
    throws Exception;
  
  private static native b c();
  
  private static native void d();
  
  private native void e();
  
  private native HttpParams f();
  
  private native ClientConnectionManager g();
  
  public final native HttpResponse a(HttpUriRequest paramHttpUriRequest)
    throws Exception;
  
  public final native void b();
}
