package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.common.k;
import java.util.Timer;
import java.util.TimerTask;

public class d
{
  private static volatile d b = null;
  private Timer a = null;
  private Context c = null;
  
  private d(Context paramContext)
  {
    c = paramContext.getApplicationContext();
    a = new Timer(false);
  }
  
  public static d a(Context paramContext)
  {
    if (b == null) {}
    try
    {
      if (b == null) {
        b = new d(paramContext);
      }
      return b;
    }
    finally {}
  }
  
  public void a()
  {
    if (StatConfig.getStatSendStrategy() == StatReportStrategy.PERIOD)
    {
      long l = StatConfig.getSendPeriodMinutes() * 60 * 1000;
      if (StatConfig.isDebugEnable()) {
        k.b().i("setupPeriodTimer delay:" + l);
      }
      a(new e(this), l);
    }
  }
  
  public void a(TimerTask paramTimerTask, long paramLong)
  {
    if (a != null)
    {
      if (StatConfig.isDebugEnable()) {
        k.b().i("setupPeriodTimer schedule delay:" + paramLong);
      }
      a.schedule(paramTimerTask, paramLong);
    }
    while (!StatConfig.isDebugEnable()) {
      return;
    }
    k.b().w("setupPeriodTimer schedule timer == null");
  }
}
