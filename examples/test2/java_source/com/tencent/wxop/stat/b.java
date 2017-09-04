package com.tencent.wxop.stat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.wxop.stat.common.e;

class b
  extends BroadcastReceiver
{
  b(a paramA) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (a.a(a) != null) {
      a.a(a).a(new c(this));
    }
  }
}
