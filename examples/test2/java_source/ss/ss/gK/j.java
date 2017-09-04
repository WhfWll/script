package ss.ss.gK;

import gK.f;
import gK.v;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.util.Date;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import ss.aa;
import ss.aa.a;
import ss.ac;
import ss.ae;
import ss.ag;
import ss.ag.a;
import ss.ai;
import ss.ak;
import ss.ak.a;
import ss.am;
import ss.an;
import ss.h;
import ss.ss.d;
import ss.ss.pK.c;
import ss.w.a;
import ss.y;

public final class j
{
  private static final am e = new k();
  final ac a;
  public final w b;
  long c = -1L;
  public final boolean d;
  private final ak f;
  private n g;
  private boolean h;
  private final ag i;
  private ag j;
  private ak k;
  private ak l;
  private v m;
  private f n;
  private final boolean o;
  private final boolean p;
  private a q;
  private b r;
  
  public j(ac paramAc, ag paramAg, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, w paramW, s paramS, ak paramAk)
  {
    a = paramAc;
    i = paramAg;
    d = paramBoolean1;
    o = paramBoolean2;
    p = paramBoolean3;
    if (paramW != null) {}
    for (;;)
    {
      b = paramW;
      m = paramS;
      f = paramAk;
      return;
      paramW = new w(paramAc.o(), a(paramAc, paramAg));
    }
  }
  
  private String a(List<ss.p> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i2 = paramList.size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (i1 > 0) {
        localStringBuilder.append("; ");
      }
      ss.p localP = (ss.p)paramList.get(i1);
      localStringBuilder.append(localP.a()).append('=').append(localP.b());
      i1 += 1;
    }
    return localStringBuilder.toString();
  }
  
  private static ss.a a(ac paramAc, ag paramAg)
  {
    h localH = null;
    SSLSocketFactory localSSLSocketFactory;
    HostnameVerifier localHostnameVerifier;
    if (paramAg.g())
    {
      localSSLSocketFactory = paramAc.j();
      localHostnameVerifier = paramAc.k();
      localH = paramAc.l();
    }
    for (;;)
    {
      return new ss.a(paramAg.a().f(), paramAg.a().g(), paramAc.h(), paramAc.i(), localSSLSocketFactory, localHostnameVerifier, localH, paramAc.n(), paramAc.d(), paramAc.t(), paramAc.u(), paramAc.e());
      localHostnameVerifier = null;
      localSSLSocketFactory = null;
    }
  }
  
  private ak a(a paramA, ak paramAk)
    throws IOException
  {
    if (paramA == null) {}
    v localV;
    do
    {
      return paramAk;
      localV = paramA.a();
    } while (localV == null);
    paramA = new l(this, paramAk.f().c(), paramA, gK.n.a(localV));
    return paramAk.g().a(new p(paramAk.e(), gK.n.a(paramA))).a();
  }
  
  private static ss.w a(ss.w paramW1, ss.w paramW2)
    throws IOException
  {
    int i2 = 0;
    w.a localA = new w.a();
    int i3 = paramW1.a();
    int i1 = 0;
    if (i1 < i3)
    {
      String str1 = paramW1.a(i1);
      String str2 = paramW1.b(i1);
      if (("Warning".equalsIgnoreCase(str1)) && (str2.startsWith("1"))) {}
      for (;;)
      {
        i1 += 1;
        break;
        if ((!o.a(str1)) || (paramW2.a(str1) == null)) {
          localA.a(str1, str2);
        }
      }
    }
    i3 = paramW2.a();
    i1 = i2;
    if (i1 < i3)
    {
      paramW1 = paramW2.a(i1);
      if ("Content-Length".equalsIgnoreCase(paramW1)) {}
      for (;;)
      {
        i1 += 1;
        break;
        if (o.a(paramW1)) {
          localA.a(paramW1, paramW2.b(i1));
        }
      }
    }
    return localA.a();
  }
  
  public static boolean a(ak paramAk)
  {
    if (paramAk.a().b().equals("HEAD")) {}
    do
    {
      return false;
      int i1 = paramAk.b();
      if (((i1 < 100) || (i1 >= 200)) && (i1 != 204) && (i1 != 304)) {
        return true;
      }
    } while ((o.a(paramAk) == -1L) && (!"chunked".equalsIgnoreCase(paramAk.a("Transfer-Encoding"))));
    return true;
  }
  
  private static boolean a(ak paramAk1, ak paramAk2)
  {
    if (paramAk2.b() == 304) {}
    do
    {
      return true;
      paramAk1 = paramAk1.e().b("Last-Modified");
      if (paramAk1 == null) {
        break;
      }
      paramAk2 = paramAk2.e().b("Last-Modified");
    } while ((paramAk2 != null) && (paramAk2.getTime() < paramAk1.getTime()));
    return false;
  }
  
  private ag b(ag paramAg)
    throws IOException
  {
    ag.a localA = paramAg.e();
    if (paramAg.a("Host") == null) {
      localA.a("Host", ss.ss.j.a(paramAg.a(), false));
    }
    if (paramAg.a("Connection") == null) {
      localA.a("Connection", "Keep-Alive");
    }
    if (paramAg.a("Accept-Encoding") == null)
    {
      h = true;
      localA.a("Accept-Encoding", "gzip");
    }
    List localList = a.f().a(paramAg.a());
    if (!localList.isEmpty()) {
      localA.a("Cookie", a(localList));
    }
    if (paramAg.a("User-Agent") == null) {
      localA.a("User-Agent", "");
    }
    return localA.a();
  }
  
  private static ak b(ak paramAk)
  {
    ak localAk = paramAk;
    if (paramAk != null)
    {
      localAk = paramAk;
      if (paramAk.f() != null) {
        localAk = paramAk.g().a(null).a();
      }
    }
    return localAk;
  }
  
  private ak c(ak paramAk)
    throws IOException
  {
    if ((!h) || (!"gzip".equalsIgnoreCase(l.a("Content-Encoding")))) {}
    while (paramAk.f() == null) {
      return paramAk;
    }
    gK.l localL = new gK.l(paramAk.f().c());
    ss.w localW = paramAk.e().b().b("Content-Encoding").b("Content-Length").a();
    return paramAk.g().a(localW).a(new p(localW, gK.n.a(localL))).a();
  }
  
  private boolean i()
  {
    return (o) && (a(j)) && (m == null);
  }
  
  private n j()
    throws t, q, IOException
  {
    if (!j.b().equals("GET")) {}
    for (boolean bool = true;; bool = false) {
      return b.a(a.a(), a.b(), a.c(), a.r(), bool);
    }
  }
  
  private void k()
    throws IOException
  {
    ss.ss.e localE = d.b.a(a);
    if (localE == null) {}
    do
    {
      return;
      if (b.a(l, j)) {
        break;
      }
    } while (!m.a(j.b()));
    try
    {
      localE.b(j);
      return;
    }
    catch (IOException localIOException)
    {
      return;
    }
    q = localIOException.a(b(l));
  }
  
  private ak l()
    throws IOException
  {
    g.b();
    ak localAk2 = g.a().a(j).a(b.a().c()).a(o.b, Long.toString(c)).a(o.c, Long.toString(System.currentTimeMillis())).a();
    ak localAk1 = localAk2;
    if (!p) {
      localAk1 = localAk2.g().a(g.a(localAk2)).a();
    }
    if (("close".equalsIgnoreCase(localAk1.a().a("Connection"))) || ("close".equalsIgnoreCase(localAk1.a("Connection")))) {
      b.c();
    }
    return localAk1;
  }
  
  public j a(IOException paramIOException, v paramV)
  {
    if (!b.a(paramIOException, paramV)) {}
    while (!a.r()) {
      return null;
    }
    paramIOException = f();
    return new j(a, i, d, o, p, paramIOException, (s)paramV, f);
  }
  
  public void a()
    throws q, t, IOException
  {
    if (r != null) {}
    long l1;
    for (;;)
    {
      return;
      if (g != null) {
        throw new IllegalStateException();
      }
      ag localAg = b(i);
      ss.ss.e localE = d.b.a(a);
      if (localE != null) {}
      for (ak localAk = localE.a(localAg);; localAk = null)
      {
        r = new b.a(System.currentTimeMillis(), localAg, localAk).a();
        j = r.a;
        k = r.b;
        if (localE != null) {
          localE.a(r);
        }
        if ((localAk != null) && (k == null)) {
          ss.ss.j.a(localAk.f());
        }
        if ((j != null) || (k != null)) {
          break;
        }
        l = new ak.a().a(i).c(b(f)).a(ae.b).a(504).a("Unsatisfiable Request (only-if-cached)").a(e).a();
        return;
      }
      if (j == null)
      {
        l = k.g().a(i).c(b(f)).b(b(k)).a();
        l = c(l);
        return;
      }
      try
      {
        g = j();
        g.a(this);
        if (i())
        {
          l1 = o.a(localAg);
          if (!d) {
            break label392;
          }
          if (l1 > 2147483647L) {
            throw new IllegalStateException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB.");
          }
        }
      }
      finally
      {
        if (localAk != null) {
          ss.ss.j.a(localAk.f());
        }
      }
    }
    if (l1 != -1L)
    {
      g.a(j);
      m = new s((int)l1);
      return;
    }
    m = new s();
    return;
    label392:
    g.a(j);
    m = g.a(j, l1);
  }
  
  public void a(ss.w paramW)
    throws IOException
  {
    if (a.f() == ss.q.a) {}
    do
    {
      return;
      paramW = ss.p.a(i.a(), paramW);
    } while (paramW.isEmpty());
    a.f().a(i.a(), paramW);
  }
  
  boolean a(ag paramAg)
  {
    return m.c(paramAg.b());
  }
  
  public boolean a(y paramY)
  {
    y localY = i.a();
    return (localY.f().equals(paramY.f())) && (localY.g() == paramY.g()) && (localY.b().equals(paramY.b()));
  }
  
  public void b()
  {
    if (c != -1L) {
      throw new IllegalStateException();
    }
    c = System.currentTimeMillis();
  }
  
  public ak c()
  {
    if (l == null) {
      throw new IllegalStateException();
    }
    return l;
  }
  
  public ss.k d()
  {
    return b.a();
  }
  
  public void e()
    throws IOException
  {
    b.b();
  }
  
  public w f()
  {
    if (n != null)
    {
      ss.ss.j.a(n);
      if (l == null) {
        break label53;
      }
      ss.ss.j.a(l.f());
    }
    for (;;)
    {
      return b;
      if (m == null) {
        break;
      }
      ss.ss.j.a(m);
      break;
      label53:
      b.a(null);
    }
  }
  
  public void g()
    throws IOException
  {
    if (l != null) {}
    label426:
    label438:
    label448:
    do
    {
      do
      {
        return;
        if ((j == null) && (k == null)) {
          throw new IllegalStateException("call sendRequest() first!");
        }
      } while (j == null);
      if (p) {
        g.a(j);
      }
      for (Object localObject = l();; localObject = new a(0, j, b.a()).a(j))
      {
        a(((ak)localObject).e());
        if (k == null) {
          break label448;
        }
        if (!a(k, (ak)localObject)) {
          break label438;
        }
        l = k.g().a(i).c(b(f)).a(a(k.e(), ((ak)localObject).e())).b(b(k)).a(b((ak)localObject)).a();
        ((ak)localObject).f().close();
        e();
        localObject = d.b.a(a);
        ((ss.ss.e)localObject).a();
        ((ss.ss.e)localObject).a(k, b(l));
        l = c(l);
        return;
        if (o) {
          break;
        }
      }
      if ((n != null) && (n.c().b() > 0L)) {
        n.e();
      }
      if (c == -1L)
      {
        if ((o.a(j) == -1L) && ((m instanceof s)))
        {
          long l1 = ((s)m).b();
          j = j.e().a("Content-Length", Long.toString(l1)).a();
        }
        g.a(j);
      }
      if (m != null)
      {
        if (n == null) {
          break label426;
        }
        n.close();
      }
      for (;;)
      {
        if ((m instanceof s)) {
          g.a((s)m);
        }
        localObject = l();
        break;
        m.close();
      }
      ss.ss.j.a(k.f());
      l = ((ak)localObject).g().a(i).c(b(f)).b(b(k)).a(b((ak)localObject)).a();
    } while (!a(l));
    k();
    l = c(a(q, l));
  }
  
  public ag h()
    throws IOException
  {
    if (l == null) {
      throw new IllegalStateException();
    }
    Object localObject1 = b.a();
    int i1;
    Object localObject2;
    if (localObject1 != null)
    {
      localObject1 = ((ss.k)localObject1).a();
      i1 = l.b();
      localObject2 = i.b();
      switch (i1)
      {
      }
    }
    for (;;)
    {
      return null;
      localObject1 = null;
      break;
      if (localObject1 != null) {}
      for (localObject2 = ((an)localObject1).b(); ((Proxy)localObject2).type() != Proxy.Type.HTTP; localObject2 = a.d()) {
        throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
      }
      return a.m().a((an)localObject1, l);
      if (((((String)localObject2).equals("GET")) || (((String)localObject2).equals("HEAD"))) && (a.q()))
      {
        localObject1 = l.a("Location");
        if (localObject1 != null)
        {
          localObject1 = i.a().c((String)localObject1);
          if ((localObject1 != null) && ((((y)localObject1).b().equals(i.a().b())) || (a.p())))
          {
            ag.a localA = i.e();
            if (m.c((String)localObject2))
            {
              if (!m.d((String)localObject2)) {
                break label376;
              }
              localA.a("GET", null);
            }
            for (;;)
            {
              localA.b("Transfer-Encoding");
              localA.b("Content-Length");
              localA.b("Content-Type");
              if (!a((y)localObject1)) {
                localA.b("Authorization");
              }
              return localA.a((y)localObject1).a();
              label376:
              localA.a((String)localObject2, null);
            }
            if ((m == null) || ((m instanceof s))) {}
            for (i1 = 1; (!o) || (i1 != 0); i1 = 0) {
              return i;
            }
          }
        }
      }
    }
  }
  
  class a
    implements aa.a
  {
    private final int b;
    private final ag c;
    private final ss.k d;
    private int e;
    
    a(int paramInt, ag paramAg, ss.k paramK)
    {
      b = paramInt;
      c = paramAg;
      d = paramK;
    }
    
    public ag a()
    {
      return c;
    }
    
    public ak a(ag paramAg)
      throws IOException
    {
      e += 1;
      Object localObject1;
      Object localObject2;
      if (b > 0)
      {
        localObject1 = (aa)a.w().get(b - 1);
        localObject2 = b().a().a();
        if ((!paramAg.a().f().equals(((ss.a)localObject2).a().f())) || (paramAg.a().g() != ((ss.a)localObject2).a().g())) {
          throw new IllegalStateException("network interceptor " + localObject1 + " must retain the same host and port");
        }
        if (e > 1) {
          throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
        }
      }
      if (b < a.w().size())
      {
        localObject1 = new a(j.this, b + 1, paramAg, d);
        localObject2 = (aa)a.w().get(b);
        paramAg = ((aa)localObject2).a((aa.a)localObject1);
        if (e != 1) {
          throw new IllegalStateException("network interceptor " + localObject2 + " must call proceed() exactly once");
        }
        if (paramAg == null) {
          throw new NullPointerException("network interceptor " + localObject2 + " returned null");
        }
      }
      int i;
      do
      {
        do
        {
          return paramAg;
          j.a(j.this).a(paramAg);
          j.a(j.this, paramAg);
          if ((a(paramAg)) && (paramAg.d() != null))
          {
            localObject1 = gK.n.a(j.a(j.this).a(paramAg, paramAg.d().b()));
            paramAg.d().a((f)localObject1);
            ((f)localObject1).close();
          }
          localObject1 = j.b(j.this);
          i = ((ak)localObject1).b();
          if (i == 204) {
            break;
          }
          paramAg = (ag)localObject1;
        } while (i != 205);
        paramAg = (ag)localObject1;
      } while (((ak)localObject1).f().b() <= 0L);
      throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + ((ak)localObject1).f().b());
    }
    
    public ss.k b()
    {
      return d;
    }
  }
}
