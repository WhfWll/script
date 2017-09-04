package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.common.k;

final class n
  implements Runnable
{
  n(Context paramContext) {}
  
  public final void run()
  {
    if (a == null) {
      StatServiceImpl.f().error("The Context of StatService.onStop() can not be null!");
    }
    for (;;)
    {
      return;
      StatServiceImpl.flushDataToDB(a);
      if (StatServiceImpl.a()) {
        continue;
      }
      try
      {
        Thread.sleep(100L);
        if (!k.B(a)) {
          continue;
        }
        if (StatConfig.isDebugEnable()) {
          StatServiceImpl.f().i("onStop isBackgroundRunning flushDataToDB");
        }
        StatServiceImpl.commitEvents(a, -1);
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
  }
}
