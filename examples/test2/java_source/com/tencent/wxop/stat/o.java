package com.tencent.wxop.stat;

import android.content.Context;

final class o
  implements Runnable
{
  o(Context paramContext) {}
  
  public final void run()
  {
    StatServiceImpl.flushDataToDB(a);
  }
}
