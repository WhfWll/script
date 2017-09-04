package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.g;
import com.tencent.wxop.stat.common.StatLogger;

final class am
  implements Runnable
{
  am(StatGameUser paramStatGameUser, Context paramContext, StatSpecifyReportedInfo paramStatSpecifyReportedInfo) {}
  
  public final void run()
  {
    if (a == null)
    {
      StatServiceImpl.f().error("The gameUser of StatService.reportGameUser() can not be null!");
      return;
    }
    if ((a.getAccount() == null) || (a.getAccount().length() == 0))
    {
      StatServiceImpl.f().error("The account of gameUser on StatService.reportGameUser() can not be null or empty!");
      return;
    }
    try
    {
      new aq(new g(b, StatServiceImpl.a(b, false, c), a, c)).a();
      return;
    }
    catch (Throwable localThrowable)
    {
      StatServiceImpl.f().e(localThrowable);
      StatServiceImpl.a(b, localThrowable);
    }
  }
}
