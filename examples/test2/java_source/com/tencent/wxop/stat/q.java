package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.d;
import com.tencent.wxop.stat.a.i;
import com.tencent.wxop.stat.common.StatLogger;

final class q
  implements Runnable
{
  q(Context paramContext, Throwable paramThrowable) {}
  
  public final void run()
  {
    try
    {
      if (!StatConfig.isEnableStatService()) {
        return;
      }
      new aq(new d(a, StatServiceImpl.a(a, false, null), 99, b, i.a)).a();
      return;
    }
    catch (Throwable localThrowable)
    {
      StatServiceImpl.f().e("reportSdkSelfException error: " + localThrowable);
    }
  }
}
