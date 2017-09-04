package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.common.k;

final class m
  implements Runnable
{
  m(Context paramContext, StatSpecifyReportedInfo paramStatSpecifyReportedInfo) {}
  
  public final void run()
  {
    if (a == null)
    {
      StatServiceImpl.f().error("The Context of StatService.onPause() can not be null!");
      return;
    }
    StatServiceImpl.trackEndPage(a, k.h(a), b);
  }
}
