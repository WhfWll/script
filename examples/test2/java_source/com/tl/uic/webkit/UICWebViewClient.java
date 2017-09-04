package com.tl.uic.webkit;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.bangcle.andjni.JniLib;

public class UICWebViewClient
  extends WebViewClient
{
  static
  {
    JniLib.a(UICWebViewClient.class, 1075);
  }
  
  public UICWebViewClient() {}
  
  public native boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString);
}
