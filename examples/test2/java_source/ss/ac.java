package ss;

import java.net.Proxy;
import java.net.ProxySelector;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import ss.ss.e;
import ss.ss.gq.f;
import ss.ss.j;

public class ac
  implements Cloneable
{
  private static final List<n> A;
  private static final List<ae> z = j.a(new ae[] { ae.d, ae.c, ae.b });
  final s a;
  final Proxy b;
  final List<ae> c;
  final List<n> d;
  final List<aa> e;
  final List<aa> f;
  final ProxySelector g;
  final q h;
  final d i;
  final e j;
  final SocketFactory k;
  final SSLSocketFactory l;
  final f m;
  final HostnameVerifier n;
  final h o;
  final b p;
  final b q;
  final l r;
  final t s;
  final boolean t;
  final boolean u;
  final boolean v;
  final int w;
  final int x;
  final int y;
  
  static
  {
    A = j.a(new n[] { n.a, n.b, n.c });
    ss.ss.d.b = new ad();
  }
  
  public ac()
  {
    this(new a());
  }
  
  private ac(a paramA)
  {
    a = a;
    b = b;
    c = c;
    d = d;
    e = j.a(e);
    f = j.a(f);
    g = g;
    h = h;
    i = i;
    j = j;
    k = k;
    Object localObject = d.iterator();
    int i1 = 0;
    if (((Iterator)localObject).hasNext())
    {
      n localN = (n)((Iterator)localObject).next();
      if ((i1 != 0) || (localN.a())) {}
      for (i1 = 1;; i1 = 0) {
        break;
      }
    }
    if ((l != null) || (i1 == 0)) {
      l = l;
    }
    for (;;)
    {
      if ((l == null) || (m != null)) {
        break label398;
      }
      localObject = ss.ss.h.a().a(l);
      if (localObject == null)
      {
        throw new IllegalStateException("Unable to extract the trust manager on " + ss.ss.h.a() + ", sslSocketFactory is " + l.getClass());
        try
        {
          localObject = SSLContext.getInstance("TLS");
          ((SSLContext)localObject).init(null, null, null);
          l = ((SSLContext)localObject).getSocketFactory();
        }
        catch (GeneralSecurityException paramA)
        {
          throw new AssertionError();
        }
      }
    }
    m = ss.ss.h.a().a((X509TrustManager)localObject);
    for (o = o.a().a(m).a();; o = o)
    {
      n = n;
      p = p;
      q = q;
      r = r;
      s = s;
      t = t;
      u = u;
      v = v;
      w = w;
      x = x;
      y = y;
      return;
      label398:
      m = m;
    }
  }
  
  public int a()
  {
    return w;
  }
  
  public g a(ag paramAg)
  {
    return new af(this, paramAg);
  }
  
  public int b()
  {
    return x;
  }
  
  public int c()
  {
    return y;
  }
  
  public Proxy d()
  {
    return b;
  }
  
  public ProxySelector e()
  {
    return g;
  }
  
  public q f()
  {
    return h;
  }
  
  e g()
  {
    if (i != null) {
      return i.a;
    }
    return j;
  }
  
  public t h()
  {
    return s;
  }
  
  public SocketFactory i()
  {
    return k;
  }
  
  public SSLSocketFactory j()
  {
    return l;
  }
  
  public HostnameVerifier k()
  {
    return n;
  }
  
  public h l()
  {
    return o;
  }
  
  public b m()
  {
    return q;
  }
  
  public b n()
  {
    return p;
  }
  
  public l o()
  {
    return r;
  }
  
  public boolean p()
  {
    return t;
  }
  
  public boolean q()
  {
    return u;
  }
  
  public boolean r()
  {
    return v;
  }
  
  public s s()
  {
    return a;
  }
  
  public List<ae> t()
  {
    return c;
  }
  
  public List<n> u()
  {
    return d;
  }
  
  public List<aa> v()
  {
    return e;
  }
  
  public List<aa> w()
  {
    return f;
  }
  
  public static final class a
  {
    s a = new s();
    Proxy b;
    List<ae> c = ac.x();
    List<n> d = ac.y();
    final List<aa> e = new ArrayList();
    final List<aa> f = new ArrayList();
    ProxySelector g = ProxySelector.getDefault();
    q h = q.a;
    d i;
    e j;
    SocketFactory k = SocketFactory.getDefault();
    SSLSocketFactory l;
    f m;
    HostnameVerifier n = ss.ss.gq.d.a;
    h o = h.a;
    b p = b.a;
    b q = b.a;
    l r = new l();
    t s = t.a;
    boolean t = true;
    boolean u = true;
    boolean v = true;
    int w = 10000;
    int x = 10000;
    int y = 10000;
    
    public a() {}
    
    public a a(long paramLong, TimeUnit paramTimeUnit)
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("timeout < 0");
      }
      if (paramTimeUnit == null) {
        throw new NullPointerException("unit == null");
      }
      long l1 = paramTimeUnit.toMillis(paramLong);
      if (l1 > 2147483647L) {
        throw new IllegalArgumentException("Timeout too large.");
      }
      if ((l1 == 0L) && (paramLong > 0L)) {
        throw new IllegalArgumentException("Timeout too small.");
      }
      w = ((int)l1);
      return this;
    }
    
    public a a(aa paramAa)
    {
      f.add(paramAa);
      return this;
    }
    
    public ac a()
    {
      return new ac(this, null);
    }
    
    public a b(long paramLong, TimeUnit paramTimeUnit)
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("timeout < 0");
      }
      if (paramTimeUnit == null) {
        throw new NullPointerException("unit == null");
      }
      long l1 = paramTimeUnit.toMillis(paramLong);
      if (l1 > 2147483647L) {
        throw new IllegalArgumentException("Timeout too large.");
      }
      if ((l1 == 0L) && (paramLong > 0L)) {
        throw new IllegalArgumentException("Timeout too small.");
      }
      x = ((int)l1);
      return this;
    }
    
    public a c(long paramLong, TimeUnit paramTimeUnit)
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("timeout < 0");
      }
      if (paramTimeUnit == null) {
        throw new NullPointerException("unit == null");
      }
      long l1 = paramTimeUnit.toMillis(paramLong);
      if (l1 > 2147483647L) {
        throw new IllegalArgumentException("Timeout too large.");
      }
      if ((l1 == 0L) && (paramLong > 0L)) {
        throw new IllegalArgumentException("Timeout too small.");
      }
      y = ((int)l1);
      return this;
    }
  }
}
