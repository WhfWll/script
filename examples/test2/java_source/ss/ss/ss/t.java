package ss.ss.ss;

import gK.e;
import gK.g;
import gK.h;
import gK.n;
import gK.w;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

final class t
{
  private static final r[] a = { new r(r.e, ""), new r(r.b, "GET"), new r(r.b, "POST"), new r(r.c, "/"), new r(r.c, "/index.html"), new r(r.d, "http"), new r(r.d, "https"), new r(r.a, "200"), new r(r.a, "204"), new r(r.a, "206"), new r(r.a, "304"), new r(r.a, "400"), new r(r.a, "404"), new r(r.a, "500"), new r("accept-charset", ""), new r("accept-encoding", "gzip, deflate"), new r("accept-language", ""), new r("accept-ranges", ""), new r("accept", ""), new r("access-control-allow-origin", ""), new r("age", ""), new r("allow", ""), new r("authorization", ""), new r("cache-control", ""), new r("content-disposition", ""), new r("content-encoding", ""), new r("content-language", ""), new r("content-length", ""), new r("content-location", ""), new r("content-range", ""), new r("content-type", ""), new r("cookie", ""), new r("date", ""), new r("etag", ""), new r("expect", ""), new r("expires", ""), new r("from", ""), new r("host", ""), new r("if-match", ""), new r("if-modified-since", ""), new r("if-none-match", ""), new r("if-range", ""), new r("if-unmodified-since", ""), new r("last-modified", ""), new r("link", ""), new r("location", ""), new r("max-forwards", ""), new r("proxy-authenticate", ""), new r("proxy-authorization", ""), new r("range", ""), new r("referer", ""), new r("refresh", ""), new r("retry-after", ""), new r("server", ""), new r("set-cookie", ""), new r("strict-transport-security", ""), new r("transfer-encoding", ""), new r("user-agent", ""), new r("vary", ""), new r("via", ""), new r("www-authenticate", "") };
  private static final Map<h, Integer> b = c();
  
  private static h b(h paramH)
    throws IOException
  {
    int i = 0;
    int j = paramH.f();
    while (i < j)
    {
      int k = paramH.a(i);
      if ((k >= 65) && (k <= 90)) {
        throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + paramH.a());
      }
      i += 1;
    }
    return paramH;
  }
  
  private static Map<h, Integer> c()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap(a.length);
    int i = 0;
    while (i < a.length)
    {
      if (!localLinkedHashMap.containsKey(ah)) {
        localLinkedHashMap.put(ah, Integer.valueOf(i));
      }
      i += 1;
    }
    return Collections.unmodifiableMap(localLinkedHashMap);
  }
  
  static final class a
  {
    r[] a = new r[8];
    int b = a.length - 1;
    int c = 0;
    int d = 0;
    private final List<r> e = new ArrayList();
    private final g f;
    private int g;
    private int h;
    
    a(int paramInt, w paramW)
    {
      g = paramInt;
      h = paramInt;
      f = n.a(paramW);
    }
    
    private void a(int paramInt, r paramR)
    {
      e.add(paramR);
      int j = j;
      int i = j;
      if (paramInt != -1) {
        i = j - a[d(paramInt)].j;
      }
      if (i > h)
      {
        e();
        return;
      }
      j = b(d + i - h);
      if (paramInt == -1)
      {
        if (c + 1 > a.length)
        {
          r[] arrayOfR = new r[a.length * 2];
          System.arraycopy(a, 0, arrayOfR, a.length, a.length);
          b = (a.length - 1);
          a = arrayOfR;
        }
        paramInt = b;
        b = (paramInt - 1);
        a[paramInt] = paramR;
        c += 1;
      }
      for (;;)
      {
        d = (i + d);
        return;
        int k = d(paramInt);
        a[(j + k + paramInt)] = paramR;
      }
    }
    
    private int b(int paramInt)
    {
      int i = 0;
      int k = 0;
      if (paramInt > 0)
      {
        i = a.length - 1;
        int j = paramInt;
        paramInt = k;
        while ((i >= b) && (j > 0))
        {
          j -= a[i].j;
          d -= a[i].j;
          c -= 1;
          paramInt += 1;
          i -= 1;
        }
        System.arraycopy(a, b + 1, a, b + 1 + paramInt, c);
        b += paramInt;
        i = paramInt;
      }
      return i;
    }
    
    private void c(int paramInt)
      throws IOException
    {
      if (h(paramInt))
      {
        r localR = t.a()[paramInt];
        e.add(localR);
        return;
      }
      int i = d(paramInt - t.a().length);
      if ((i < 0) || (i > a.length - 1)) {
        throw new IOException("Header index too large " + (paramInt + 1));
      }
      e.add(a[i]);
    }
    
    private int d(int paramInt)
    {
      return b + 1 + paramInt;
    }
    
    private void d()
    {
      if (h < d)
      {
        if (h == 0) {
          e();
        }
      }
      else {
        return;
      }
      b(d - h);
    }
    
    private void e()
    {
      e.clear();
      Arrays.fill(a, null);
      b = (a.length - 1);
      c = 0;
      d = 0;
    }
    
    private void e(int paramInt)
      throws IOException
    {
      h localH1 = g(paramInt);
      h localH2 = c();
      e.add(new r(localH1, localH2));
    }
    
    private void f()
      throws IOException
    {
      h localH1 = t.a(c());
      h localH2 = c();
      e.add(new r(localH1, localH2));
    }
    
    private void f(int paramInt)
      throws IOException
    {
      a(-1, new r(g(paramInt), c()));
    }
    
    private h g(int paramInt)
    {
      if (h(paramInt)) {
        return ah;
      }
      return a[d(paramInt - t.a().length)].h;
    }
    
    private void g()
      throws IOException
    {
      a(-1, new r(t.a(c()), c()));
    }
    
    private int h()
      throws IOException
    {
      return f.h() & 0xFF;
    }
    
    private boolean h(int paramInt)
    {
      return (paramInt >= 0) && (paramInt <= t.a().length - 1);
    }
    
    int a(int paramInt1, int paramInt2)
      throws IOException
    {
      paramInt1 &= paramInt2;
      if (paramInt1 < paramInt2) {
        return paramInt1;
      }
      paramInt1 = 0;
      int i;
      for (;;)
      {
        i = h();
        if ((i & 0x80) == 0) {
          break;
        }
        paramInt2 += ((i & 0x7F) << paramInt1);
        paramInt1 += 7;
      }
      return (i << paramInt1) + paramInt2;
    }
    
    void a()
      throws IOException
    {
      while (!f.f())
      {
        int i = f.h() & 0xFF;
        if (i == 128) {
          throw new IOException("index == 0");
        }
        if ((i & 0x80) == 128)
        {
          c(a(i, 127) - 1);
        }
        else if (i == 64)
        {
          g();
        }
        else if ((i & 0x40) == 64)
        {
          f(a(i, 63) - 1);
        }
        else if ((i & 0x20) == 32)
        {
          h = a(i, 31);
          if ((h < 0) || (h > g)) {
            throw new IOException("Invalid dynamic table size update " + h);
          }
          d();
        }
        else if ((i == 16) || (i == 0))
        {
          f();
        }
        else
        {
          e(a(i, 15) - 1);
        }
      }
    }
    
    void a(int paramInt)
    {
      g = paramInt;
      h = paramInt;
      d();
    }
    
    public List<r> b()
    {
      ArrayList localArrayList = new ArrayList(e);
      e.clear();
      return localArrayList;
    }
    
    h c()
      throws IOException
    {
      int j = h();
      if ((j & 0x80) == 128) {}
      for (int i = 1;; i = 0)
      {
        j = a(j, 127);
        if (i == 0) {
          break;
        }
        return h.a(v.a().a(f.f(j)));
      }
      return f.c(j);
    }
  }
  
  static final class b
  {
    private final e a;
    
    b(e paramE)
    {
      a = paramE;
    }
    
    void a(int paramInt1, int paramInt2, int paramInt3)
      throws IOException
    {
      if (paramInt1 < paramInt2)
      {
        a.b(paramInt3 | paramInt1);
        return;
      }
      a.b(paramInt3 | paramInt2);
      paramInt1 -= paramInt2;
      while (paramInt1 >= 128)
      {
        a.b(paramInt1 & 0x7F | 0x80);
        paramInt1 >>>= 7;
      }
      a.b(paramInt1);
    }
    
    void a(h paramH)
      throws IOException
    {
      a(paramH.f(), 127, 0);
      a.a(paramH);
    }
    
    void a(List<r> paramList)
      throws IOException
    {
      int j = paramList.size();
      int i = 0;
      if (i < j)
      {
        h localH = geth.e();
        Integer localInteger = (Integer)t.b().get(localH);
        if (localInteger != null)
        {
          a(localInteger.intValue() + 1, 15, 0);
          a(geti);
        }
        for (;;)
        {
          i += 1;
          break;
          a.b(0);
          a(localH);
          a(geti);
        }
      }
    }
  }
}
