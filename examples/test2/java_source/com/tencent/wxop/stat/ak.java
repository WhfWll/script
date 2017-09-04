package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;

final class ak
  implements Runnable
{
  ak(String paramString, Context paramContext, StatSpecifyReportedInfo paramStatSpecifyReportedInfo) {}
  
  public final void run()
  {
    if ((a == null) || (a.trim().length() == 0))
    {
      StatServiceImpl.f().w("qq num is null or empty.");
      return;
    }
    StatConfig.f = a;
    StatServiceImpl.a(b, new StatAccount(a), c);
  }
}
