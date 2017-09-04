package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.c;
import com.tencent.wxop.stat.common.StatLogger;
import java.util.Map;

final class v
  implements Runnable
{
  v(String paramString, c paramC, Context paramContext) {}
  
  public final void run()
  {
    try
    {
      if (StatServiceImpl.a(a))
      {
        StatServiceImpl.f().error("The event_id of StatService.trackCustomBeginEvent() can not be null or empty.");
        return;
      }
      if (StatConfig.isDebugEnable()) {
        StatServiceImpl.f().i("add begin key:" + b.toString());
      }
      if (StatServiceImpl.k().containsKey(b))
      {
        StatServiceImpl.f().error("Duplicate CustomEvent key: " + b.toString() + ", trackCustomBeginEvent() repeated?");
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      StatServiceImpl.f().e(localThrowable);
      StatServiceImpl.a(c, localThrowable);
      return;
    }
    if (StatServiceImpl.k().size() <= StatConfig.getMaxParallelTimmingEvents())
    {
      StatServiceImpl.k().put(b, Long.valueOf(System.currentTimeMillis()));
      return;
    }
    StatServiceImpl.f().error("The number of timedEvent exceeds the maximum value " + Integer.toString(StatConfig.getMaxParallelTimmingEvents()));
  }
}
