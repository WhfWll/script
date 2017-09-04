package com.alipay.sdk.auth;

import com.alipay.sdk.authjs.a;
import com.alipay.sdk.authjs.c;
import com.bangcle.andjni.JniLib;

final class b
  implements c
{
  static
  {
    JniLib.a(b.class, 134);
  }
  
  b(AuthActivity paramAuthActivity) {}
  
  public final native void a(a paramA);
}
