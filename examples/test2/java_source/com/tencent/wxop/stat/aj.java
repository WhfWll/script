package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.common.k;

final class aj
  implements Runnable
{
  aj(Context paramContext, StatSpecifyReportedInfo paramStatSpecifyReportedInfo) {}
  
  public final void run()
  {
    if (a == null)
    {
      StatServiceImpl.f().error("The Context of StatService.onResume() can not be null!");
      return;
    }
    StatServiceImpl.trackBeginPage(a, k.h(a), b);
  }
}
