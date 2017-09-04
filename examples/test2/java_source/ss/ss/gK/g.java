package ss.ss.gK;

import gK.h;
import gK.x;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import ss.ac;
import ss.ae;
import ss.ag;
import ss.ak;
import ss.ak.a;
import ss.am;
import ss.ss.ss.d;
import ss.w.a;
import ss.y;

public final class g
  implements n
{
  private static final h a = h.a("connection");
  private static final h b = h.a("host");
  private static final h c = h.a("keep-alive");
  private static final h d = h.a("proxy-connection");
  private static final h e = h.a("transfer-encoding");
  private static final h f = h.a("te");
  private static final h g = h.a("encoding");
  private static final h h = h.a("upgrade");
  private static final List<h> i = ss.ss.j.a(new h[] { a, b, c, d, e, ss.ss.ss.r.b, ss.ss.ss.r.c, ss.ss.ss.r.d, ss.ss.ss.r.e, ss.ss.ss.r.f, ss.ss.ss.r.g });
  private static final List<h> j = ss.ss.j.a(new h[] { a, b, c, d, e });
  private static final List<h> k = ss.ss.j.a(new h[] { a, b, c, d, f, e, g, h, ss.ss.ss.r.b, ss.ss.ss.r.c, ss.ss.ss.r.d, ss.ss.ss.r.e, ss.ss.ss.r.f, ss.ss.ss.r.g });
  private static final List<h> l = ss.ss.j.a(new h[] { a, b, c, d, f, e, g, h });
  private final w m;
  private final d n;
  private j o;
  private ss.ss.ss.p p;
  
  public g(w paramW, d paramD)
  {
    m = paramW;
    n = paramD;
  }
  
  private static String a(String paramString1, String paramString2)
  {
    return paramString1 + '\000' + paramString2;
  }
  
  public static ak.a a(List<ss.ss.ss.r> paramList)
    throws IOException
  {
    Object localObject1 = null;
    Object localObject2 = "HTTP/1.1";
    w.a localA = new w.a();
    int i5 = paramList.size();
    int i1 = 0;
    while (i1 < i5)
    {
      h localH = geth;
      String str2 = geti.a();
      int i2 = 0;
      if (i2 < str2.length())
      {
        int i4 = str2.indexOf(0, i2);
        int i3 = i4;
        if (i4 == -1) {
          i3 = str2.length();
        }
        String str1 = str2.substring(i2, i3);
        if (localH.equals(ss.ss.ss.r.a)) {
          localObject1 = str1;
        }
        for (;;)
        {
          i2 = i3 + 1;
          break;
          if (localH.equals(ss.ss.ss.r.g)) {
            localObject2 = str1;
          } else if (!j.contains(localH)) {
            localA.a(localH.a(), str1);
          }
        }
      }
      i1 += 1;
    }
    if (localObject1 == null) {
      throw new ProtocolException("Expected ':status' header not present");
    }
    paramList = v.a((String)localObject2 + " " + localObject1);
    return new ak.a().a(ae.c).a(b).a(c).a(localA.a());
  }
  
  public static List<ss.ss.ss.r> b(ag paramAg)
  {
    ss.w localW = paramAg.c();
    ArrayList localArrayList = new ArrayList(localW.a() + 5);
    localArrayList.add(new ss.ss.ss.r(ss.ss.ss.r.b, paramAg.b()));
    localArrayList.add(new ss.ss.ss.r(ss.ss.ss.r.c, r.a(paramAg.a())));
    localArrayList.add(new ss.ss.ss.r(ss.ss.ss.r.g, "HTTP/1.1"));
    localArrayList.add(new ss.ss.ss.r(ss.ss.ss.r.f, ss.ss.j.a(paramAg.a(), false)));
    localArrayList.add(new ss.ss.ss.r(ss.ss.ss.r.d, paramAg.a().b()));
    paramAg = new LinkedHashSet();
    int i3 = localW.a();
    int i1 = 0;
    if (i1 < i3)
    {
      h localH = h.a(localW.a(i1).toLowerCase(Locale.US));
      if (i.contains(localH)) {}
      label322:
      for (;;)
      {
        i1 += 1;
        break;
        String str = localW.b(i1);
        if (paramAg.add(localH))
        {
          localArrayList.add(new ss.ss.ss.r(localH, str));
        }
        else
        {
          int i2 = 0;
          for (;;)
          {
            if (i2 >= localArrayList.size()) {
              break label322;
            }
            if (geth.equals(localH))
            {
              localArrayList.set(i2, new ss.ss.ss.r(localH, a(geti.a(), str)));
              break;
            }
            i2 += 1;
          }
        }
      }
    }
    return localArrayList;
  }
  
  public static ak.a b(List<ss.ss.ss.r> paramList)
    throws IOException
  {
    Object localObject = null;
    w.a localA = new w.a();
    int i2 = paramList.size();
    int i1 = 0;
    if (i1 < i2)
    {
      h localH = geth;
      String str = geti.a();
      if (localH.equals(ss.ss.ss.r.a)) {
        localObject = str;
      }
      for (;;)
      {
        i1 += 1;
        break;
        if (!l.contains(localH)) {
          localA.a(localH.a(), str);
        }
      }
    }
    if (localObject == null) {
      throw new ProtocolException("Expected ':status' header not present");
    }
    paramList = v.a("HTTP/1.1 " + localObject);
    return new ak.a().a(ae.d).a(b).a(c).a(localA.a());
  }
  
  public static List<ss.ss.ss.r> c(ag paramAg)
  {
    int i1 = 0;
    ss.w localW = paramAg.c();
    ArrayList localArrayList = new ArrayList(localW.a() + 4);
    localArrayList.add(new ss.ss.ss.r(ss.ss.ss.r.b, paramAg.b()));
    localArrayList.add(new ss.ss.ss.r(ss.ss.ss.r.c, r.a(paramAg.a())));
    localArrayList.add(new ss.ss.ss.r(ss.ss.ss.r.e, ss.ss.j.a(paramAg.a(), false)));
    localArrayList.add(new ss.ss.ss.r(ss.ss.ss.r.d, paramAg.a().b()));
    int i2 = localW.a();
    while (i1 < i2)
    {
      paramAg = h.a(localW.a(i1).toLowerCase(Locale.US));
      if (!k.contains(paramAg)) {
        localArrayList.add(new ss.ss.ss.r(paramAg, localW.b(i1)));
      }
      i1 += 1;
    }
    return localArrayList;
  }
  
  public gK.v a(ag paramAg, long paramLong)
    throws IOException
  {
    return p.h();
  }
  
  public ak.a a()
    throws IOException
  {
    if (n.a() == ae.d) {
      return b(p.d());
    }
    return a(p.d());
  }
  
  public am a(ak paramAk)
    throws IOException
  {
    a localA = new a(p.g());
    return new p(paramAk.e(), gK.n.a(localA));
  }
  
  public void a(ag paramAg)
    throws IOException
  {
    if (p != null) {
      return;
    }
    o.b();
    boolean bool = o.a(paramAg);
    if (n.a() == ae.d) {}
    for (paramAg = c(paramAg);; paramAg = b(paramAg))
    {
      p = n.a(paramAg, bool, true);
      p.e().a(o.a.b(), TimeUnit.MILLISECONDS);
      p.f().a(o.a.c(), TimeUnit.MILLISECONDS);
      return;
    }
  }
  
  public void a(j paramJ)
  {
    o = paramJ;
  }
  
  public void a(s paramS)
    throws IOException
  {
    paramS.a(p.h());
  }
  
  public void b()
    throws IOException
  {
    p.h().close();
  }
  
  class a
    extends gK.j
  {
    public a(gK.w paramW)
    {
      super();
    }
    
    public void close()
      throws IOException
    {
      g.a(g.this).a(false, g.this);
      super.close();
    }
  }
}
