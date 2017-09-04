package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class u
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(1);
  
  static
  {
    JniLib.a(u.class, 59);
  }
  
  u() {}
  
  public final native Thread newThread(Runnable paramRunnable);
}
