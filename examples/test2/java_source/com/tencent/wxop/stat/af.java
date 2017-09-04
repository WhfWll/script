package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;
import java.util.Map;

final class af
  implements Runnable
{
  af(Context paramContext, Map paramMap, StatSpecifyReportedInfo paramStatSpecifyReportedInfo) {}
  
  public final void run()
  {
    try
    {
      new Thread(new ap(a, b, c), "NetworkMonitorTask").start();
      return;
    }
    catch (Throwable localThrowable)
    {
      StatServiceImpl.f().e(localThrowable);
      StatServiceImpl.a(a, localThrowable);
    }
  }
}
