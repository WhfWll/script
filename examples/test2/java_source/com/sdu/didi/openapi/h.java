package com.sdu.didi.openapi;

import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.sdu.didi.openapi.ss.b;
import com.sdu.didi.openapi.ss.g;

class h
  extends WebChromeClient
{
  h(DiDiWebActivity paramDiDiWebActivity) {}
  
  public boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    new b(paramWebView.getContext()).a(paramString2);
    paramJsResult.confirm();
    return true;
  }
  
  public boolean onJsPrompt(WebView paramWebView, String paramString1, String paramString2, String paramString3, JsPromptResult paramJsPromptResult)
  {
    paramJsPromptResult.confirm("prompt ok");
    DiDiWebActivity.b(a).a(paramString2, a);
    return true;
  }
}
