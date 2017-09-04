package ss.ss.gK;

import gK.f;
import gK.g;
import gK.x;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;
import ss.ag;
import ss.ak;
import ss.ak.a;
import ss.am;
import ss.an;
import ss.ss.d;
import ss.w.a;

public final class e
  implements n
{
  private final w a;
  private final g b;
  private final f c;
  private j d;
  private int e = 0;
  
  public e(w paramW, g paramG, f paramF)
  {
    a = paramW;
    b = paramG;
    c = paramF;
  }
  
  private void a(gK.k paramK)
  {
    x localX = paramK.a();
    paramK.a(x.b);
    localX.f();
    localX.d_();
  }
  
  private gK.w b(ak paramAk)
    throws IOException
  {
    if (!j.a(paramAk)) {
      return b(0L);
    }
    if ("chunked".equalsIgnoreCase(paramAk.a("Transfer-Encoding"))) {
      return b(d);
    }
    long l = o.a(paramAk);
    if (l != -1L) {
      return b(l);
    }
    return f();
  }
  
  public gK.v a(long paramLong)
  {
    if (e != 1) {
      throw new IllegalStateException("state: " + e);
    }
    e = 2;
    return new d(paramLong, null);
  }
  
  public gK.v a(ag paramAg, long paramLong)
    throws IOException
  {
    if ("chunked".equalsIgnoreCase(paramAg.a("Transfer-Encoding"))) {
      return e();
    }
    if (paramLong != -1L) {
      return a(paramLong);
    }
    throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
  }
  
  public ak.a a()
    throws IOException
  {
    return c();
  }
  
  public am a(ak paramAk)
    throws IOException
  {
    gK.w localW = b(paramAk);
    return new p(paramAk.e(), gK.n.a(localW));
  }
  
  public void a(ag paramAg)
    throws IOException
  {
    d.b();
    String str = r.a(paramAg, d.d().a().b().type());
    a(paramAg.c(), str);
  }
  
  public void a(j paramJ)
  {
    d = paramJ;
  }
  
  public void a(s paramS)
    throws IOException
  {
    if (e != 1) {
      throw new IllegalStateException("state: " + e);
    }
    e = 3;
    paramS.a(c);
  }
  
  public void a(ss.w paramW, String paramString)
    throws IOException
  {
    if (e != 0) {
      throw new IllegalStateException("state: " + e);
    }
    c.b(paramString).b("\r\n");
    int i = 0;
    int j = paramW.a();
    while (i < j)
    {
      c.b(paramW.a(i)).b(": ").b(paramW.b(i)).b("\r\n");
      i += 1;
    }
    c.b("\r\n");
    e = 1;
  }
  
  public gK.w b(long paramLong)
    throws IOException
  {
    if (e != 4) {
      throw new IllegalStateException("state: " + e);
    }
    e = 5;
    return new e(paramLong);
  }
  
  public gK.w b(j paramJ)
    throws IOException
  {
    if (e != 4) {
      throw new IllegalStateException("state: " + e);
    }
    e = 5;
    return new c(paramJ);
  }
  
  public void b()
    throws IOException
  {
    c.flush();
  }
  
  public ak.a c()
    throws IOException
  {
    if ((e != 1) && (e != 3)) {
      throw new IllegalStateException("state: " + e);
    }
    try
    {
      v localV;
      do
      {
        localV = v.a(b.p());
        localObject = new ak.a().a(a).a(b).a(c).a(d());
      } while (b == 100);
      e = 4;
      return localObject;
    }
    catch (EOFException localEOFException)
    {
      Object localObject = new IOException("unexpected end of stream on " + a);
      ((IOException)localObject).initCause(localEOFException);
      throw ((Throwable)localObject);
    }
  }
  
  public ss.w d()
    throws IOException
  {
    w.a localA = new w.a();
    for (;;)
    {
      String str = b.p();
      if (str.length() == 0) {
        break;
      }
      d.b.a(localA, str);
    }
    return localA.a();
  }
  
  public gK.v e()
  {
    if (e != 1) {
      throw new IllegalStateException("state: " + e);
    }
    e = 2;
    return new b(null);
  }
  
  public gK.w f()
    throws IOException
  {
    if (e != 4) {
      throw new IllegalStateException("state: " + e);
    }
    if (a == null) {
      throw new IllegalStateException("streamAllocation == null");
    }
    e = 5;
    a.c();
    return new f(null);
  }
  
  private abstract class a
    implements gK.w
  {
    protected final gK.k a = new gK.k(e.b(e.this).a());
    protected boolean b;
    
    private a() {}
    
    public x a()
    {
      return a;
    }
    
    protected final void a(boolean paramBoolean)
      throws IOException
    {
      if (e.c(e.this) == 6) {}
      do
      {
        return;
        if (e.c(e.this) != 5) {
          throw new IllegalStateException("state: " + e.c(e.this));
        }
        e.a(e.this, a);
        e.a(e.this, 6);
      } while (e.d(e.this) == null);
      w localW = e.d(e.this);
      if (!paramBoolean) {}
      for (paramBoolean = true;; paramBoolean = false)
      {
        localW.a(paramBoolean, e.this);
        return;
      }
    }
  }
  
  private final class b
    implements gK.v
  {
    private final gK.k b = new gK.k(e.a(e.this).a());
    private boolean c;
    
    private b() {}
    
    public x a()
    {
      return b;
    }
    
    public void a_(gK.e paramE, long paramLong)
      throws IOException
    {
      if (c) {
        throw new IllegalStateException("closed");
      }
      if (paramLong == 0L) {
        return;
      }
      e.a(e.this).j(paramLong);
      e.a(e.this).b("\r\n");
      e.a(e.this).a_(paramE, paramLong);
      e.a(e.this).b("\r\n");
    }
    
    /* Error */
    public void close()
      throws IOException
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield 46	ss/ss/gK/e$b:c	Z
      //   6: istore_1
      //   7: iload_1
      //   8: ifeq +6 -> 14
      //   11: aload_0
      //   12: monitorexit
      //   13: return
      //   14: aload_0
      //   15: iconst_1
      //   16: putfield 46	ss/ss/gK/e$b:c	Z
      //   19: aload_0
      //   20: getfield 18	ss/ss/gK/e$b:a	Lss/ss/gK/e;
      //   23: invokestatic 26	ss/ss/gK/e:a	(Lss/ss/gK/e;)LgK/f;
      //   26: ldc 68
      //   28: invokeinterface 62 2 0
      //   33: pop
      //   34: aload_0
      //   35: getfield 18	ss/ss/gK/e$b:a	Lss/ss/gK/e;
      //   38: aload_0
      //   39: getfield 36	ss/ss/gK/e$b:b	LgK/k;
      //   42: invokestatic 71	ss/ss/gK/e:a	(Lss/ss/gK/e;LgK/k;)V
      //   45: aload_0
      //   46: getfield 18	ss/ss/gK/e$b:a	Lss/ss/gK/e;
      //   49: iconst_3
      //   50: invokestatic 74	ss/ss/gK/e:a	(Lss/ss/gK/e;I)I
      //   53: pop
      //   54: goto -43 -> 11
      //   57: astore_2
      //   58: aload_0
      //   59: monitorexit
      //   60: aload_2
      //   61: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	62	0	this	b
      //   6	2	1	bool	boolean
      //   57	4	2	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   2	7	57	finally
      //   14	54	57	finally
    }
    
    /* Error */
    public void flush()
      throws IOException
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield 46	ss/ss/gK/e$b:c	Z
      //   6: istore_1
      //   7: iload_1
      //   8: ifeq +6 -> 14
      //   11: aload_0
      //   12: monitorexit
      //   13: return
      //   14: aload_0
      //   15: getfield 18	ss/ss/gK/e$b:a	Lss/ss/gK/e;
      //   18: invokestatic 26	ss/ss/gK/e:a	(Lss/ss/gK/e;)LgK/f;
      //   21: invokeinterface 77 1 0
      //   26: goto -15 -> 11
      //   29: astore_2
      //   30: aload_0
      //   31: monitorexit
      //   32: aload_2
      //   33: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	34	0	this	b
      //   6	2	1	bool	boolean
      //   29	4	2	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   2	7	29	finally
      //   14	26	29	finally
    }
  }
  
  private class c
    extends e.a
  {
    private long e = -1L;
    private boolean f = true;
    private final j g;
    
    c(j paramJ)
      throws IOException
    {
      super(null);
      g = paramJ;
    }
    
    private void b()
      throws IOException
    {
      if (e != -1L) {
        e.b(e.this).p();
      }
      try
      {
        e = e.b(e.this).m();
        String str = e.b(e.this).p().trim();
        if ((e < 0L) || ((!str.isEmpty()) && (!str.startsWith(";")))) {
          throw new ProtocolException("expected chunk size and optional extensions but was \"" + e + str + "\"");
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new ProtocolException(localNumberFormatException.getMessage());
      }
      if (e == 0L)
      {
        f = false;
        g.a(d());
        a(true);
      }
    }
    
    public long a(gK.e paramE, long paramLong)
      throws IOException
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      if (b) {
        throw new IllegalStateException("closed");
      }
      if (!f) {}
      do
      {
        return -1L;
        if ((e != 0L) && (e != -1L)) {
          break;
        }
        b();
      } while (!f);
      paramLong = e.b(e.this).a(paramE, Math.min(paramLong, e));
      if (paramLong == -1L)
      {
        a(false);
        throw new ProtocolException("unexpected end of stream");
      }
      e -= paramLong;
      return paramLong;
    }
    
    public void close()
      throws IOException
    {
      if (b) {
        return;
      }
      if ((f) && (!ss.ss.j.a(this, 100, TimeUnit.MILLISECONDS))) {
        a(false);
      }
      b = true;
    }
  }
  
  private final class d
    implements gK.v
  {
    private final gK.k b = new gK.k(e.a(e.this).a());
    private boolean c;
    private long d;
    
    private d(long paramLong)
    {
      d = paramLong;
    }
    
    public x a()
    {
      return b;
    }
    
    public void a_(gK.e paramE, long paramLong)
      throws IOException
    {
      if (c) {
        throw new IllegalStateException("closed");
      }
      ss.ss.j.a(paramE.b(), 0L, paramLong);
      if (paramLong > d) {
        throw new ProtocolException("expected " + d + " bytes but received " + paramLong);
      }
      e.a(e.this).a_(paramE, paramLong);
      d -= paramLong;
    }
    
    public void close()
      throws IOException
    {
      if (c) {
        return;
      }
      c = true;
      if (d > 0L) {
        throw new ProtocolException("unexpected end of stream");
      }
      e.a(e.this, b);
      e.a(e.this, 3);
    }
    
    public void flush()
      throws IOException
    {
      if (c) {
        return;
      }
      e.a(e.this).flush();
    }
  }
  
  private class e
    extends e.a
  {
    private long e;
    
    public e(long paramLong)
      throws IOException
    {
      super(null);
      e = paramLong;
      if (e == 0L) {
        a(true);
      }
    }
    
    public long a(gK.e paramE, long paramLong)
      throws IOException
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      if (b) {
        throw new IllegalStateException("closed");
      }
      if (e == 0L) {
        return -1L;
      }
      paramLong = e.b(e.this).a(paramE, Math.min(e, paramLong));
      if (paramLong == -1L)
      {
        a(false);
        throw new ProtocolException("unexpected end of stream");
      }
      e -= paramLong;
      if (e == 0L) {
        a(true);
      }
      return paramLong;
    }
    
    public void close()
      throws IOException
    {
      if (b) {
        return;
      }
      if ((e != 0L) && (!ss.ss.j.a(this, 100, TimeUnit.MILLISECONDS))) {
        a(false);
      }
      b = true;
    }
  }
  
  private class f
    extends e.a
  {
    private boolean e;
    
    private f()
    {
      super(null);
    }
    
    public long a(gK.e paramE, long paramLong)
      throws IOException
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      if (b) {
        throw new IllegalStateException("closed");
      }
      if (e) {
        return -1L;
      }
      paramLong = e.b(e.this).a(paramE, paramLong);
      if (paramLong == -1L)
      {
        e = true;
        a(true);
        return -1L;
      }
      return paramLong;
    }
    
    public void close()
      throws IOException
    {
      if (b) {
        return;
      }
      if (!e) {
        a(false);
      }
      b = true;
    }
  }
}
