package cn.dbox.ui.common;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.DownloadListener;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.webkit.WebView.HitTestResult;
import android.webkit.WebViewClient;

public class e
  extends WebView
{
  private static cn.dbox.core.h.d f = new cn.dbox.core.h.d(e.class.getSimpleName());
  b a;
  a b;
  c c;
  d d;
  Context e;
  private boolean g = false;
  private boolean h = false;
  private cn.dbox.core.bean.d i;
  
  public e(Context paramContext, cn.dbox.core.bean.d paramD)
  {
    super(paramContext);
    e = paramContext;
    i = paramD;
    b();
    getSettings().setJavaScriptEnabled(true);
    getSettings().setCacheMode(-1);
    getSettings().setJavaScriptEnabled(true);
    getSettings().setPluginState(WebSettings.PluginState.ON);
    getSettings().setGeolocationEnabled(true);
    getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
    getSettings().setUseWideViewPort(true);
    getSettings().setLoadWithOverviewMode(true);
    getSettings().setDomStorageEnabled(true);
    setWebViewClient(new WebViewClient()
    {
      public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
        e.a().a("onPageFinished");
        if (e.a(e.this)) {
          e.b(e.this);
        }
        for (;;)
        {
          if (a != null) {
            a.a(e.d(e.this));
          }
          return;
          e.c(e.this);
        }
      }
      
      public void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
      {
        super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
        e.a().a("onPageStarted");
      }
      
      public void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
      {
        super.onReceivedError(paramAnonymousWebView, paramAnonymousInt, paramAnonymousString1, paramAnonymousString2);
        e.a().a("onReceivedError");
        e.a(e.this, true);
        e.b(e.this);
        if (a != null) {
          a.b(e.d(e.this));
        }
      }
      
      public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        e.a().b("EBaseWebView shouldOverrideUrlLoading url:" + paramAnonymousString);
        WebView.HitTestResult localHitTestResult = getHitTestResult();
        if (localHitTestResult != null)
        {
          int i = localHitTestResult.getType();
          e.a().b("EBaseWebView shouldOverrideUrlLoading hit.getType:" + i);
          if (i == 0)
          {
            loadUrl(paramAnonymousString);
            return false;
          }
          if (b != null) {
            b.a((e)paramAnonymousWebView, paramAnonymousString);
          }
          return true;
        }
        e.a().b("HitTestResult is null");
        loadUrl(paramAnonymousString);
        return false;
      }
    });
    setWebChromeClient(new WebChromeClient()
    {
      public void onGeolocationPermissionsShowPrompt(String paramAnonymousString, GeolocationPermissions.Callback paramAnonymousCallback)
      {
        super.onGeolocationPermissionsShowPrompt(paramAnonymousString, paramAnonymousCallback);
        paramAnonymousCallback.invoke(paramAnonymousString, true, false);
      }
      
      public void onProgressChanged(WebView paramAnonymousWebView, int paramAnonymousInt)
      {
        super.onProgressChanged(paramAnonymousWebView, paramAnonymousInt);
      }
    });
    setDownloadListener(new DownloadListener()
    {
      public void onDownloadStart(String paramAnonymousString1, String paramAnonymousString2, String paramAnonymousString3, String paramAnonymousString4, long paramAnonymousLong)
      {
        paramAnonymousString1 = new Intent("android.intent.action.VIEW", Uri.parse(paramAnonymousString1));
        e.startActivity(paramAnonymousString1);
      }
    });
  }
  
  private void b()
  {
    setHorizontalScrollBarEnabled(false);
    setHorizontalScrollbarOverlay(false);
    setVerticalScrollBarEnabled(false);
    setVerticalScrollbarOverlay(true);
    getSettings().setJavaScriptEnabled(true);
    getSettings().setPluginState(WebSettings.PluginState.ON);
    getSettings().setGeolocationEnabled(true);
    getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
    getSettings().setUseWideViewPort(true);
    getSettings().setLoadWithOverviewMode(true);
    getSettings().setDomStorageEnabled(true);
  }
  
  private void c()
  {
    if ((c != null) && (!h))
    {
      h = true;
      f.a("WebView finish callback.");
      c.a(this);
    }
  }
  
  private void d()
  {
    if ((c != null) && (!h))
    {
      h = true;
      f.a("WebView failed callback.");
      c.b(this);
    }
  }
  
  private void e()
  {
    if ((c != null) && (!h))
    {
      h = true;
      f.a("WebView timeout callback.");
      c.c(this);
    }
  }
  
  protected void a(int paramInt)
  {
    f.a("WebView's timeout is set as :" + paramInt);
  }
  
  public void a(a paramA)
  {
    b = paramA;
  }
  
  public void a(b paramB)
  {
    a = paramB;
  }
  
  public void a(c paramC)
  {
    c = paramC;
  }
  
  protected void a(d paramD)
  {
    d = paramD;
  }
  
  protected void a(final String paramString)
  {
    if (paramString != null) {}
    try
    {
      paramString = "javascript:" + paramString;
      f.b(String.format("EBaseWebView instance executes js: %s", new Object[] { paramString }));
      ((Activity)getContext()).runOnUiThread(new Runnable()
      {
        public void run()
        {
          loadUrl(paramString);
        }
      });
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  protected void a(boolean paramBoolean) {}
  
  public void loadData(String paramString1, String paramString2, String paramString3)
  {
    f.a(String.format("loadData() is called with data = %s.", new Object[] { paramString1 }));
    loadDataWithBaseURL(null, paramString1, paramString2, paramString3, null);
  }
  
  public static abstract interface a
  {
    public abstract void a(e paramE, String paramString);
  }
  
  public static abstract interface b
  {
    public abstract void a(cn.dbox.core.bean.d paramD);
    
    public abstract void a(String paramString, WebView paramWebView, cn.dbox.core.bean.d paramD);
    
    public abstract void a(String paramString1, String paramString2, cn.dbox.core.bean.d paramD);
    
    public abstract void b(cn.dbox.core.bean.d paramD);
    
    public abstract void c(cn.dbox.core.bean.d paramD);
    
    public abstract void d(cn.dbox.core.bean.d paramD);
  }
  
  public static abstract interface c
  {
    public abstract void a(e paramE);
    
    public abstract void b(e paramE);
    
    public abstract void c(e paramE);
  }
  
  static abstract interface d
  {
    public abstract void a(String paramString);
  }
}
