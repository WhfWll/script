package com.sdu.didi.openapi;

import android.webkit.DownloadListener;
import com.sdu.didi.openapi.ss.g;

class j
  implements DownloadListener
{
  j(DiDiWebActivity paramDiDiWebActivity) {}
  
  public void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    if (DiDiWebActivity.b(a) != null) {
      DiDiWebActivity.b(a).a(paramString1, paramString2, paramString3, paramString4, paramLong);
    }
  }
}
