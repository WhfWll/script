package cn.dbox.ui.b;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import android.widget.LinearLayout.LayoutParams;
import cn.dbox.core.a.c.a;
import cn.dbox.core.a.c.e;
import cn.dbox.core.b.b;
import cn.dbox.core.h.f;
import java.net.URI;

public class g
  extends b
{
  private static cn.dbox.core.h.d A = new cn.dbox.core.h.d(g.class.getSimpleName());
  private boolean B = false;
  private boolean C = false;
  private boolean D = false;
  private boolean E = false;
  View a;
  LinearLayout.LayoutParams x;
  cn.dbox.core.a.c y;
  a z;
  
  public g(Context paramContext, final cn.dbox.core.bean.d paramD, cn.dbox.core.b paramB, boolean paramBoolean)
  {
    super(paramContext, paramD, paramB, paramBoolean);
    g();
    E = paramBoolean;
    if (d != null) {
      addView(d);
    }
    if (h != null) {
      addView(h);
    }
    x = new LinearLayout.LayoutParams(-1, -1);
    a = LayoutInflater.from(f).inflate(cn.dbox.ui.e.d.a(f, "dbox_error"), null);
    a.findViewById(cn.dbox.ui.e.c.a(paramContext, "error_image")).setBackgroundResource(cn.dbox.ui.e.b.a(paramContext, "dbox_error_landing"));
    a.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (a != null) {
          removeView(a);
        }
        y.a(paramD.g());
        addView(y);
      }
    });
    if ((h == null) && ((paramD.g() == null) || ("".equals(paramD.g()))))
    {
      if (i != null) {
        addView(i);
      }
      return;
    }
    a(paramContext, paramD, paramB);
    addView(y);
  }
  
  private void g()
  {
    B = false;
    C = false;
    D = false;
  }
  
  private boolean h()
  {
    return (!B) && (!D) && (!C);
  }
  
  public void a(Context paramContext, cn.dbox.core.bean.d paramD, cn.dbox.core.b paramB)
  {
    y = new cn.dbox.core.a.c(paramContext, paramD.g(), paramD.g(), new c.a()
    {
      public void a(cn.dbox.core.bean.d paramAnonymousD)
      {
        if (g.a(g.this))
        {
          j.a(g, b.b.b);
          g.a(g.this, true);
        }
      }
      
      public void a(String paramAnonymousString, WebView paramAnonymousWebView, cn.dbox.core.bean.d paramAnonymousD)
      {
        try
        {
          paramAnonymousD = URI.create(paramAnonymousString);
          paramAnonymousWebView = paramAnonymousD.getScheme();
          paramAnonymousD = paramAnonymousD.getHost();
          if (f.a(paramAnonymousWebView)) {
            return;
          }
          if (((!paramAnonymousWebView.equals("domob")) || (f.a(paramAnonymousD)) || (!paramAnonymousD.equals("inapp"))) && (!paramAnonymousWebView.startsWith("http")))
          {
            j.d(paramAnonymousString);
            return;
          }
        }
        catch (Exception paramAnonymousString)
        {
          g.f().e("Error while parsing landingpage URL.");
          g.f().a(paramAnonymousString);
        }
      }
      
      public void a(String paramAnonymousString1, String paramAnonymousString2, cn.dbox.core.bean.d paramAnonymousD)
      {
        try
        {
          paramAnonymousString1 = new Intent("android.intent.action.VIEW", Uri.parse(paramAnonymousString1));
          f.startActivity(paramAnonymousString1);
          return;
        }
        catch (Exception paramAnonymousString1)
        {
          g.f().a(paramAnonymousString1);
        }
      }
      
      public void b(cn.dbox.core.bean.d paramAnonymousD)
      {
        if (g.a(g.this))
        {
          j.a(g, b.b.b);
          g.b(g.this, true);
        }
        if (y != null) {
          removeView(y);
        }
        addView(a, x);
      }
      
      public void c(cn.dbox.core.bean.d paramAnonymousD)
      {
        if (g.a(g.this))
        {
          j.a(g, b.b.d);
          g.c(g.this, true);
        }
      }
      
      public void d(cn.dbox.core.bean.d paramAnonymousD)
      {
        j.a(g, b.b.e);
      }
    }, paramD, E);
    y.a(new c.e()
    {
      public void a()
      {
        if (z != null) {
          z.a();
        }
      }
      
      public void a(String paramAnonymousString) {}
      
      public void b() {}
    });
  }
  
  public void a(a paramA)
  {
    z = paramA;
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}
