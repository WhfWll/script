package ss.ss.gK;

import java.util.Date;
import java.util.concurrent.TimeUnit;
import ss.ag;
import ss.ag.a;
import ss.ak;
import ss.ak.a;
import ss.e;
import ss.w;
import ss.y;

public final class b
{
  public final ag a;
  public final ak b;
  
  private b(ag paramAg, ak paramAk)
  {
    a = paramAg;
    b = paramAk;
  }
  
  public static boolean a(ak paramAk, ag paramAg)
  {
    switch (paramAk.b())
    {
    }
    do
    {
      return false;
    } while (((paramAk.a("Expires") == null) && (paramAk.h().c() == -1) && (!paramAk.h().e()) && (!paramAk.h().d())) || (paramAk.h().b()) || (paramAg.f().b()));
    return true;
  }
  
  public static class a
  {
    final long a;
    final ag b;
    final ak c;
    private Date d;
    private String e;
    private Date f;
    private String g;
    private Date h;
    private long i;
    private long j;
    private String k;
    private int l = -1;
    
    public a(long paramLong, ag paramAg, ak paramAk)
    {
      a = paramLong;
      b = paramAg;
      c = paramAk;
      if (paramAk != null)
      {
        paramAg = paramAk.e();
        int m = 0;
        int n = paramAg.a();
        if (m < n)
        {
          paramAk = paramAg.a(m);
          String str = paramAg.b(m);
          if ("Date".equalsIgnoreCase(paramAk))
          {
            d = h.a(str);
            e = str;
          }
          for (;;)
          {
            m += 1;
            break;
            if ("Expires".equalsIgnoreCase(paramAk))
            {
              h = h.a(str);
            }
            else if ("Last-Modified".equalsIgnoreCase(paramAk))
            {
              f = h.a(str);
              g = str;
            }
            else if ("ETag".equalsIgnoreCase(paramAk))
            {
              k = str;
            }
            else if ("Age".equalsIgnoreCase(paramAk))
            {
              l = d.b(str, -1);
            }
            else if (o.b.equalsIgnoreCase(paramAk))
            {
              i = Long.parseLong(str);
            }
            else if (o.c.equalsIgnoreCase(paramAk))
            {
              j = Long.parseLong(str);
            }
          }
        }
      }
    }
    
    private static boolean a(ag paramAg)
    {
      return (paramAg.a("If-Modified-Since") != null) || (paramAg.a("If-None-Match") != null);
    }
    
    private b b()
    {
      long l4 = 0L;
      if (c == null) {
        return new b(b, null, null);
      }
      if ((b.g()) && (c.d() == null)) {
        return new b(b, null, null);
      }
      if (!b.a(c, b)) {
        return new b(b, null, null);
      }
      Object localObject = b.f();
      if ((((e)localObject).a()) || (a(b))) {
        return new b(b, null, null);
      }
      long l5 = d();
      long l2 = c();
      long l1 = l2;
      if (((e)localObject).c() != -1) {
        l1 = Math.min(l2, TimeUnit.SECONDS.toMillis(((e)localObject).c()));
      }
      if (((e)localObject).h() != -1) {}
      for (l2 = TimeUnit.SECONDS.toMillis(((e)localObject).h());; l2 = 0L)
      {
        e localE = c.h();
        long l3 = l4;
        if (!localE.f())
        {
          l3 = l4;
          if (((e)localObject).g() != -1) {
            l3 = TimeUnit.SECONDS.toMillis(((e)localObject).g());
          }
        }
        if ((!localE.a()) && (l5 + l2 < l3 + l1))
        {
          localObject = c.g();
          if (l2 + l5 >= l1) {
            ((ak.a)localObject).b("Warning", "110 HttpURLConnection \"Response is stale\"");
          }
          if ((l5 > 86400000L) && (e())) {
            ((ak.a)localObject).b("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
          }
          return new b(null, ((ak.a)localObject).a(), null);
        }
        localObject = b.e();
        if (k != null) {
          ((ag.a)localObject).a("If-None-Match", k);
        }
        for (;;)
        {
          localObject = ((ag.a)localObject).a();
          if (!a((ag)localObject)) {
            break;
          }
          return new b((ag)localObject, c, null);
          if (f != null) {
            ((ag.a)localObject).a("If-Modified-Since", g);
          } else if (d != null) {
            ((ag.a)localObject).a("If-Modified-Since", e);
          }
        }
        return new b((ag)localObject, null, null);
      }
    }
    
    private long c()
    {
      long l2 = 0L;
      e localE = c.h();
      if (localE.c() != -1) {
        l1 = TimeUnit.SECONDS.toMillis(localE.c());
      }
      label83:
      do
      {
        do
        {
          return l1;
          if (h != null)
          {
            if (d != null)
            {
              l1 = d.getTime();
              l1 = h.getTime() - l1;
              if (l1 <= 0L) {
                break label83;
              }
            }
            for (;;)
            {
              return l1;
              l1 = j;
              break;
              l1 = 0L;
            }
          }
          l1 = l2;
        } while (f == null);
        l1 = l2;
      } while (c.a().a().k() != null);
      if (d != null) {}
      for (long l1 = d.getTime();; l1 = i)
      {
        long l3 = l1 - f.getTime();
        l1 = l2;
        if (l3 <= 0L) {
          break;
        }
        return l3 / 10L;
      }
    }
    
    private long d()
    {
      long l1 = 0L;
      if (d != null) {
        l1 = Math.max(0L, j - d.getTime());
      }
      long l2 = l1;
      if (l != -1) {
        l2 = Math.max(l1, TimeUnit.SECONDS.toMillis(l));
      }
      return l2 + (j - i) + (a - j);
    }
    
    private boolean e()
    {
      return (c.h().c() == -1) && (h == null);
    }
    
    public b a()
    {
      b localB2 = b();
      b localB1 = localB2;
      if (a != null)
      {
        localB1 = localB2;
        if (b.f().i()) {
          localB1 = new b(null, null, null);
        }
      }
      return localB1;
    }
  }
}
