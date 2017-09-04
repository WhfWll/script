package cn.domob.android.offerwall;

import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import cn.domob.android.a.a;
import cn.domob.android.a.c;

class g
{
  m a = new m(g.class.getSimpleName());
  private Context b;
  private String c;
  private int d;
  private String e;
  private String f;
  private a g;
  
  g(Context paramContext, String paramString, a paramA)
  {
    b = paramContext;
    c = paramString;
    g = paramA;
  }
  
  private void f()
  {
    a.b("Start Download url:" + c);
    a.a(c, e, f, b, new c()
    {
      public void a()
      {
        Toast.makeText(g.a(g.this), "开始下载 。。。", 0).show();
        if (g.b(g.this) != null) {
          g.b(g.this).e(g.this);
        }
      }
      
      public void a(int paramAnonymousInt, String paramAnonymousString)
      {
        if (g.b(g.this) != null)
        {
          if (paramAnonymousInt == 512) {
            g.b(g.this).g(g.this);
          }
        }
        else {
          return;
        }
        if (paramAnonymousInt == 513)
        {
          g.b(g.this).h(g.this);
          return;
        }
        g.b(g.this).d(g.this);
      }
      
      public void a(String paramAnonymousString)
      {
        if (g.b(g.this) != null) {
          g.b(g.this).c(g.this);
        }
        if (g.b(g.this) != null) {
          g.b(g.this).i(g.this);
        }
      }
      
      public void b()
      {
        if (g.b(g.this) != null) {
          g.b(g.this).f(g.this);
        }
      }
      
      public void b(String paramAnonymousString) {}
    }, null, true);
  }
  
  protected int a()
  {
    return d;
  }
  
  protected void a(int paramInt)
  {
    d = paramInt;
  }
  
  protected void a(String paramString)
  {
    e = paramString;
  }
  
  protected String b()
  {
    return e;
  }
  
  protected void b(String paramString)
  {
    f = paramString;
  }
  
  protected String c()
  {
    return f;
  }
  
  protected String d()
  {
    return c;
  }
  
  protected void e()
  {
    if (l.e(e)) {
      e = "应用";
    }
    Intent localIntent = a.a(b, c, e);
    if (localIntent != null)
    {
      if (b != null)
      {
        if (g != null) {
          g.i(this);
        }
        b.startActivity(localIntent);
      }
      return;
    }
    f();
  }
  
  static abstract interface a
  {
    public abstract void c(g paramG);
    
    public abstract void d(g paramG);
    
    public abstract void e(g paramG);
    
    public abstract void f(g paramG);
    
    public abstract void g(g paramG);
    
    public abstract void h(g paramG);
    
    public abstract void i(g paramG);
  }
}
