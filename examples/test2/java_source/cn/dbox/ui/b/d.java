package cn.dbox.ui.b;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import cn.dbox.core.a.c;
import cn.dbox.core.a.c.c;
import cn.dbox.core.a.c.e;
import cn.dbox.core.b;
import cn.dbox.core.b.b;
import cn.dbox.core.h.f;
import java.net.URI;

public class d
  extends LinearLayout
{
  private static cn.dbox.core.h.d g = new cn.dbox.core.h.d(d.class.getSimpleName());
  LinearLayout.LayoutParams a;
  c b;
  String c;
  final String d = "http://srp.12306.moxz.net/landing/";
  public b e;
  a f;
  private boolean h = false;
  private boolean i = false;
  private boolean j = false;
  private Context k;
  
  public d(Context paramContext, String paramString, b paramB)
  {
    super(paramContext);
    c = paramString;
    k = paramContext;
    e = paramB;
    b();
    a = new LinearLayout.LayoutParams(-1, -1);
    a(paramContext, paramString, paramB);
  }
  
  private void b()
  {
    h = false;
    i = false;
    j = false;
  }
  
  private boolean c()
  {
    return (!h) && (!j) && (!i);
  }
  
  public void a(Context paramContext, String paramString, b paramB)
  {
    b = new c(paramContext, paramString, paramString, new c.c()
    {
      public void a(String paramAnonymousString)
      {
        if (d.a(d.this))
        {
          e.a(c, b.b.b, "http://srp.12306.moxz.net/landing/");
          d.a(d.this, true);
        }
      }
      
      public void a(String paramAnonymousString1, WebView paramAnonymousWebView, String paramAnonymousString2)
      {
        try
        {
          paramAnonymousString2 = URI.create(paramAnonymousString1);
          paramAnonymousWebView = paramAnonymousString2.getScheme();
          paramAnonymousString2 = paramAnonymousString2.getHost();
          if (f.a(paramAnonymousWebView)) {
            return;
          }
          if (((!paramAnonymousWebView.equals("domob")) || (f.a(paramAnonymousString2)) || (!paramAnonymousString2.equals("inapp"))) && (!paramAnonymousWebView.startsWith("http")))
          {
            e.d(paramAnonymousString1);
            return;
          }
        }
        catch (Exception paramAnonymousString1)
        {
          d.a().e("Error while parsing landingpage URL.");
          d.a().a(paramAnonymousString1);
        }
      }
      
      public void a(String paramAnonymousString1, String paramAnonymousString2, String paramAnonymousString3)
      {
        try
        {
          paramAnonymousString1 = new Intent("android.intent.action.VIEW", Uri.parse(paramAnonymousString1));
          d.b(d.this).startActivity(paramAnonymousString1);
          return;
        }
        catch (Exception paramAnonymousString1)
        {
          d.a().a(paramAnonymousString1);
        }
      }
      
      public void b(String paramAnonymousString)
      {
        if (d.a(d.this))
        {
          e.a(c, b.b.b, "http://srp.12306.moxz.net/landing/");
          d.b(d.this, true);
        }
      }
      
      public void c(String paramAnonymousString)
      {
        if (d.a(d.this))
        {
          e.a(c, b.b.d, "http://srp.12306.moxz.net/landing/");
          d.c(d.this, true);
        }
      }
      
      public void d(String paramAnonymousString)
      {
        e.a(c, b.b.e, "http://srp.12306.moxz.net/landing/");
      }
    }, paramString, true);
    b.a(new c.e()
    {
      public void a()
      {
        if (f != null) {
          f.a();
        }
        e.a(c, b.b.e, "http://srp.12306.moxz.net/landing/");
      }
      
      public void a(String paramAnonymousString) {}
      
      public void b() {}
    });
    b.a(paramString);
    addView(b, a);
  }
  
  public void a(a paramA)
  {
    f = paramA;
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}
