package ss.ss.ss;

import gK.e;
import gK.g;
import gK.v;
import gK.w;
import gK.x;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;

public final class p
{
  long a = 0L;
  long b;
  final a c;
  private final int e;
  private final d f;
  private final List<r> g;
  private List<r> h;
  private final b i;
  private final c j = new c();
  private final c k = new c();
  private a l = null;
  
  static
  {
    if (!p.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      return;
    }
  }
  
  p(int paramInt, d paramD, boolean paramBoolean1, boolean paramBoolean2, List<r> paramList)
  {
    if (paramD == null) {
      throw new NullPointerException("connection == null");
    }
    if (paramList == null) {
      throw new NullPointerException("requestHeaders == null");
    }
    e = paramInt;
    f = paramD;
    b = f.f(65536);
    i = new b(e.f(65536), null);
    c = new a();
    b.a(i, paramBoolean2);
    a.a(c, paramBoolean1);
    g = paramList;
  }
  
  private boolean d(a paramA)
  {
    if ((!d) && (Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    try
    {
      if (l != null) {
        return false;
      }
      if ((b.a(i)) && (a.a(c))) {
        return false;
      }
    }
    finally {}
    l = paramA;
    notifyAll();
    f.b(e);
    return true;
  }
  
  private void j()
    throws IOException
  {
    if ((!d) && (Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    for (;;)
    {
      try
      {
        boolean bool;
        if ((!b.a(i)) && (b.b(i)))
        {
          if (a.a(c)) {
            break label112;
          }
          if (a.b(c))
          {
            break label112;
            bool = b();
            if (m == 0) {
              break label95;
            }
            a(a.l);
            return;
          }
        }
        m = 0;
        continue;
        if (bool) {
          continue;
        }
      }
      finally {}
      label95:
      f.b(e);
      return;
      label112:
      int m = 1;
    }
  }
  
  private void k()
    throws IOException
  {
    if (a.b(c)) {
      throw new IOException("stream closed");
    }
    if (a.a(c)) {
      throw new IOException("stream finished");
    }
    if (l != null) {
      throw new IOException("stream was reset: " + l);
    }
  }
  
  private void l()
    throws InterruptedIOException
  {
    try
    {
      wait();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new InterruptedIOException();
    }
  }
  
  public int a()
  {
    return e;
  }
  
  void a(long paramLong)
  {
    b += paramLong;
    if (paramLong > 0L) {
      notifyAll();
    }
  }
  
  void a(g paramG, int paramInt)
    throws IOException
  {
    if ((!d) && (Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    i.a(paramG, paramInt);
  }
  
  void a(List<r> paramList, s paramS)
  {
    if ((!d) && (Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    Object localObject = null;
    boolean bool = true;
    label97:
    do
    {
      for (;;)
      {
        try
        {
          if (h == null)
          {
            if (paramS.c())
            {
              paramList = a.b;
              if (paramList == null) {
                break;
              }
              b(paramList);
              return;
            }
            h = paramList;
            bool = b();
            notifyAll();
            paramList = localObject;
            continue;
          }
          if (!paramS.d()) {
            break label97;
          }
        }
        finally {}
        paramList = a.e;
        continue;
        paramS = new ArrayList();
        paramS.addAll(h);
        paramS.addAll(paramList);
        h = paramS;
        paramList = localObject;
      }
    } while (bool);
    f.b(e);
  }
  
  public void a(a paramA)
    throws IOException
  {
    if (!d(paramA)) {
      return;
    }
    f.b(e, paramA);
  }
  
  public void b(a paramA)
  {
    if (!d(paramA)) {
      return;
    }
    f.a(e, paramA);
  }
  
  /* Error */
  public boolean b()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 58	ss/ss/ss/p:l	Lss/ss/ss/a;
    //   8: astore_2
    //   9: aload_2
    //   10: ifnull +7 -> 17
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_1
    //   16: ireturn
    //   17: aload_0
    //   18: getfield 91	ss/ss/ss/p:i	Lss/ss/ss/p$b;
    //   21: invokestatic 121	ss/ss/ss/p$b:a	(Lss/ss/ss/p$b;)Z
    //   24: ifne +13 -> 37
    //   27: aload_0
    //   28: getfield 91	ss/ss/ss/p:i	Lss/ss/ss/p$b;
    //   31: invokestatic 143	ss/ss/ss/p$b:b	(Lss/ss/ss/p$b;)Z
    //   34: ifeq +32 -> 66
    //   37: aload_0
    //   38: getfield 94	ss/ss/ss/p:c	Lss/ss/ss/p$a;
    //   41: invokestatic 124	ss/ss/ss/p$a:a	(Lss/ss/ss/p$a;)Z
    //   44: ifne +13 -> 57
    //   47: aload_0
    //   48: getfield 94	ss/ss/ss/p:c	Lss/ss/ss/p$a;
    //   51: invokestatic 145	ss/ss/ss/p$a:b	(Lss/ss/ss/p$a;)Z
    //   54: ifeq +12 -> 66
    //   57: aload_0
    //   58: getfield 189	ss/ss/ss/p:h	Ljava/util/List;
    //   61: astore_2
    //   62: aload_2
    //   63: ifnonnull -50 -> 13
    //   66: iconst_1
    //   67: istore_1
    //   68: goto -55 -> 13
    //   71: astore_2
    //   72: aload_0
    //   73: monitorexit
    //   74: aload_2
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	p
    //   1	67	1	bool	boolean
    //   8	55	2	localObject1	Object
    //   71	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   4	9	71	finally
    //   17	37	71	finally
    //   37	57	71	finally
    //   57	62	71	finally
  }
  
  void c(a paramA)
  {
    try
    {
      if (l == null)
      {
        l = paramA;
        notifyAll();
      }
      return;
    }
    finally
    {
      paramA = finally;
      throw paramA;
    }
  }
  
  public boolean c()
  {
    if ((e & 0x1) == 1) {}
    for (int m = 1; f.b == m; m = 0) {
      return true;
    }
    return false;
  }
  
  public List<r> d()
    throws IOException
  {
    try
    {
      j.c();
    }
    finally
    {
      try
      {
        while ((h == null) && (l == null)) {
          l();
        }
      }
      finally
      {
        j.b();
      }
    }
    j.b();
    if (h != null)
    {
      List localList = h;
      return localList;
    }
    throw new IOException("stream was reset: " + l);
  }
  
  public x e()
  {
    return j;
  }
  
  public x f()
  {
    return k;
  }
  
  public w g()
  {
    return i;
  }
  
  public v h()
  {
    try
    {
      if ((h == null) && (!c())) {
        throw new IllegalStateException("reply before requesting the sink");
      }
    }
    finally {}
    return c;
  }
  
  void i()
  {
    if ((!d) && (Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    try
    {
      b.a(i, true);
      boolean bool = b();
      notifyAll();
      if (!bool) {
        f.b(e);
      }
      return;
    }
    finally {}
  }
  
  final class a
    implements v
  {
    private final e c = new e();
    private boolean d;
    private boolean e;
    
    static
    {
      if (!p.class.desiredAssertionStatus()) {}
      for (boolean bool = true;; bool = false)
      {
        a = bool;
        return;
      }
    }
    
    a() {}
    
    /* Error */
    private void a(boolean paramBoolean)
      throws IOException
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 31	ss/ss/ss/p$a:b	Lss/ss/ss/p;
      //   4: astore 5
      //   6: aload 5
      //   8: monitorenter
      //   9: aload_0
      //   10: getfield 31	ss/ss/ss/p$a:b	Lss/ss/ss/p;
      //   13: invokestatic 45	ss/ss/ss/p:g	(Lss/ss/ss/p;)Lss/ss/ss/p$c;
      //   16: invokevirtual 49	ss/ss/ss/p$c:c	()V
      //   19: aload_0
      //   20: getfield 31	ss/ss/ss/p$a:b	Lss/ss/ss/p;
      //   23: getfield 52	ss/ss/ss/p:b	J
      //   26: lconst_0
      //   27: lcmp
      //   28: ifgt +60 -> 88
      //   31: aload_0
      //   32: getfield 54	ss/ss/ss/p$a:e	Z
      //   35: ifne +53 -> 88
      //   38: aload_0
      //   39: getfield 56	ss/ss/ss/p$a:d	Z
      //   42: ifne +46 -> 88
      //   45: aload_0
      //   46: getfield 31	ss/ss/ss/p$a:b	Lss/ss/ss/p;
      //   49: invokestatic 59	ss/ss/ss/p:d	(Lss/ss/ss/p;)Lss/ss/ss/a;
      //   52: ifnonnull +36 -> 88
      //   55: aload_0
      //   56: getfield 31	ss/ss/ss/p$a:b	Lss/ss/ss/p;
      //   59: invokestatic 61	ss/ss/ss/p:e	(Lss/ss/ss/p;)V
      //   62: goto -43 -> 19
      //   65: astore 6
      //   67: aload_0
      //   68: getfield 31	ss/ss/ss/p$a:b	Lss/ss/ss/p;
      //   71: invokestatic 45	ss/ss/ss/p:g	(Lss/ss/ss/p;)Lss/ss/ss/p$c;
      //   74: invokevirtual 63	ss/ss/ss/p$c:b	()V
      //   77: aload 6
      //   79: athrow
      //   80: astore 6
      //   82: aload 5
      //   84: monitorexit
      //   85: aload 6
      //   87: athrow
      //   88: aload_0
      //   89: getfield 31	ss/ss/ss/p$a:b	Lss/ss/ss/p;
      //   92: invokestatic 45	ss/ss/ss/p:g	(Lss/ss/ss/p;)Lss/ss/ss/p$c;
      //   95: invokevirtual 63	ss/ss/ss/p$c:b	()V
      //   98: aload_0
      //   99: getfield 31	ss/ss/ss/p$a:b	Lss/ss/ss/p;
      //   102: invokestatic 66	ss/ss/ss/p:h	(Lss/ss/ss/p;)V
      //   105: aload_0
      //   106: getfield 31	ss/ss/ss/p$a:b	Lss/ss/ss/p;
      //   109: getfield 52	ss/ss/ss/p:b	J
      //   112: aload_0
      //   113: getfield 38	ss/ss/ss/p$a:c	LgK/e;
      //   116: invokevirtual 69	gK/e:b	()J
      //   119: invokestatic 75	java/lang/Math:min	(JJ)J
      //   122: lstore_3
      //   123: aload_0
      //   124: getfield 31	ss/ss/ss/p$a:b	Lss/ss/ss/p;
      //   127: astore 6
      //   129: aload 6
      //   131: aload 6
      //   133: getfield 52	ss/ss/ss/p:b	J
      //   136: lload_3
      //   137: lsub
      //   138: putfield 52	ss/ss/ss/p:b	J
      //   141: aload 5
      //   143: monitorexit
      //   144: aload_0
      //   145: getfield 31	ss/ss/ss/p$a:b	Lss/ss/ss/p;
      //   148: invokestatic 45	ss/ss/ss/p:g	(Lss/ss/ss/p;)Lss/ss/ss/p$c;
      //   151: invokevirtual 49	ss/ss/ss/p$c:c	()V
      //   154: aload_0
      //   155: getfield 31	ss/ss/ss/p$a:b	Lss/ss/ss/p;
      //   158: invokestatic 78	ss/ss/ss/p:a	(Lss/ss/ss/p;)Lss/ss/ss/d;
      //   161: astore 5
      //   163: aload_0
      //   164: getfield 31	ss/ss/ss/p$a:b	Lss/ss/ss/p;
      //   167: invokestatic 81	ss/ss/ss/p:b	(Lss/ss/ss/p;)I
      //   170: istore_2
      //   171: iload_1
      //   172: ifeq +40 -> 212
      //   175: lload_3
      //   176: aload_0
      //   177: getfield 38	ss/ss/ss/p$a:c	LgK/e;
      //   180: invokevirtual 69	gK/e:b	()J
      //   183: lcmp
      //   184: ifne +28 -> 212
      //   187: iconst_1
      //   188: istore_1
      //   189: aload 5
      //   191: iload_2
      //   192: iload_1
      //   193: aload_0
      //   194: getfield 38	ss/ss/ss/p$a:c	LgK/e;
      //   197: lload_3
      //   198: invokevirtual 86	ss/ss/ss/d:a	(IZLgK/e;J)V
      //   201: aload_0
      //   202: getfield 31	ss/ss/ss/p$a:b	Lss/ss/ss/p;
      //   205: invokestatic 45	ss/ss/ss/p:g	(Lss/ss/ss/p;)Lss/ss/ss/p$c;
      //   208: invokevirtual 63	ss/ss/ss/p$c:b	()V
      //   211: return
      //   212: iconst_0
      //   213: istore_1
      //   214: goto -25 -> 189
      //   217: astore 5
      //   219: aload_0
      //   220: getfield 31	ss/ss/ss/p$a:b	Lss/ss/ss/p;
      //   223: invokestatic 45	ss/ss/ss/p:g	(Lss/ss/ss/p;)Lss/ss/ss/p$c;
      //   226: invokevirtual 63	ss/ss/ss/p$c:b	()V
      //   229: aload 5
      //   231: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	232	0	this	a
      //   0	232	1	paramBoolean	boolean
      //   170	22	2	i	int
      //   122	76	3	l	long
      //   4	186	5	localObject1	Object
      //   217	13	5	localObject2	Object
      //   65	13	6	localObject3	Object
      //   80	6	6	localObject4	Object
      //   127	5	6	localP	p
      // Exception table:
      //   from	to	target	type
      //   19	62	65	finally
      //   9	19	80	finally
      //   67	80	80	finally
      //   82	85	80	finally
      //   88	144	80	finally
      //   154	171	217	finally
      //   175	187	217	finally
      //   189	201	217	finally
    }
    
    public x a()
    {
      return p.g(p.this);
    }
    
    public void a_(e paramE, long paramLong)
      throws IOException
    {
      if ((!a) && (Thread.holdsLock(p.this))) {
        throw new AssertionError();
      }
      c.a_(paramE, paramLong);
      while (c.b() >= 16384L) {
        a(false);
      }
    }
    
    public void close()
      throws IOException
    {
      if ((!a) && (Thread.holdsLock(p.this))) {
        throw new AssertionError();
      }
      synchronized (p.this)
      {
        if (d) {
          return;
        }
        if (c.e) {
          break label113;
        }
        if (c.b() > 0L)
        {
          if (c.b() <= 0L) {
            break label113;
          }
          a(true);
        }
      }
      p.a(p.this).a(p.b(p.this), true, null, 0L);
      label113:
      synchronized (p.this)
      {
        d = true;
        p.a(p.this).c();
        p.f(p.this);
        return;
      }
    }
    
    public void flush()
      throws IOException
    {
      if ((!a) && (Thread.holdsLock(p.this))) {
        throw new AssertionError();
      }
      synchronized (p.this)
      {
        p.h(p.this);
        if (c.b() > 0L)
        {
          a(false);
          p.a(p.this).c();
        }
      }
    }
  }
  
  private final class b
    implements w
  {
    private final e c = new e();
    private final e d = new e();
    private final long e;
    private boolean f;
    private boolean g;
    
    static
    {
      if (!p.class.desiredAssertionStatus()) {}
      for (boolean bool = true;; bool = false)
      {
        a = bool;
        return;
      }
    }
    
    private b(long paramLong)
    {
      e = paramLong;
    }
    
    private void b()
      throws IOException
    {
      p.c(p.this).c();
      try
      {
        if (d.b() == 0L) {
          if ((!g) && (!f) && (p.d(p.this) == null)) {
            p.e(p.this);
          }
        }
        return;
      }
      finally
      {
        p.c(p.this).b();
      }
    }
    
    private void c()
      throws IOException
    {
      if (f) {
        throw new IOException("stream closed");
      }
      if (p.d(p.this) != null) {
        throw new IOException("stream was reset: " + p.d(p.this));
      }
    }
    
    public long a(e arg1, long paramLong)
      throws IOException
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      synchronized (p.this)
      {
        b();
        c();
        if (d.b() == 0L) {
          return -1L;
        }
        paramLong = d.a(???, Math.min(paramLong, d.b()));
        ??? = p.this;
        a += paramLong;
        if (a >= ae.f(65536) / 2)
        {
          p.a(p.this).a(p.b(p.this), a);
          a = 0L;
        }
        synchronized (p.a(p.this))
        {
          ??? = p.a(p.this);
          c += paramLong;
          if (ac >= ae.f(65536) / 2)
          {
            p.a(p.this).a(0, ac);
            ac = 0L;
          }
          return paramLong;
        }
      }
    }
    
    public x a()
    {
      return p.c(p.this);
    }
    
    void a(g paramG, long paramLong)
      throws IOException
    {
      long l = paramLong;
      if (!a)
      {
        l = paramLong;
        if (Thread.holdsLock(p.this)) {
          throw new AssertionError();
        }
      }
      for (;;)
      {
        l -= paramLong;
        synchronized (p.this)
        {
          if (d.b() == 0L)
          {
            i = 1;
            d.a(c);
            if (i != 0) {
              notifyAll();
            }
            if (l > 0L) {}
            boolean bool;
            synchronized (p.this)
            {
              bool = g;
              if (d.b() + l > e)
              {
                i = 1;
                if (i != 0)
                {
                  paramG.g(l);
                  b(a.h);
                }
              }
              else
              {
                i = 0;
              }
            }
            if (bool)
            {
              paramG.g(l);
              return;
            }
            paramLong = paramG.a(c, l);
            if (paramLong != -1L) {
              continue;
            }
            throw new EOFException();
          }
          int i = 0;
        }
      }
    }
    
    public void close()
      throws IOException
    {
      synchronized (p.this)
      {
        f = true;
        d.r();
        notifyAll();
        p.f(p.this);
        return;
      }
    }
  }
  
  class c
    extends gK.a
  {
    c() {}
    
    protected IOException a(IOException paramIOException)
    {
      SocketTimeoutException localSocketTimeoutException = new SocketTimeoutException("timeout");
      if (paramIOException != null) {
        localSocketTimeoutException.initCause(paramIOException);
      }
      return localSocketTimeoutException;
    }
    
    protected void a()
    {
      b(a.l);
    }
    
    public void b()
      throws IOException
    {
      if (a_()) {
        throw a(null);
      }
    }
  }
}
