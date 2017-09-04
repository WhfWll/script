package com.alipay.sdk.app;

import com.bangcle.andjni.JniLib;

final class g
  implements Runnable
{
  static
  {
    JniLib.a(g.class, 122);
  }
  
  g(H5PayActivity paramH5PayActivity) {}
  
  public final native void run();
}
