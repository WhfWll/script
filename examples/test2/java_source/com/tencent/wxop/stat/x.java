package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.b;
import com.tencent.wxop.stat.a.c;
import com.tencent.wxop.stat.common.StatLogger;
import java.util.Map;

final class x
  implements Runnable
{
  x(String paramString, c paramC, Context paramContext, StatSpecifyReportedInfo paramStatSpecifyReportedInfo) {}
  
  public final void run()
  {
    for (;;)
    {
      Long localLong;
      try
      {
        if (StatServiceImpl.a(a))
        {
          StatServiceImpl.f().error("The event_id of StatService.trackCustomEndEvent() can not be null or empty.");
          return;
        }
        localLong = (Long)StatServiceImpl.k().remove(b);
        if (localLong == null) {
          break;
        }
        b localB = new b(c, StatServiceImpl.a(c, false, d), b.a, d);
        bb = b.b;
        localLong = Long.valueOf((System.currentTimeMillis() - localLong.longValue()) / 1000L);
        if (localLong.longValue() == 0L)
        {
          l = 1L;
          localB.a(Long.valueOf(l).longValue());
          new aq(localB).a();
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        StatServiceImpl.f().e(localThrowable);
        StatServiceImpl.a(c, localThrowable);
        return;
      }
      long l = localLong.longValue();
    }
    StatServiceImpl.f().error("No start time found for custom event: " + b.toString() + ", lost trackCustomBeginEvent()?");
  }
}
