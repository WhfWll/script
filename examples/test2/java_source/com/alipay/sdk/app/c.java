package com.alipay.sdk.app;

import android.webkit.SslErrorHandler;
import com.bangcle.andjni.JniLib;

final class c
  implements Runnable
{
  static
  {
    JniLib.a(c.class, 118);
  }
  
  c(H5AuthActivity.a paramA, SslErrorHandler paramSslErrorHandler) {}
  
  public final native void run();
}
