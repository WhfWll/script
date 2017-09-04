package com.alipay.apmobilesecuritysdk.face;

import com.bangcle.andjni.JniLib;
import java.util.Map;

final class b
  implements Runnable
{
  static
  {
    JniLib.a(b.class, 84);
  }
  
  b(a paramA, Map paramMap) {}
  
  public final native void run();
}
