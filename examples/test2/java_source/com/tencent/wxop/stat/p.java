package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.d;
import com.tencent.wxop.stat.common.StatLogger;

final class p
  implements Runnable
{
  p(String paramString, Context paramContext, StatSpecifyReportedInfo paramStatSpecifyReportedInfo) {}
  
  public final void run()
  {
    try
    {
      if (StatServiceImpl.a(a))
      {
        StatServiceImpl.f().error("Error message in StatService.reportError() is empty.");
        return;
      }
      new aq(new d(b, StatServiceImpl.a(b, false, c), a, 0, StatConfig.getMaxReportEventLength(), null, c)).a();
      return;
    }
    catch (Throwable localThrowable)
    {
      StatServiceImpl.f().e(localThrowable);
      StatServiceImpl.a(b, localThrowable);
    }
  }
}
