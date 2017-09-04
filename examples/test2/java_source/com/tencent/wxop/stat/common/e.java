package com.tencent.wxop.stat.common;

import java.util.concurrent.ExecutorService;

public class e
{
  ExecutorService a = null;
  
  public e() {}
  
  public void a(Runnable paramRunnable)
  {
    a.execute(paramRunnable);
  }
}
