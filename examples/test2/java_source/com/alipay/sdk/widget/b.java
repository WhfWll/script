package com.alipay.sdk.widget;

import com.bangcle.andjni.JniLib;

final class b
  implements Runnable
{
  static
  {
    JniLib.a(b.class, 183);
  }
  
  b(a paramA, CharSequence paramCharSequence) {}
  
  public final native void run();
}
