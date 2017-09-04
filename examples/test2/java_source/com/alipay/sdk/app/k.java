package com.alipay.sdk.app;

import com.bangcle.andjni.JniLib;

final class k
  implements Runnable
{
  static
  {
    JniLib.a(k.class, 126);
  }
  
  k(H5PayActivity.a paramA) {}
  
  public final native void run();
}
