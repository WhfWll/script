package com.tencent.wxop.stat;

import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.common.k;
import java.util.TimerTask;

class e
  extends TimerTask
{
  e(d paramD) {}
  
  public void run()
  {
    if (StatConfig.isDebugEnable()) {
      k.b().i("TimerTask run");
    }
    StatServiceImpl.e(d.a(a));
    cancel();
    a.a();
  }
}
