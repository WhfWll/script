package com.sdu.didi.openapi.ss;

import android.os.AsyncTask;
import android.text.TextUtils;
import android.webkit.WebView;
import com.sdu.didi.openapi.DiDiWebActivity;
import com.sdu.didi.openapi.utils.a;
import java.util.ArrayList;

class h
  extends AsyncTask<String, Void, String>
{
  h(g paramG, DiDiWebActivity paramDiDiWebActivity) {}
  
  protected String a(String... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length == 0)) {
      return "";
    }
    if (isCancelled()) {
      return "";
    }
    return d.a(paramVarArgs[0], a);
  }
  
  protected void a(String paramString)
  {
    if (paramString.equals("success")) {
      return;
    }
    a.a("jscalljava", paramString);
    g.a(b).remove(this);
    if (TextUtils.isEmpty(paramString))
    {
      a.a("processRequest", "onPostExecute return null");
      return;
    }
    paramString = String.format("javascript:window.didi&&window.didi.sdk&&window.didi.sdk._callback(%s);", new Object[] { paramString });
    g.b(b).loadUrl(paramString);
  }
}
