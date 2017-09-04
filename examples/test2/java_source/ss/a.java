package ss;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import ss.ss.j;

public final class a
{
  final y a;
  final t b;
  final SocketFactory c;
  final b d;
  final List<ae> e;
  final List<n> f;
  final ProxySelector g;
  final Proxy h;
  final SSLSocketFactory i;
  final HostnameVerifier j;
  final h k;
  
  public a(String paramString, int paramInt, t paramT, SocketFactory paramSocketFactory, SSLSocketFactory paramSSLSocketFactory, HostnameVerifier paramHostnameVerifier, h paramH, b paramB, Proxy paramProxy, List<ae> paramList, List<n> paramList1, ProxySelector paramProxySelector)
  {
    y.a localA = new y.a();
    if (paramSSLSocketFactory != null) {}
    for (String str = "https";; str = "http")
    {
      a = localA.a(str).b(paramString).a(paramInt).c();
      if (paramT != null) {
        break;
      }
      throw new NullPointerException("dns == null");
    }
    b = paramT;
    if (paramSocketFactory == null) {
      throw new NullPointerException("socketFactory == null");
    }
    c = paramSocketFactory;
    if (paramB == null) {
      throw new NullPointerException("proxyAuthenticator == null");
    }
    d = paramB;
    if (paramList == null) {
      throw new NullPointerException("protocols == null");
    }
    e = j.a(paramList);
    if (paramList1 == null) {
      throw new NullPointerException("connectionSpecs == null");
    }
    f = j.a(paramList1);
    if (paramProxySelector == null) {
      throw new NullPointerException("proxySelector == null");
    }
    g = paramProxySelector;
    h = paramProxy;
    i = paramSSLSocketFactory;
    j = paramHostnameVerifier;
    k = paramH;
  }
  
  public y a()
  {
    return a;
  }
  
  public t b()
  {
    return b;
  }
  
  public SocketFactory c()
  {
    return c;
  }
  
  public b d()
  {
    return d;
  }
  
  public List<ae> e()
  {
    return e;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof a))
    {
      paramObject = (a)paramObject;
      bool1 = bool2;
      if (a.equals(a))
      {
        bool1 = bool2;
        if (b.equals(b))
        {
          bool1 = bool2;
          if (d.equals(d))
          {
            bool1 = bool2;
            if (e.equals(e))
            {
              bool1 = bool2;
              if (f.equals(f))
              {
                bool1 = bool2;
                if (g.equals(g))
                {
                  bool1 = bool2;
                  if (j.a(h, h))
                  {
                    bool1 = bool2;
                    if (j.a(i, i))
                    {
                      bool1 = bool2;
                      if (j.a(j, j))
                      {
                        bool1 = bool2;
                        if (j.a(k, k)) {
                          bool1 = true;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public List<n> f()
  {
    return f;
  }
  
  public ProxySelector g()
  {
    return g;
  }
  
  public Proxy h()
  {
    return h;
  }
  
  public int hashCode()
  {
    int i2 = 0;
    int i3 = a.hashCode();
    int i4 = b.hashCode();
    int i5 = d.hashCode();
    int i6 = e.hashCode();
    int i7 = f.hashCode();
    int i8 = g.hashCode();
    int m;
    int n;
    if (h != null)
    {
      m = h.hashCode();
      if (i == null) {
        break label185;
      }
      n = i.hashCode();
      label91:
      if (j == null) {
        break label190;
      }
    }
    label185:
    label190:
    for (int i1 = j.hashCode();; i1 = 0)
    {
      if (k != null) {
        i2 = k.hashCode();
      }
      return (i1 + (n + (m + ((((((i3 + 527) * 31 + i4) * 31 + i5) * 31 + i6) * 31 + i7) * 31 + i8) * 31) * 31) * 31) * 31 + i2;
      m = 0;
      break;
      n = 0;
      break label91;
    }
  }
  
  public SSLSocketFactory i()
  {
    return i;
  }
  
  public HostnameVerifier j()
  {
    return j;
  }
  
  public h k()
  {
    return k;
  }
}
