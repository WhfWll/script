package com.alipay.android.phone.mrpc.core;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.bangcle.andjni.JniLib;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.CallerRunsPolicy;
import java.util.concurrent.TimeUnit;

public final class s
  implements f
{
  private static s b = null;
  private static final ThreadFactory i = new u();
  Context a;
  private ThreadPoolExecutor c;
  private i d;
  private long e;
  private long f;
  private long g;
  private int h;
  
  static
  {
    JniLib.a(s.class, 57);
  }
  
  private s(Context paramContext)
  {
    a = paramContext;
    d = i.a("android");
    c = new ThreadPoolExecutor(10, 11, 3L, TimeUnit.SECONDS, new ArrayBlockingQueue(20), i, new ThreadPoolExecutor.CallerRunsPolicy());
    try
    {
      c.allowCoreThreadTimeOut(true);
      CookieSyncManager.createInstance(a);
      CookieManager.getInstance().setAcceptCookie(true);
      return;
    }
    catch (Exception paramContext)
    {
      for (;;) {}
    }
  }
  
  public static final native s a(Context paramContext);
  
  private static final native s b(Context paramContext);
  
  public final native i a();
  
  public final native Future<ab> a(aa paramAa);
  
  public final native void a(long paramLong);
  
  public final native void b(long paramLong);
  
  public final native void c(long paramLong);
}
