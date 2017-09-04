package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;

final class ae
  implements Runnable
{
  ae(Context paramContext) {}
  
  public final void run()
  {
    try
    {
      new Thread(new ap(a, null, null), "NetworkMonitorTask").start();
      return;
    }
    catch (Throwable localThrowable)
    {
      StatServiceImpl.f().e(localThrowable);
      StatServiceImpl.a(a, localThrowable);
    }
  }
}
