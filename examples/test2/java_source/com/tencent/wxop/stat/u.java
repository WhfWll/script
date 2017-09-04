package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.b;
import com.tencent.wxop.stat.a.c;
import com.tencent.wxop.stat.common.StatLogger;

final class u
  implements Runnable
{
  u(Context paramContext, StatSpecifyReportedInfo paramStatSpecifyReportedInfo, c paramC) {}
  
  public final void run()
  {
    try
    {
      b localB = new b(a, StatServiceImpl.a(a, false, b), c.a, b);
      bc = c.c;
      new aq(localB).a();
      return;
    }
    catch (Throwable localThrowable)
    {
      StatServiceImpl.f().e(localThrowable);
      StatServiceImpl.a(a, localThrowable);
    }
  }
}
