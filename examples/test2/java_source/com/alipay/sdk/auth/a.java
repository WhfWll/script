package com.alipay.sdk.auth;

import android.webkit.DownloadListener;
import com.bangcle.andjni.JniLib;

final class a
  implements DownloadListener
{
  static
  {
    JniLib.a(a.class, 133);
  }
  
  a(AuthActivity paramAuthActivity) {}
  
  public final native void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong);
}
