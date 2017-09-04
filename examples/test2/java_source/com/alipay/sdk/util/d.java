package com.alipay.sdk.util;

import com.bangcle.andjni.JniLib;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.http.client.methods.HttpPost;

public final class d
{
  private static ThreadPoolExecutor a = new ThreadPoolExecutor(5, 5, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(20));
  private static Object b = new Object();
  private static HttpPost c = new HttpPost("https://mclient.alipay.com/sdkErrorlog.do");
  
  static
  {
    JniLib.a(d.class, 175);
  }
  
  public d() {}
  
  public static native void a(String paramString);
}
