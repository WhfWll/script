package ss;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;

public final class an
{
  final a a;
  final Proxy b;
  final InetSocketAddress c;
  
  public an(a paramA, Proxy paramProxy, InetSocketAddress paramInetSocketAddress)
  {
    if (paramA == null) {
      throw new NullPointerException("address == null");
    }
    if (paramProxy == null) {
      throw new NullPointerException("proxy == null");
    }
    if (paramInetSocketAddress == null) {
      throw new NullPointerException("inetSocketAddress == null");
    }
    a = paramA;
    b = paramProxy;
    c = paramInetSocketAddress;
  }
  
  public a a()
  {
    return a;
  }
  
  public Proxy b()
  {
    return b;
  }
  
  public InetSocketAddress c()
  {
    return c;
  }
  
  public boolean d()
  {
    return (a.i != null) && (b.type() == Proxy.Type.HTTP);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof an))
    {
      paramObject = (an)paramObject;
      bool1 = bool2;
      if (a.equals(a))
      {
        bool1 = bool2;
        if (b.equals(b))
        {
          bool1 = bool2;
          if (c.equals(c)) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return ((a.hashCode() + 527) * 31 + b.hashCode()) * 31 + c.hashCode();
  }
}
