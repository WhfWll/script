package com.sdu.didi.openapi;

import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;

class f
  implements View.OnClickListener
{
  f(DiDiWebActivity paramDiDiWebActivity, View paramView) {}
  
  public void onClick(View paramView)
  {
    if ((DiDiWebActivity.a(b) != null) && (DiDiWebActivity.a(b).canGoBack()))
    {
      DiDiWebActivity.a(b).goBack();
      a.setVisibility(0);
      return;
    }
    b.finish();
  }
}
