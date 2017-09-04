package com.tl.uic.http;

import com.bangcle.andjni.JniLib;
import com.tl.uic.TLFCache;
import java.io.IOException;
import java.util.Date;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.protocol.HttpContext;

public class TLHttpResponseInterceptor
  implements HttpResponseInterceptor
{
  private final long initTime;
  private final Date startTime;
  private final TLHttpRequestInterceptor tlHttpRequestInterceptor;
  
  static
  {
    JniLib.a(TLHttpResponseInterceptor.class, 1031);
  }
  
  public TLHttpResponseInterceptor(TLHttpRequestInterceptor paramTLHttpRequestInterceptor)
  {
    tlHttpRequestInterceptor = paramTLHttpRequestInterceptor;
    startTime = new Date();
    initTime = TLFCache.timestampFromSession();
  }
  
  public final native void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
    throws HttpException, IOException;
}
