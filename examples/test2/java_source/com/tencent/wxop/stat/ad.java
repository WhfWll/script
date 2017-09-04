package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;

final class ad
  implements Runnable
{
  ad(Context paramContext, int paramInt) {}
  
  public final void run()
  {
    try
    {
      StatServiceImpl.flushDataToDB(a);
      au.a(a).a(b);
      return;
    }
    catch (Throwable localThrowable)
    {
      StatServiceImpl.f().e(localThrowable);
      StatServiceImpl.a(a, localThrowable);
    }
  }
}
