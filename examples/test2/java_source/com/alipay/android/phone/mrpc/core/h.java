package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;
import java.io.IOException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.protocol.HttpContext;

public class h
  implements HttpRequestRetryHandler
{
  static final String a = h.class.getSimpleName();
  
  static
  {
    JniLib.a(h.class, 46);
  }
  
  public h() {}
  
  public native boolean retryRequest(IOException paramIOException, int paramInt, HttpContext paramHttpContext);
}
