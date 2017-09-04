package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;

final class al
  implements Runnable
{
  al(StatAccount paramStatAccount, Context paramContext, StatSpecifyReportedInfo paramStatSpecifyReportedInfo) {}
  
  public final void run()
  {
    if ((a == null) || (a.getAccount().trim().length() == 0))
    {
      StatServiceImpl.f().w("account is null or empty.");
      return;
    }
    StatConfig.setQQ(b, a.getAccount());
    StatServiceImpl.a(b, a, c);
  }
}
