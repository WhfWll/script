package com.alipay.sdk.app;

import android.webkit.DownloadListener;
import com.bangcle.andjni.JniLib;

final class a
  implements DownloadListener
{
  static
  {
    JniLib.a(a.class, 116);
  }
  
  a(H5AuthActivity paramH5AuthActivity) {}
  
  public final native void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong);
}
