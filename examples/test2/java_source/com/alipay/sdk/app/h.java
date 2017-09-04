package com.alipay.sdk.app;

import android.webkit.SslErrorHandler;
import com.bangcle.andjni.JniLib;

final class h
  implements Runnable
{
  static
  {
    JniLib.a(h.class, 123);
  }
  
  h(H5PayActivity.a paramA, SslErrorHandler paramSslErrorHandler) {}
  
  public final native void run();
}
