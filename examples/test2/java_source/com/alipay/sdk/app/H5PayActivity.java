package com.alipay.sdk.app;

import android.app.Activity;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alipay.sdk.widget.a;
import com.bangcle.andjni.JniLib;

public class H5PayActivity
  extends Activity
{
  private WebView a;
  private a b;
  private Handler c;
  private boolean d;
  private boolean e;
  private Runnable f = new g(this);
  
  static
  {
    JniLib.a(H5PayActivity.class, 114);
  }
  
  public H5PayActivity() {}
  
  private static native void a();
  
  private native void b();
  
  private native void c();
  
  public native void finish();
  
  public native void onBackPressed();
  
  public native void onConfigurationChanged(Configuration paramConfiguration);
  
  protected native void onCreate(Bundle paramBundle);
  
  protected native void onDestroy();
  
  private final class a
    extends WebViewClient
  {
    static
    {
      JniLib.a(a.class, 113);
    }
    
    private a() {}
    
    public final native void onLoadResource(WebView paramWebView, String paramString);
    
    public final native void onPageFinished(WebView paramWebView, String paramString);
    
    public final native void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap);
    
    public final native void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2);
    
    public final native void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError);
    
    public final native boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString);
  }
}
