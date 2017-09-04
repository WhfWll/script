package cn.domob.wall.core.d;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.DownloadListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebView.HitTestResult;
import android.webkit.WebViewClient;
import cn.domob.wall.core.h.d;

class a
  extends WebView
{
  private static d f = new d(a.class.getSimpleName());
  b a;
  a b;
  c c;
  d d;
  Context e;
  private boolean g = false;
  private boolean h = false;
  
  public a(Context paramContext)
  {
    super(paramContext);
    e = paramContext;
    b();
    getSettings().setJavaScriptEnabled(true);
    getSettings().setCacheMode(-1);
    setWebViewClient(new WebViewClient()
    {
      public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
        a.a().a("onPageFinished");
        if (a.a(a.this)) {
          a.b(a.this);
        }
        for (;;)
        {
          if (a != null) {
            a.a((a)paramAnonymousWebView, paramAnonymousString);
          }
          return;
          a.c(a.this);
        }
      }
      
      public void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
      {
        super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
        a.a().a("onPageStarted");
      }
      
      public void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
      {
        super.onReceivedError(paramAnonymousWebView, paramAnonymousInt, paramAnonymousString1, paramAnonymousString2);
        a.a().a("onReceivedError");
        a.a(a.this, true);
        a.b(a.this);
      }
      
      public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        a.a().b("EBaseWebView shouldOverrideUrlLoading url:" + paramAnonymousString);
        WebView.HitTestResult localHitTestResult = getHitTestResult();
        if (localHitTestResult != null)
        {
          int i = localHitTestResult.getType();
          a.a().b("EBaseWebView shouldOverrideUrlLoading hit.getType:" + i);
          if (i == 0)
          {
            loadUrl(paramAnonymousString);
            return false;
          }
          if (b != null) {
            b.a((a)paramAnonymousWebView, paramAnonymousString);
          }
          return true;
        }
        a.a().b("HitTestResult is null");
        loadUrl(paramAnonymousString);
        return false;
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
    getSettings().setSupportZoom(false);
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
  
  protected void a(a paramA)
  {
    b = paramA;
  }
  
  protected void a(b paramB)
  {
    a = paramB;
  }
  
  protected void a(c paramC)
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
  
  static abstract interface a
  {
    public abstract void a(a paramA, String paramString);
  }
  
  static abstract interface b
  {
    public abstract void a(a paramA, String paramString);
  }
  
  static abstract interface c
  {
    public abstract void a(a paramA);
    
    public abstract void b(a paramA);
    
    public abstract void c(a paramA);
  }
  
  static abstract interface d
  {
    public abstract void a(String paramString);
  }
}
