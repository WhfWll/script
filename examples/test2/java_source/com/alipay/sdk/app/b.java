package com.alipay.sdk.app;

import com.bangcle.andjni.JniLib;

final class b
  implements Runnable
{
  static
  {
    JniLib.a(b.class, 117);
  }
  
  b(H5AuthActivity paramH5AuthActivity) {}
  
  public final native void run();
}
