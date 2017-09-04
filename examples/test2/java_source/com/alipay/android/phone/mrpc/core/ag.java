package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public final class ag
{
  private static final ThreadLocal<Object> a = new ThreadLocal();
  private static final ThreadLocal<Map<String, Object>> b = new ThreadLocal();
  private byte c = 0;
  private AtomicInteger d;
  private ae e;
  
  static
  {
    JniLib.a(ag.class, 42);
  }
  
  public ag(ae paramAe)
  {
    e = paramAe;
    d = new AtomicInteger();
  }
  
  public final native Object a(Method paramMethod, Object[] paramArrayOfObject);
}
