package com.alipay.sdk.auth;

import android.app.Activity;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.webkit.ConsoleMessage;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.bangcle.andjni.JniLib;

public class AuthActivity
  extends Activity
{
  static final String a = "params";
  static final String b = "redirectUri";
  private WebView c;
  private String d;
  private com.alipay.sdk.widget.a e;
  private Handler f;
  private boolean g;
  private boolean h;
  private Runnable i = new d(this);
  
  static
  {
    JniLib.a(AuthActivity.class, 132);
  }
  
  public AuthActivity() {}
  
  private native void a();
  
  private native void a(com.alipay.sdk.authjs.a paramA);
  
  private native boolean a(String paramString);
  
  private native void b();
  
  private native void b(String paramString);
  
  public native void onBackPressed();
  
  public native void onConfigurationChanged(Configuration paramConfiguration);
  
  protected native void onCreate(Bundle paramBundle);
  
  protected native void onDestroy();
  
  private final class a
    extends WebChromeClient
  {
    static
    {
      JniLib.a(a.class, 130);
    }
    
    private a() {}
    
    public final native boolean onConsoleMessage(ConsoleMessage paramConsoleMessage);
  }
  
  private final class b
    extends WebViewClient
  {
    static
    {
      JniLib.a(b.class, 131);
    }
    
    private b() {}
    
    public final native void onPageFinished(WebView paramWebView, String paramString);
    
    public final native void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap);
    
    public final native void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2);
    
    public final native void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError);
    
    public final native boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString);
  }
}
