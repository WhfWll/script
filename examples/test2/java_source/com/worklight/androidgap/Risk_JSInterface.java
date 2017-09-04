package com.worklight.androidgap;

import android.annotation.SuppressLint;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.bangcle.andjni.JniLib;

public class Risk_JSInterface
{
  static String cur_code = null;
  static String def_code;
  
  static
  {
    JniLib.a(Risk_JSInterface.class, 1077);
    def_code = "javascript:void(0)";
  }
  
  public Risk_JSInterface() {}
  
  @SuppressLint({"DefaultLocale"})
  public static native void OnFinish(WebView paramWebView);
  
  @SuppressLint({"SetJavaScriptEnabled"})
  public static native void addJS(WebView paramWebView);
  
  @JavascriptInterface
  public native void setRiskUserInfo(String paramString);
}
