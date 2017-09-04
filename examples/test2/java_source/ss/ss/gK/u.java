package ss.ss.gK;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import ss.a;
import ss.an;
import ss.ss.i;
import ss.t;
import ss.y;

public final class u
{
  private final a a;
  private final i b;
  private Proxy c;
  private InetSocketAddress d;
  private List<Proxy> e = Collections.emptyList();
  private int f;
  private List<InetSocketAddress> g = Collections.emptyList();
  private int h;
  private final List<an> i = new ArrayList();
  
  public u(a paramA, i paramI)
  {
    a = paramA;
    b = paramI;
    a(paramA.a(), paramA.h());
  }
  
  static String a(InetSocketAddress paramInetSocketAddress)
  {
    InetAddress localInetAddress = paramInetSocketAddress.getAddress();
    if (localInetAddress == null) {
      return paramInetSocketAddress.getHostName();
    }
    return localInetAddress.getHostAddress();
  }
  
  private void a(Proxy paramProxy)
    throws IOException
  {
    g = new ArrayList();
    Object localObject;
    if ((paramProxy.type() == Proxy.Type.DIRECT) || (paramProxy.type() == Proxy.Type.SOCKS)) {
      localObject = a.a().f();
    }
    InetSocketAddress localInetSocketAddress;
    for (int j = a.a().g(); (j < 1) || (j > 65535); j = localInetSocketAddress.getPort())
    {
      throw new SocketException("No route to " + (String)localObject + ":" + j + "; port is out of range");
      localObject = paramProxy.address();
      if (!(localObject instanceof InetSocketAddress)) {
        throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + localObject.getClass());
      }
      localInetSocketAddress = (InetSocketAddress)localObject;
      localObject = a(localInetSocketAddress);
    }
    if (paramProxy.type() == Proxy.Type.SOCKS) {
      g.add(InetSocketAddress.createUnresolved((String)localObject, j));
    }
    for (;;)
    {
      h = 0;
      return;
      paramProxy = a.b().a((String)localObject);
      int m = paramProxy.size();
      int k = 0;
      while (k < m)
      {
        localObject = (InetAddress)paramProxy.get(k);
        g.add(new InetSocketAddress((InetAddress)localObject, j));
        k += 1;
      }
    }
  }
  
  private void a(y paramY, Proxy paramProxy)
  {
    if (paramProxy != null) {
      e = Collections.singletonList(paramProxy);
    }
    for (;;)
    {
      f = 0;
      return;
      e = new ArrayList();
      paramY = a.g().select(paramY.a());
      if (paramY != null) {
        e.addAll(paramY);
      }
      e.removeAll(Collections.singleton(Proxy.NO_PROXY));
      e.add(Proxy.NO_PROXY);
    }
  }
  
  private boolean c()
  {
    return f < e.size();
  }
  
  private Proxy d()
    throws IOException
  {
    if (!c()) {
      throw new SocketException("No route to " + a.a().f() + "; exhausted proxy configurations: " + e);
    }
    Object localObject = e;
    int j = f;
    f = (j + 1);
    localObject = (Proxy)((List)localObject).get(j);
    a((Proxy)localObject);
    return localObject;
  }
  
  private boolean e()
  {
    return h < g.size();
  }
  
  private InetSocketAddress f()
    throws IOException
  {
    if (!e()) {
      throw new SocketException("No route to " + a.a().f() + "; exhausted inet socket addresses: " + g);
    }
    List localList = g;
    int j = h;
    h = (j + 1);
    return (InetSocketAddress)localList.get(j);
  }
  
  private boolean g()
  {
    return !i.isEmpty();
  }
  
  private an h()
  {
    return (an)i.remove(0);
  }
  
  public void a(an paramAn, IOException paramIOException)
  {
    if ((paramAn.b().type() != Proxy.Type.DIRECT) && (a.g() != null)) {
      a.g().connectFailed(a.a().a(), paramAn.b().address(), paramIOException);
    }
    b.a(paramAn);
  }
  
  public boolean a()
  {
    return (e()) || (c()) || (g());
  }
  
  public an b()
    throws IOException
  {
    Object localObject;
    if (!e()) {
      if (!c())
      {
        if (!g()) {
          throw new NoSuchElementException();
        }
        localObject = h();
      }
    }
    an localAn;
    do
    {
      return localObject;
      c = d();
      d = f();
      localAn = new an(a, c, d);
      localObject = localAn;
    } while (!b.c(localAn));
    i.add(localAn);
    return b();
  }
}
