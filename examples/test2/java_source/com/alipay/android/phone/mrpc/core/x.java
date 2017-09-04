package com.alipay.android.phone.mrpc.core;

import android.content.Context;
import android.webkit.CookieManager;
import com.bangcle.andjni.JniLib;
import java.io.OutputStream;
import java.net.URI;
import java.net.URL;
import java.util.HashMap;
import java.util.concurrent.Callable;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.CookieStore;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

public final class x
  implements Callable<ab>
{
  private static final HttpRequestRetryHandler e = new h();
  protected s a;
  protected Context b;
  protected v c;
  String d;
  private HttpUriRequest f;
  private HttpContext g = new BasicHttpContext();
  private CookieStore h = new BasicCookieStore();
  private CookieManager i;
  private AbstractHttpEntity j;
  private HttpHost k;
  private URL l;
  private int m = 0;
  private boolean n = false;
  private boolean o = false;
  private String p = null;
  private String q;
  
  static
  {
    JniLib.a(x.class, 62);
  }
  
  public x(s paramS, v paramV)
  {
    a = paramS;
    b = a.a;
    c = paramV;
  }
  
  private static native long a(String[] paramArrayOfString);
  
  private native ab a(HttpResponse paramHttpResponse, int paramInt, String paramString);
  
  private static native b a(HttpResponse paramHttpResponse);
  
  private static native HashMap<String, String> a(String paramString);
  
  private native void a(HttpEntity paramHttpEntity, OutputStream paramOutputStream);
  
  private static native long b(HttpResponse paramHttpResponse);
  
  private native URI b();
  
  private native HttpUriRequest c();
  
  private native ab d();
  
  private native void e();
  
  private native String f();
  
  private native int g();
  
  private native URL h();
  
  private native CookieManager i();
  
  public final native v a();
}
