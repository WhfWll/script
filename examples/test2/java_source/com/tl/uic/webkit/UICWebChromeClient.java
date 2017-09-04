package com.tl.uic.webkit;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.bangcle.andjni.JniLib;
import com.tl.uic.app.UICActivity;

public class UICWebChromeClient
  extends WebChromeClient
{
  private static final int PROGRESS_100_PERCENT = 100;
  private static final int PROGRESS_CONVERTER_TO_100 = 1000;
  private final UICActivity uicActivity;
  
  static
  {
    JniLib.a(UICWebChromeClient.class, 1073);
  }
  
  public UICWebChromeClient(UICActivity paramUICActivity)
  {
    uicActivity = paramUICActivity;
  }
  
  public final native void onConsoleMessage(String paramString1, int paramInt, String paramString2);
  
  public final native void onProgressChanged(WebView paramWebView, int paramInt);
}
