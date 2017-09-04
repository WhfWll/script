package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.b;
import com.tencent.wxop.stat.a.c;
import com.tencent.wxop.stat.common.StatLogger;

final class s
  implements Runnable
{
  s(Context paramContext, StatSpecifyReportedInfo paramStatSpecifyReportedInfo, c paramC) {}
  
  public final void run()
  {
    try
    {
      b localB = new b(a, StatServiceImpl.a(a, false, b), c.a, b);
      bb = c.b;
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
