package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.e;
import com.tencent.wxop.stat.a.k;
import com.tencent.wxop.stat.common.StatLogger;
import java.util.Map;

final class ah
  implements Runnable
{
  ah(Context paramContext, String paramString, StatSpecifyReportedInfo paramStatSpecifyReportedInfo) {}
  
  public final void run()
  {
    try
    {
      StatServiceImpl.flushDataToDB(a);
      synchronized (StatServiceImpl.h())
      {
        Object localObject2 = (Long)StatServiceImpl.h().remove(b);
        if (localObject2 != null)
        {
          localObject2 = Long.valueOf((System.currentTimeMillis() - ((Long)localObject2).longValue()) / 1000L);
          ??? = localObject2;
          if (((Long)localObject2).longValue() <= 0L) {
            ??? = Long.valueOf(1L);
          }
          String str = StatServiceImpl.j();
          localObject2 = str;
          if (str != null)
          {
            localObject2 = str;
            if (str.equals(b) == true) {
              localObject2 = "-";
            }
          }
          ??? = new k(a, (String)localObject2, b, StatServiceImpl.a(a, false, c), (Long)???, c);
          if (!b.equals(StatServiceImpl.i())) {
            StatServiceImpl.f().warn("Invalid invocation since previous onResume on diff page.");
          }
          new aq((e)???).a();
          StatServiceImpl.c(b);
          return;
        }
      }
      StatServiceImpl.f().e("Starttime for PageID:" + b + " not found, lost onResume()?");
    }
    catch (Throwable localThrowable)
    {
      StatServiceImpl.f().e(localThrowable);
      StatServiceImpl.a(a, localThrowable);
      return;
    }
  }
}
