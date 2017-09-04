package cn.domob.android.ads.b;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.WebView;
import android.widget.FrameLayout.LayoutParams;
import cn.domob.android.ads.DomobAdManager.ErrorCode;
import cn.domob.android.ads.a.a;
import cn.domob.android.ads.a.b;
import cn.domob.android.ads.a.d.b;
import cn.domob.android.ads.g;
import cn.domob.android.ads.j;
import cn.domob.android.ads.j.c;
import cn.domob.android.ads.k;
import cn.domob.android.ads.n;
import cn.domob.android.ads.w;
import cn.domob.android.ads.w.c;
import cn.domob.android.ads.w.h;
import cn.domob.android.i.c;
import cn.domob.android.i.f;
import java.net.URI;
import java.util.HashMap;

public class a
  extends n
  implements d.b
{
  private static f g = new f(a.class.getSimpleName());
  private static final String m = "mraid";
  private static final String n = "open";
  private static final String o = "expand";
  private boolean h = false;
  private boolean i = false;
  private boolean j = false;
  private Handler k = new Handler(Looper.getMainLooper());
  private int l = 0;
  
  public a(Context paramContext, k paramK, j paramJ, g paramG)
  {
    super(paramContext, paramK, paramJ, paramG);
    g.b("New DomobMRAIDAdAdapter instance.");
  }
  
  private boolean a(WebView paramWebView, String paramString, boolean paramBoolean)
  {
    try
    {
      if (paramString.startsWith("mraid"))
      {
        if (!"mraid".equals(Uri.parse(paramString).getScheme())) {
          break label339;
        }
        g.a("Scheme MRAID");
        return b(paramWebView, paramString, paramBoolean);
      }
      if ((!paramString.startsWith("http")) && (!paramString.startsWith("tel:")) && (!paramString.startsWith("voicemail:")) && (!paramString.startsWith("sms:")) && (!paramString.startsWith("mailto:")) && (!paramString.startsWith("geo:")) && (!paramString.startsWith("tel:"))) {
        break label256;
      }
      g.a("Handle other phone intents.");
      if (paramBoolean) {
        p();
      }
      if (paramString.startsWith("http"))
      {
        Intent localIntent = c.a(a, Uri.parse(paramString));
        paramWebView = localIntent;
        if (localIntent == null) {
          paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
        }
        l();
        a.startActivity(paramWebView);
        return false;
      }
    }
    catch (Exception paramWebView)
    {
      g.a(paramWebView);
      return false;
    }
    paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    paramWebView.addFlags(268435456);
    try
    {
      a.startActivity(paramWebView);
      l();
      return true;
    }
    catch (ActivityNotFoundException paramWebView)
    {
      Log.w(f.b(), "Could not handle intent with URI: " + paramString + ". Is this intent unsupported on your phone?");
      return false;
    }
    label256:
    g.a("Handle unknown intents.");
    if (paramBoolean) {
      p();
    }
    paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    paramWebView.addFlags(268435456);
    try
    {
      a.startActivity(paramWebView);
      l();
      return true;
    }
    catch (ActivityNotFoundException paramWebView)
    {
      Log.w(f.b(), "Could not handle intent with URI: " + paramString + ". Is this intent unsupported on your phone?");
    }
    label339:
    return false;
  }
  
  private void b(String paramString)
  {
    b(paramString, null);
  }
  
  private void b(String paramString1, String paramString2)
  {
    w localW = new w(a, d.n());
    localW.getClass();
    w.c localC = new w.c(localW);
    a = c.d().r();
    if (paramString2 != null) {
      h = paramString2;
    }
    localW.a(c.d().q(), w.h.c, paramString1, localC, null);
  }
  
  private boolean b(WebView paramWebView, String paramString, boolean paramBoolean)
  {
    try
    {
      Uri localUri = Uri.parse(paramString);
      if ((localUri.getHost().equals("expand")) || (localUri.getHost().equals("open")))
      {
        v();
        g.b("do click report for mraid scheme");
        p();
      }
      paramBoolean = ((m)paramWebView).a(URI.create(paramString));
      return paramBoolean;
    }
    catch (Exception paramWebView)
    {
      g.a(paramWebView);
    }
    return false;
  }
  
  private void o()
  {
    final j.c localC = c.d();
    k.post(new Runnable()
    {
      public void run()
      {
        m localM = new m(a.a(a.this));
        localM.setLayoutParams(new FrameLayout.LayoutParams(a.b(a.this).a(), a.c(a.this).b()));
        a.a(a.this, localM);
        localM.a(new a.b()
        {
          public void a(cn.domob.android.ads.a paramAnonymous2A)
          {
            a.n().a("Finished to load MRAID banner view.");
            a.d(a.this);
          }
          
          public void b(cn.domob.android.ads.a paramAnonymous2A)
          {
            a.n().e("FAILED to load domob banner view.");
            a.b(a.this, DomobAdManager.ErrorCode.INTERNAL_ERROR, "Creative load failed.");
          }
          
          public void c(cn.domob.android.ads.a paramAnonymous2A)
          {
            a.a(a.this, DomobAdManager.ErrorCode.INTERNAL_ERROR, "Creative load timeout.");
          }
        });
        localM.a(new a.a()
        {
          public void a(cn.domob.android.ads.a paramAnonymous2A, String paramAnonymous2String)
          {
            a.n().b("MRAID WebView 拦截到 URL：" + paramAnonymous2String);
            a.a(a.this, paramAnonymous2A, paramAnonymous2String, true);
          }
        });
        localM.a(new m.a()
        {
          public void a()
          {
            a.e(a.this);
            if (a.f(a.this) == 1) {
              a.g(a.this);
            }
          }
          
          public void b() {}
        });
        localM.a(a.this);
        localM.a(new m.g()
        {
          public void a(m paramAnonymous2M)
          {
            a.e(a.this);
            if (a.f(a.this) == 1) {
              a.h(a.this);
            }
          }
        });
        localM.a(new m.f()
        {
          public void a(m paramAnonymous2M, m.l paramAnonymous2L)
          {
            a.i(a.this);
            if (a.f(a.this) == 0) {
              a.j(a.this);
            }
          }
        });
        String str = localC.k();
        if ((str != null) && (str.length() != 0))
        {
          if (str.equals("url"))
          {
            a.n().a("Get an MRAID view instance and load with URL:" + localC.j());
            localM.a(localC.j(), null);
          }
          while (!str.equals("content")) {
            return;
          }
          a.n().a(String.format("Get an MRAID view instance and load data = [%s] with base URL=[%s]", new Object[] { localC.m(), localC.l() }));
          localM.a(localC.l(), localC.m());
          return;
        }
        a.n().e("Content type is not available.");
        a.c(a.this, DomobAdManager.ErrorCode.INTERNAL_ERROR, "Content type is illegal.");
      }
    });
  }
  
  private void p()
  {
    d.a(c);
    h();
  }
  
  private boolean q()
  {
    return (!h) && (!j) && (!i);
  }
  
  private void v()
  {
    h = false;
    i = false;
    j = false;
  }
  
  public void a()
  {
    g.b("Start to load DomobMRAID adapter.");
    o();
  }
  
  public void a(int paramInt1, int paramInt2) {}
  
  public void a(String paramString, WebView paramWebView)
  {
    if (c.d().B()) {
      b("lp_url", paramString);
    }
  }
  
  public void a(String paramString1, String paramString2) {}
  
  public void a(HashMap<String, String> paramHashMap, String paramString, long paramLong) {}
  
  public void d()
  {
    if ((f != null) && ((f instanceof m))) {
      ((m)f).l();
    }
  }
  
  public void e() {}
  
  public void f()
  {
    g.a("Destroy Domob MRAID WebViews.");
    if ((f != null) && ((f instanceof cn.domob.android.ads.a)))
    {
      ((cn.domob.android.ads.a)f).destroy();
      f = null;
    }
  }
  
  public void r()
  {
    if (q())
    {
      b("load_success");
      h = true;
    }
  }
  
  public void s()
  {
    if (q())
    {
      b("load_failed");
      j = true;
    }
  }
  
  public void t()
  {
    if (q())
    {
      b("load_cancel");
      i = true;
    }
  }
  
  public void u()
  {
    l -= 1;
    g.a("BrowserClosed mOverlayCount = " + l);
    if (l == 0) {
      k();
    }
    b("close_lp");
  }
}
