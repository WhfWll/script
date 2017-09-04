package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.d;
import com.tencent.wxop.stat.common.StatLogger;

final class r
  implements Runnable
{
  r(Throwable paramThrowable, Context paramContext, StatSpecifyReportedInfo paramStatSpecifyReportedInfo) {}
  
  public final void run()
  {
    if (a == null)
    {
      StatServiceImpl.f().error("The Throwable error message of StatService.reportException() can not be null!");
      return;
    }
    new aq(new d(b, StatServiceImpl.a(b, false, c), 1, a, c)).a();
  }
}
