package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.h;
import com.tencent.wxop.stat.common.StatLogger;

final class aa
  implements Runnable
{
  aa(Context paramContext, StatSpecifyReportedInfo paramStatSpecifyReportedInfo, StatAppMonitor paramStatAppMonitor) {}
  
  public final void run()
  {
    try
    {
      new aq(new h(a, StatServiceImpl.a(a, false, b), c, b)).a();
      return;
    }
    catch (Throwable localThrowable)
    {
      StatServiceImpl.f().e(localThrowable);
      StatServiceImpl.a(a, localThrowable);
    }
  }
}
