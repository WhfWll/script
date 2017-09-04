package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.a.e;
import com.tencent.wxop.stat.a.f;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.common.k;
import com.tencent.wxop.stat.common.p;
import java.util.Map;

class aq
{
  private static volatile long f = 0L;
  private e a;
  private StatReportStrategy b = null;
  private boolean c = false;
  private Context d = null;
  private long e = System.currentTimeMillis();
  
  public aq(e paramE)
  {
    a = paramE;
    b = StatConfig.getStatSendStrategy();
    c = paramE.f();
    d = paramE.e();
  }
  
  private void a(h paramH)
  {
    i.b(StatServiceImpl.e()).a(a, paramH);
  }
  
  private void b()
  {
    if ((a.d() != null) && (a.d().isSendImmediately())) {
      b = StatReportStrategy.INSTANT;
    }
    if ((StatConfig.j) && (a.a(StatServiceImpl.e()).e())) {
      b = StatReportStrategy.INSTANT;
    }
    if (StatConfig.isDebugEnable()) {
      StatServiceImpl.f().i("strategy=" + b.name());
    }
    switch (ag.a[b.ordinal()])
    {
    default: 
      StatServiceImpl.f().error("Invalid stat strategy:" + StatConfig.getStatSendStrategy());
    }
    do
    {
      do
      {
        return;
        c();
        return;
        au.a(d).a(a, null, c, false);
        if (StatConfig.isDebugEnable()) {
          StatServiceImpl.f().i("PERIOD currTime=" + e + ",nextPeriodSendTs=" + StatServiceImpl.c + ",difftime=" + (StatServiceImpl.c - e));
        }
        if (StatServiceImpl.c == 0L)
        {
          StatServiceImpl.c = p.a(d, "last_period_ts", 0L);
          if (e > StatServiceImpl.c) {
            StatServiceImpl.e(d);
          }
          long l = e + StatConfig.getSendPeriodMinutes() * 60 * 1000;
          if (StatServiceImpl.c > l) {
            StatServiceImpl.c = l;
          }
          d.a(d).a();
        }
        if (StatConfig.isDebugEnable()) {
          StatServiceImpl.f().i("PERIOD currTime=" + e + ",nextPeriodSendTs=" + StatServiceImpl.c + ",difftime=" + (StatServiceImpl.c - e));
        }
      } while (e <= StatServiceImpl.c);
      StatServiceImpl.e(d);
      return;
      au.a(d).a(a, null, c, false);
      return;
      au.a(d).a(a, new ar(this), c, true);
      return;
      if (a.a(StatServiceImpl.e()).c() == 1)
      {
        c();
        return;
      }
      au.a(d).a(a, null, c, false);
      return;
    } while (!k.e(d));
    a(new as(this));
  }
  
  private void c()
  {
    if ((ba > 0) && (StatConfig.l))
    {
      au.b().a(a, null, c, true);
      au.b().a(-1);
      return;
    }
    a(new at(this));
  }
  
  private boolean d()
  {
    if (StatConfig.h > 0)
    {
      if (e > StatServiceImpl.l())
      {
        StatServiceImpl.m().clear();
        StatServiceImpl.a(e + StatConfig.i);
        if (StatConfig.isDebugEnable()) {
          StatServiceImpl.f().i("clear methodsCalledLimitMap, nextLimitCallClearTime=" + StatServiceImpl.l());
        }
      }
      Integer localInteger1 = Integer.valueOf(a.a().a());
      Integer localInteger2 = (Integer)StatServiceImpl.m().get(localInteger1);
      if (localInteger2 != null)
      {
        StatServiceImpl.m().put(localInteger1, Integer.valueOf(localInteger2.intValue() + 1));
        if (localInteger2.intValue() > StatConfig.h)
        {
          if (StatConfig.isDebugEnable()) {
            StatServiceImpl.f().e("event " + a.g() + " was discard, cause of called limit, current:" + localInteger2 + ", limit:" + StatConfig.h + ", period:" + StatConfig.i + " ms");
          }
          return true;
        }
      }
      else
      {
        StatServiceImpl.m().put(localInteger1, Integer.valueOf(1));
      }
    }
    return false;
  }
  
  public void a()
  {
    if (d()) {}
    do
    {
      return;
      if ((StatConfig.m > 0) && (e >= f))
      {
        StatServiceImpl.flushDataToDB(d);
        f = e + StatConfig.n;
        if (StatConfig.isDebugEnable()) {
          StatServiceImpl.f().i("nextFlushTime=" + f);
        }
      }
      if (!a.a(d).f()) {
        break;
      }
      if (StatConfig.isDebugEnable()) {
        StatServiceImpl.f().i("sendFailedCount=" + StatServiceImpl.a);
      }
      if (!StatServiceImpl.a())
      {
        b();
        return;
      }
      au.a(d).a(a, null, c, false);
    } while (e - StatServiceImpl.b <= 1800000L);
    StatServiceImpl.d(d);
    return;
    au.a(d).a(a, null, c, false);
  }
}
