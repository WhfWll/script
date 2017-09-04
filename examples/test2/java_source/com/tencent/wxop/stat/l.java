package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.common.k;

final class l
  implements Runnable
{
  l(Context paramContext) {}
  
  public final void run()
  {
    a.a(StatServiceImpl.e()).h();
    k.a(a, true);
    au.a(a);
    i.b(a);
    StatServiceImpl.a(Thread.getDefaultUncaughtExceptionHandler());
    Thread.setDefaultUncaughtExceptionHandler(new ao());
    if (StatConfig.getStatSendStrategy() == StatReportStrategy.APP_LAUNCH) {
      StatServiceImpl.commitEvents(a, -1);
    }
    if (StatConfig.isDebugEnable()) {
      StatServiceImpl.f().d("Init MTA StatService success.");
    }
  }
}
