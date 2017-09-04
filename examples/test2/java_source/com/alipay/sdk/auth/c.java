package com.alipay.sdk.auth;

import com.bangcle.andjni.JniLib;

final class c
  implements Runnable
{
  static
  {
    JniLib.a(c.class, 135);
  }
  
  c(AuthActivity paramAuthActivity, String paramString) {}
  
  public final native void run();
}
