package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.b;
import com.tencent.wxop.stat.a.c;
import com.tencent.wxop.stat.common.StatLogger;

final class ac
  implements Runnable
{
  ac(Context paramContext, StatSpecifyReportedInfo paramStatSpecifyReportedInfo, c paramC, int paramInt) {}
  
  public final void run()
  {
    try
    {
      b localB = new b(a, StatServiceImpl.a(a, false, b), c.a, b);
      bc = c.c;
      Long localLong = Long.valueOf(d);
      if (localLong.longValue() <= 0L) {}
      for (long l = 1L;; l = localLong.longValue())
      {
        localB.a(Long.valueOf(l).longValue());
        new aq(localB).a();
        return;
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      StatServiceImpl.f().e(localThrowable);
      StatServiceImpl.a(a, localThrowable);
    }
  }
}
