package ss.ss.ss;

import gK.e;
import gK.f;
import gK.g;
import gK.h;
import gK.i;
import gK.n;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.zip.Deflater;
import ss.ss.j;

public final class ad
  implements ae
{
  static final byte[] a;
  
  static
  {
    try
    {
      a = "\000\000\000\007options\000\000\000\004head\000\000\000\004post\000\000\000\003put\000\000\000\006delete\000\000\000\005trace\000\000\000\006accept\000\000\000\016accept-charset\000\000\000\017accept-encoding\000\000\000\017accept-language\000\000\000\raccept-ranges\000\000\000\003age\000\000\000\005allow\000\000\000\rauthorization\000\000\000\rcache-control\000\000\000\nconnection\000\000\000\fcontent-base\000\000\000\020content-encoding\000\000\000\020content-language\000\000\000\016content-length\000\000\000\020content-location\000\000\000\013content-md5\000\000\000\rcontent-range\000\000\000\fcontent-type\000\000\000\004date\000\000\000\004etag\000\000\000\006expect\000\000\000\007expires\000\000\000\004from\000\000\000\004host\000\000\000\bif-match\000\000\000\021if-modified-since\000\000\000\rif-none-match\000\000\000\bif-range\000\000\000\023if-unmodified-since\000\000\000\rlast-modified\000\000\000\blocation\000\000\000\fmax-forwards\000\000\000\006pragma\000\000\000\022proxy-authenticate\000\000\000\023proxy-authorization\000\000\000\005range\000\000\000\007referer\000\000\000\013retry-after\000\000\000\006server\000\000\000\002te\000\000\000\007trailer\000\000\000\021transfer-encoding\000\000\000\007upgrade\000\000\000\nuser-agent\000\000\000\004vary\000\000\000\003via\000\000\000\007warning\000\000\000\020www-authenticate\000\000\000\006method\000\000\000\003get\000\000\000\006status\000\000\000\006200 OK\000\000\000\007version\000\000\000\bHTTP/1.1\000\000\000\003url\000\000\000\006public\000\000\000\nset-cookie\000\000\000\nkeep-alive\000\000\000\006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(j.c.name());
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError();
    }
  }
  
  public ad() {}
  
  public b a(g paramG, boolean paramBoolean)
  {
    return new a(paramG, paramBoolean);
  }
  
  public c a(f paramF, boolean paramBoolean)
  {
    return new b(paramF, paramBoolean);
  }
  
  static final class a
    implements b
  {
    private final g a;
    private final boolean b;
    private final w c;
    
    a(g paramG, boolean paramBoolean)
    {
      a = paramG;
      c = new w(a);
      b = paramBoolean;
    }
    
    private static IOException a(String paramString, Object... paramVarArgs)
      throws IOException
    {
      throw new IOException(String.format(paramString, paramVarArgs));
    }
    
    private void a(b.a paramA, int paramInt1, int paramInt2)
      throws IOException
    {
      boolean bool2 = true;
      int i = a.j();
      int j = a.j();
      a.i();
      List localList = c.a(paramInt2 - 10);
      boolean bool1;
      if ((paramInt1 & 0x1) != 0)
      {
        bool1 = true;
        if ((paramInt1 & 0x2) == 0) {
          break label95;
        }
      }
      for (;;)
      {
        paramA.a(bool2, bool1, i & 0x7FFFFFFF, j & 0x7FFFFFFF, localList, s.a);
        return;
        bool1 = false;
        break;
        label95:
        bool2 = false;
      }
    }
    
    private void b(b.a paramA, int paramInt1, int paramInt2)
      throws IOException
    {
      int i = a.j();
      List localList = c.a(paramInt2 - 4);
      if ((paramInt1 & 0x1) != 0) {}
      for (boolean bool = true;; bool = false)
      {
        paramA.a(false, bool, i & 0x7FFFFFFF, -1, localList, s.b);
        return;
      }
    }
    
    private void c(b.a paramA, int paramInt1, int paramInt2)
      throws IOException
    {
      if (paramInt2 != 8) {
        throw a("TYPE_RST_STREAM length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramInt1 = a.j();
      paramInt2 = a.j();
      a localA = a.a(paramInt2);
      if (localA == null) {
        throw a("TYPE_RST_STREAM unexpected error code: %d", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramA.a(paramInt1 & 0x7FFFFFFF, localA);
    }
    
    private void d(b.a paramA, int paramInt1, int paramInt2)
      throws IOException
    {
      paramA.a(false, false, a.j() & 0x7FFFFFFF, -1, c.a(paramInt2 - 4), s.c);
    }
    
    private void e(b.a paramA, int paramInt1, int paramInt2)
      throws IOException
    {
      if (paramInt2 != 8) {
        throw a("TYPE_WINDOW_UPDATE length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramInt1 = a.j();
      long l = a.j() & 0x7FFFFFFF;
      if (l == 0L) {
        throw a("windowSizeIncrement was 0", new Object[] { Long.valueOf(l) });
      }
      paramA.a(paramInt1 & 0x7FFFFFFF, l);
    }
    
    private void f(b.a paramA, int paramInt1, int paramInt2)
      throws IOException
    {
      boolean bool2 = true;
      if (paramInt2 != 4) {
        throw a("TYPE_PING length: %d != 4", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramInt1 = a.j();
      boolean bool3 = b;
      if ((paramInt1 & 0x1) == 1)
      {
        bool1 = true;
        if (bool3 != bool1) {
          break label79;
        }
      }
      label79:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        paramA.a(bool1, paramInt1, 0);
        return;
        bool1 = false;
        break;
      }
    }
    
    private void g(b.a paramA, int paramInt1, int paramInt2)
      throws IOException
    {
      if (paramInt2 != 8) {
        throw a("TYPE_GOAWAY length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramInt1 = a.j();
      paramInt2 = a.j();
      a localA = a.c(paramInt2);
      if (localA == null) {
        throw a("TYPE_GOAWAY unexpected error code: %d", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramA.a(paramInt1 & 0x7FFFFFFF, localA, h.b);
    }
    
    private void h(b.a paramA, int paramInt1, int paramInt2)
      throws IOException
    {
      boolean bool = true;
      int i = a.j();
      if (paramInt2 != i * 8 + 4) {
        throw a("TYPE_SETTINGS length: %d != 4 + 8 * %d", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(i) });
      }
      ac localAc = new ac();
      paramInt2 = 0;
      while (paramInt2 < i)
      {
        int j = a.j();
        localAc.a(j & 0xFFFFFF, (0xFF000000 & j) >>> 24, a.j());
        paramInt2 += 1;
      }
      if ((paramInt1 & 0x1) != 0) {}
      for (;;)
      {
        paramA.a(bool, localAc);
        return;
        bool = false;
      }
    }
    
    public void a() {}
    
    public boolean a(b.a paramA)
      throws IOException
    {
      boolean bool = false;
      int j;
      int k;
      int m;
      for (;;)
      {
        try
        {
          j = a.j();
          k = a.j();
          if ((0x80000000 & j) != 0)
          {
            i = 1;
            m = (0xFF000000 & k) >>> 24;
            k &= 0xFFFFFF;
            if (i == 0) {
              break label258;
            }
            i = (0x7FFF0000 & j) >>> 16;
            if (i == 3) {
              break;
            }
            throw new ProtocolException("version != 3: " + i);
          }
        }
        catch (IOException paramA)
        {
          return false;
        }
        int i = 0;
      }
      switch (0xFFFF & j)
      {
      case 5: 
      default: 
        a.g(k);
        return true;
      case 1: 
        a(paramA, m, k);
        return true;
      case 2: 
        b(paramA, m, k);
        return true;
      case 3: 
        c(paramA, m, k);
        return true;
      case 4: 
        h(paramA, m, k);
        return true;
      case 6: 
        f(paramA, m, k);
        return true;
      case 7: 
        g(paramA, m, k);
        return true;
      case 8: 
        d(paramA, m, k);
        return true;
      }
      e(paramA, m, k);
      return true;
      label258:
      if ((m & 0x1) != 0) {
        bool = true;
      }
      paramA.a(bool, 0x7FFFFFFF & j, a, k);
      return true;
    }
    
    public void close()
      throws IOException
    {
      c.a();
    }
  }
  
  static final class b
    implements c
  {
    private final f a;
    private final e b;
    private final f c;
    private final boolean d;
    private boolean e;
    
    b(f paramF, boolean paramBoolean)
    {
      a = paramF;
      d = paramBoolean;
      paramF = new Deflater();
      paramF.setDictionary(ad.a);
      b = new e();
      c = n.a(new i(b, paramF));
    }
    
    private void a(List<r> paramList)
      throws IOException
    {
      c.f(paramList.size());
      int j = paramList.size();
      int i = 0;
      while (i < j)
      {
        h localH = geth;
        c.f(localH.f());
        c.b(localH);
        localH = geti;
        c.f(localH.f());
        c.b(localH);
        i += 1;
      }
      c.flush();
    }
    
    public void a() {}
    
    void a(int paramInt1, int paramInt2, e paramE, int paramInt3)
      throws IOException
    {
      if (e) {
        throw new IOException("closed");
      }
      if (paramInt3 > 16777215L) {
        throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + paramInt3);
      }
      a.f(0x7FFFFFFF & paramInt1);
      a.f((paramInt2 & 0xFF) << 24 | 0xFFFFFF & paramInt3);
      if (paramInt3 > 0) {
        a.a_(paramE, paramInt3);
      }
    }
    
    public void a(int paramInt1, int paramInt2, List<r> paramList)
      throws IOException
    {}
    
    public void a(int paramInt, long paramLong)
      throws IOException
    {
      try
      {
        if (e) {
          throw new IOException("closed");
        }
      }
      finally {}
      if ((paramLong == 0L) || (paramLong > 2147483647L)) {
        throw new IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: " + paramLong);
      }
      a.f(-2147287031);
      a.f(8);
      a.f(paramInt);
      a.f((int)paramLong);
      a.flush();
    }
    
    public void a(int paramInt, a paramA)
      throws IOException
    {
      try
      {
        if (e) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (t == -1) {
        throw new IllegalArgumentException();
      }
      a.f(-2147287037);
      a.f(8);
      a.f(0x7FFFFFFF & paramInt);
      a.f(t);
      a.flush();
    }
    
    public void a(int paramInt, a paramA, byte[] paramArrayOfByte)
      throws IOException
    {
      try
      {
        if (e) {
          throw new IOException("closed");
        }
      }
      finally {}
      if (u == -1) {
        throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
      }
      a.f(-2147287033);
      a.f(8);
      a.f(paramInt);
      a.f(u);
      a.flush();
    }
    
    public void a(ac paramAc) {}
    
    public void a(boolean paramBoolean, int paramInt1, int paramInt2)
      throws IOException
    {
      boolean bool2 = true;
      try
      {
        if (e) {
          throw new IOException("closed");
        }
      }
      finally {}
      boolean bool3 = d;
      boolean bool1;
      if ((paramInt1 & 0x1) == 1) {
        bool1 = true;
      }
      for (;;)
      {
        if (paramBoolean != bool1) {
          throw new IllegalArgumentException("payload != reply");
        }
        a.f(-2147287034);
        a.f(4);
        a.f(paramInt1);
        a.flush();
        return;
        for (;;)
        {
          if (bool3 == bool1) {
            break label130;
          }
          bool1 = bool2;
          break;
          bool1 = false;
        }
        label130:
        bool1 = false;
      }
    }
    
    public void a(boolean paramBoolean, int paramInt1, e paramE, int paramInt2)
      throws IOException
    {
      if (paramBoolean) {}
      for (int i = 1;; i = 0) {
        try
        {
          a(paramInt1, i, paramE, paramInt2);
          return;
        }
        finally {}
      }
    }
    
    public void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<r> paramList)
      throws IOException
    {
      int j = 0;
      try
      {
        if (e) {
          throw new IOException("closed");
        }
      }
      finally {}
      a(paramList);
      int k = (int)(10L + b.b());
      int i;
      if (paramBoolean1) {
        i = 1;
      }
      for (;;)
      {
        a.f(-2147287039);
        a.f(((j | i) & 0xFF) << 24 | k & 0xFFFFFF);
        a.f(paramInt1 & 0x7FFFFFFF);
        a.f(paramInt2 & 0x7FFFFFFF);
        a.g(0);
        a.a(b);
        a.flush();
        return;
        i = 0;
        if (paramBoolean2) {
          j = 2;
        }
      }
    }
    
    public void b()
      throws IOException
    {
      try
      {
        if (e) {
          throw new IOException("closed");
        }
      }
      finally {}
      a.flush();
    }
    
    public void b(ac paramAc)
      throws IOException
    {
      try
      {
        if (e) {
          throw new IOException("closed");
        }
      }
      finally {}
      int i = paramAc.b();
      a.f(-2147287036);
      a.f(i * 8 + 4 & 0xFFFFFF | 0x0);
      a.f(i);
      i = 0;
      for (;;)
      {
        if (i <= 10)
        {
          if (paramAc.a(i))
          {
            int j = paramAc.c(i);
            a.f((j & 0xFF) << 24 | i & 0xFFFFFF);
            a.f(paramAc.b(i));
          }
        }
        else
        {
          a.flush();
          return;
        }
        i += 1;
      }
    }
    
    public int c()
    {
      return 16383;
    }
    
    public void close()
      throws IOException
    {
      try
      {
        e = true;
        j.a(a, c);
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
  }
}
