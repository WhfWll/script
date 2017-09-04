package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

public final class i
  implements HttpClient
{
  public static long a = 160L;
  private static String[] b = { "text/", "application/xml", "application/json" };
  private static final HttpRequestInterceptor c = new j();
  private final HttpClient d;
  private RuntimeException e = new IllegalStateException("AndroidHttpClient created and never closed");
  private volatile b f;
  
  static
  {
    JniLib.a(i.class, 48);
  }
  
  private i(ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    d = new k(this, paramClientConnectionManager, paramHttpParams);
  }
  
  public static native i a(String paramString);
  
  public static native InputStream a(HttpEntity paramHttpEntity);
  
  public static native AbstractHttpEntity a(byte[] paramArrayOfByte);
  
  public static native void a(HttpRequest paramHttpRequest);
  
  public static native long b(String paramString);
  
  public static native void b(HttpRequest paramHttpRequest);
  
  private static native boolean b(HttpUriRequest paramHttpUriRequest);
  
  public final native void a(HttpRequestRetryHandler paramHttpRequestRetryHandler);
  
  public final native <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler);
  
  public final native <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext);
  
  public final native <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler);
  
  public final native <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext);
  
  public final native HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest);
  
  public final native HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext);
  
  public final native HttpResponse execute(HttpUriRequest paramHttpUriRequest);
  
  public final native HttpResponse execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext);
  
  public final native ClientConnectionManager getConnectionManager();
  
  public final native HttpParams getParams();
  
  private final class a
    implements HttpRequestInterceptor
  {
    static
    {
      JniLib.a(a.class, 47);
    }
    
    private a() {}
    
    public final native void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext);
  }
  
  private static final class b
  {
    final String a;
    final int b;
  }
}
