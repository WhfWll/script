package com.alipay.sdk.auth;

import com.bangcle.andjni.JniLib;

final class d
  implements Runnable
{
  static
  {
    JniLib.a(d.class, 136);
  }
  
  d(AuthActivity paramAuthActivity) {}
  
  public final native void run();
}
