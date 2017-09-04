package com.alipay.sdk.util;

import com.bangcle.andjni.JniLib;

final class e
  implements Runnable
{
  static
  {
    JniLib.a(e.class, 176);
  }
  
  e(String paramString) {}
  
  public final native void run();
}
