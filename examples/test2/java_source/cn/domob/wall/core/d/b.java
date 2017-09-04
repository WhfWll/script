package cn.domob.wall.core.d;

import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import cn.domob.wall.core.DService.EWallReportType;
import cn.domob.wall.core.h.d;

public class b
  extends RelativeLayout
{
  private static d d = new d(b.class.getSimpleName());
  Context a;
  a b;
  c c;
  private a e;
  
  public b(final cn.domob.wall.core.b paramB, Context paramContext, String paramString, a paramA)
  {
    super(paramContext);
    a = paramContext;
    e = new a(paramContext);
    b = paramA;
    setBackgroundColor(-1);
    e.a(new a.a()
    {
      public void a(a paramAnonymousA, String paramAnonymousString)
      {
        b.b().b("EWallDetailsView onURLIntercepted URL:" + paramAnonymousString);
        paramAnonymousA.loadUrl(paramAnonymousString);
        cn.domob.wall.core.f.a.a().a(paramB, DService.EWallReportType.E_PAGE_CLICK, paramAnonymousString);
      }
    });
    e.a(new a.b()
    {
      public void a(a paramAnonymousA, String paramAnonymousString)
      {
        a();
      }
    });
    e.setWebChromeClient(new WebChromeClient()
    {
      public void onProgressChanged(WebView paramAnonymousWebView, int paramAnonymousInt)
      {
        super.onProgressChanged(paramAnonymousWebView, paramAnonymousInt);
        c.a(paramAnonymousInt);
        b.b().b("newProgress:" + paramAnonymousInt);
      }
    });
    e.setOnKeyListener(new View.OnKeyListener()
    {
      public boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        return (paramAnonymousInt == 4) && (paramAnonymousKeyEvent.getAction() == 0);
      }
    });
    e.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return false;
      }
    });
    c = new c(a, paramString, new c.a()
    {
      public void a()
      {
        if (b != null) {
          b.a();
        }
        b.a(b.this).loadUrl("");
        b.b().b("you click close button");
      }
      
      public void b()
      {
        if (b.a(b.this).canGoBack())
        {
          b.a(b.this).goBack();
          b.b().b("webView canGoBack");
        }
        for (;;)
        {
          b.this.a();
          b.b().b("you click back button");
          return;
          if (b != null) {
            b.a();
          }
        }
      }
      
      public void c()
      {
        if (b.a(b.this).canGoForward()) {
          b.a(b.this).goForward();
        }
        b.this.a();
        b.b().b("you click forward button");
      }
      
      public void d()
      {
        b.a(b.this).reload();
        b.this.a();
        b.b().b("you click refresh button");
      }
    });
    paramB = c.f();
    paramB.setId(11);
    paramContext = new RelativeLayout.LayoutParams(-1, -2);
    paramContext.addRule(3, 11);
    e.setLayoutParams(paramContext);
    addView(paramB);
    addView(e, paramContext);
  }
  
  public void a()
  {
    if (e.canGoBack())
    {
      if (e.canGoForward())
      {
        c.a(true, true);
        return;
      }
      c.a(true, false);
      return;
    }
    if (e.canGoForward())
    {
      c.a(false, true);
      return;
    }
    c.a(false, false);
  }
  
  public void a(String paramString)
  {
    e.loadUrl(paramString);
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}
