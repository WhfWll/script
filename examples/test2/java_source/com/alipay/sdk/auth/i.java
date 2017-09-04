package com.alipay.sdk.auth;

import android.app.Activity;
import com.alipay.sdk.data.e;
import com.alipay.sdk.net.d;
import com.bangcle.andjni.JniLib;

final class i
  implements Runnable
{
  static
  {
    JniLib.a(i.class, 141);
  }
  
  i(d paramD, Activity paramActivity, e paramE, APAuthInfo paramAPAuthInfo) {}
  
  public final native void run();
}
