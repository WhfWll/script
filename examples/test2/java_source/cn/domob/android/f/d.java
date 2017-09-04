package cn.domob.android.f;

public class d
  implements Runnable
{
  private static String b;
  private static String c;
  private static final String[] h = { "domob.cn/a/", "domob.org/a/", "duomeng.org/a/", "duomeng.net/a/", "duomeng.cn/a/", "domob.com.cn/a/" };
  protected String a;
  private final b d;
  private final g e;
  private final f f;
  private final boolean g;
  
  public d(e paramE)
  {
    b localB = new b(paramE.a());
    localB.a(paramE.f());
    localB.c(paramE.g());
    localB.a(paramE.j());
    localB.d(paramE.i());
    d = localB;
    e = paramE.d();
    a = paramE.b();
    f = paramE.c();
    g = paramE.h();
  }
  
  public static void a(String paramString)
  {
    b = paramString;
  }
  
  private void e()
  {
    d.a(new b.b()
    {
      public String a()
      {
        return d.b();
      }
      
      public void a(String paramAnonymousString)
      {
        d.b(paramAnonymousString);
      }
      
      public String[] b()
      {
        return d.c();
      }
      
      public String c()
      {
        return d.d();
      }
    });
  }
  
  public h a()
  {
    if (g)
    {
      if (cn.domob.android.i.h.e(b))
      {
        c = a;
        b = a;
      }
      d.b(b);
      if (f == null) {
        break label179;
      }
      d.e(f.b());
    }
    for (;;)
    {
      if (g)
      {
        d.a(true);
        e();
      }
      d.h();
      h localH = new h();
      localH.a(d.d());
      localH.a(a);
      localH.a(d.f());
      localH.b(d.a());
      localH.c(d.e());
      if (e != null) {
        e.b(localH);
      }
      return localH;
      d.b(a);
      break;
      label179:
      d.e(null);
    }
  }
  
  public void run()
  {
    a();
  }
}
