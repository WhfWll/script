package cn.domob.android.j;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import cn.domob.android.i.f;

public class e
  extends WebView
{
  private static f c = new f(e.class.getSimpleName());
  private static final int i = 20;
  public a a;
  public b b;
  private int d;
  private boolean e = true;
  private boolean f = false;
  private boolean g = false;
  private boolean h = false;
  
  public e(Context paramContext)
  {
    super(paramContext);
    b();
    getSettings().setJavaScriptEnabled(true);
    getSettings().setPluginState(WebSettings.PluginState.ON);
    getSettings().setCacheMode(-1);
    getSettings().setGeolocationEnabled(true);
    getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
    d = 20;
    setWebViewClient(new WebViewClient()
    {
      public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
        e.a().a("onPageFinished");
        if (e.a(e.this))
        {
          e.b(e.this);
          return;
        }
        e.a(e.this, true);
        e.c(e.this);
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
        e.b(e.this, true);
        e.b(e.this);
      }
      
      public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        e.a().b("webview intercepted url: " + paramAnonymousString);
        if (a != null) {
          a.a(paramAnonymousString);
        }
        return true;
      }
    });
    setWebChromeClient(new WebChromeClient()
    {
      public void onGeolocationPermissionsShowPrompt(String paramAnonymousString, GeolocationPermissions.Callback paramAnonymousCallback)
      {
        super.onGeolocationPermissionsShowPrompt(paramAnonymousString, paramAnonymousCallback);
        paramAnonymousCallback.invoke(paramAnonymousString, true, false);
      }
    });
  }
  
  private void b()
  {
    setHorizontalScrollBarEnabled(false);
    setHorizontalScrollbarOverlay(false);
    setVerticalScrollBarEnabled(false);
    setVerticalScrollbarOverlay(false);
    getSettings().setSupportZoom(false);
  }
  
  private void c()
  {
    if ((b != null) && (!h))
    {
      h = true;
      c.a("WebView finish callback.");
      b.a(this);
    }
  }
  
  private void d()
  {
    if ((b != null) && (!h))
    {
      h = true;
      c.a("WebView failed callback.");
      b.b(this);
    }
  }
  
  private void e()
  {
    if ((b != null) && (!h))
    {
      h = true;
      c.a("WebView timeout callback.");
      b.c(this);
    }
  }
  
  public void a(int paramInt)
  {
    c.a("WebView's timeout is set as :" + paramInt);
    d = paramInt;
  }
  
  public void a(a paramA)
  {
    a = paramA;
  }
  
  public void a(b paramB)
  {
    b = paramB;
  }
  
  public void a(final String paramString)
  {
    if (paramString != null) {}
    try
    {
      paramString = "javascript:" + paramString;
      c.b(String.format("DomobWebView instance executes js: %s", new Object[] { paramString }));
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
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public void loadUrl(String paramString)
  {
    super.loadUrl(paramString);
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString);
  }
  
  public static abstract interface b
  {
    public abstract void a(e paramE);
    
    public abstract void b(e paramE);
    
    public abstract void c(e paramE);
  }
  
  class c
    extends Thread
  {
    private int b = 0;
    
    c() {}
    
    public void run()
    {
      while ((b < e.d(e.this)) && (!e.e(e.this))) {
        try
        {
          Thread.sleep(1000L);
          b += 1;
        }
        catch (InterruptedException localInterruptedException)
        {
          e.a().a(localInterruptedException);
        }
      }
      if ((b == e.d(e.this)) && (!e.e(e.this)) && (!e.a(e.this)))
      {
        e.a().e("WebView 加载超时");
        e.b(e.this, true);
        e.f(e.this);
        if (e.g(e.this)) {
          ((Activity)getContext()).runOnUiThread(new Runnable()
          {
            public void run()
            {
              try
              {
                stopLoading();
                return;
              }
              catch (Exception localException)
              {
                e.a().a(localException);
              }
            }
          });
        }
      }
    }
  }
}
