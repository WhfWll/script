package com.alipay.sdk.app;

import com.bangcle.andjni.JniLib;

final class f
  implements Runnable
{
  static
  {
    JniLib.a(f.class, 121);
  }
  
  f(H5AuthActivity.a paramA) {}
  
  public final native void run();
}
