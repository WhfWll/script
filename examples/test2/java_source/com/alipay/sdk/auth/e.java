package com.alipay.sdk.auth;

import android.webkit.SslErrorHandler;
import com.bangcle.andjni.JniLib;

final class e
  implements Runnable
{
  static
  {
    JniLib.a(e.class, 137);
  }
  
  e(AuthActivity.b paramB, SslErrorHandler paramSslErrorHandler) {}
  
  public final native void run();
}
