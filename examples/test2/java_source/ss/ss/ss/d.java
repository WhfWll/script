package ss.ss.ss;

import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class d
  implements Closeable
{
  private static final ExecutorService l;
  final ss.ae a;
  final boolean b;
  long c = 0L;
  long d;
  ac e = new ac();
  final ac f = new ac();
  final ae g;
  final Socket h;
  final c i;
  final c j;
  private final b m;
  private final Map<Integer, p> n = new HashMap();
  private final String o;
  private int p;
  private int q;
  private boolean r;
  private long s = System.nanoTime();
  private final ExecutorService t;
  private Map<Integer, z> u;
  private final aa v;
  private int w;
  private boolean x = false;
  private final Set<Integer> y = new LinkedHashSet();
  
  static
  {
    if (!d.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      k = bool;
      l = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), ss.ss.j.a("OkHttp FramedConnection", true));
      return;
    }
  }
  
  private d(a paramA)
    throws IOException
  {
    a = a.a(paramA);
    v = a.b(paramA);
    b = a.c(paramA);
    m = a.d(paramA);
    int i1;
    if (a.c(paramA))
    {
      i1 = 1;
      q = i1;
      if ((a.c(paramA)) && (a == ss.ae.d)) {
        q += 2;
      }
      i1 = i2;
      if (a.c(paramA)) {
        i1 = 1;
      }
      w = i1;
      if (a.c(paramA)) {
        e.a(7, 0, 16777216);
      }
      o = a.e(paramA);
      if (a != ss.ae.d) {
        break label370;
      }
      g = new u();
      t = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), ss.ss.j.a(String.format("OkHttp %s Push Observer", new Object[] { o }), true));
      f.a(7, 0, 65535);
      f.a(5, 0, 16384);
    }
    for (;;)
    {
      d = f.f(65536);
      h = a.f(paramA);
      i = g.a(a.g(paramA), b);
      j = new c(g.a(a.h(paramA), b), null);
      new Thread(j).start();
      return;
      i1 = 2;
      break;
      label370:
      if (a != ss.ae.c) {
        break label399;
      }
      g = new ad();
      t = null;
    }
    label399:
    throw new AssertionError(a);
  }
  
  private p a(int paramInt, List<r> paramList, boolean paramBoolean1, boolean paramBoolean2)
    throws IOException
  {
    boolean bool2 = true;
    boolean bool1;
    if (!paramBoolean1)
    {
      bool1 = true;
      if (paramBoolean2) {
        break label64;
      }
    }
    label64:
    for (paramBoolean2 = bool2;; paramBoolean2 = false)
    {
      synchronized (i)
      {
        try
        {
          if (!r) {
            break label70;
          }
          throw new IOException("shutdown");
        }
        finally {}
      }
      bool1 = false;
      break;
    }
    label70:
    int i1 = q;
    q += 2;
    p localP = new p(i1, this, bool1, paramBoolean2, paramList);
    if (localP.b())
    {
      n.put(Integer.valueOf(i1), localP);
      a(false);
    }
    if (paramInt == 0) {
      i.a(bool1, paramBoolean2, i1, paramInt, paramList);
    }
    for (;;)
    {
      if (!paramBoolean1) {
        i.b();
      }
      return localP;
      if (b) {
        throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
      }
      i.a(paramInt, i1, paramList);
    }
  }
  
  private void a(int paramInt1, gK.g paramG, int paramInt2, boolean paramBoolean)
    throws IOException
  {
    gK.e localE = new gK.e();
    paramG.a(paramInt2);
    paramG.a(localE, paramInt2);
    if (localE.b() != paramInt2) {
      throw new IOException(localE.b() + " != " + paramInt2);
    }
    t.execute(new j(this, "OkHttp %s Push Data[%s]", new Object[] { o, Integer.valueOf(paramInt1) }, paramInt1, localE, paramInt2, paramBoolean));
  }
  
  private void a(int paramInt, List<r> paramList)
  {
    try
    {
      if (y.contains(Integer.valueOf(paramInt)))
      {
        a(paramInt, a.b);
        return;
      }
      y.add(Integer.valueOf(paramInt));
      t.execute(new h(this, "OkHttp %s Push Request[%s]", new Object[] { o, Integer.valueOf(paramInt) }, paramInt, paramList));
      return;
    }
    finally {}
  }
  
  private void a(int paramInt, List<r> paramList, boolean paramBoolean)
  {
    t.execute(new i(this, "OkHttp %s Push Headers[%s]", new Object[] { o, Integer.valueOf(paramInt) }, paramInt, paramList, paramBoolean));
  }
  
  /* Error */
  private void a(a paramA1, a paramA2)
    throws IOException
  {
    // Byte code:
    //   0: getstatic 65	ss/ss/ss/d:k	Z
    //   3: ifne +18 -> 21
    //   6: aload_0
    //   7: invokestatic 369	java/lang/Thread:holdsLock	(Ljava/lang/Object;)Z
    //   10: ifeq +11 -> 21
    //   13: new 230	java/lang/AssertionError
    //   16: dup
    //   17: invokespecial 370	java/lang/AssertionError:<init>	()V
    //   20: athrow
    //   21: aload_0
    //   22: aload_1
    //   23: invokevirtual 373	ss/ss/ss/d:a	(Lss/ss/ss/a;)V
    //   26: aconst_null
    //   27: astore_1
    //   28: aload_0
    //   29: monitorenter
    //   30: aload_0
    //   31: getfield 103	ss/ss/ss/d:n	Ljava/util/Map;
    //   34: invokeinterface 376 1 0
    //   39: ifne +247 -> 286
    //   42: aload_0
    //   43: getfield 103	ss/ss/ss/d:n	Ljava/util/Map;
    //   46: invokeinterface 380 1 0
    //   51: aload_0
    //   52: getfield 103	ss/ss/ss/d:n	Ljava/util/Map;
    //   55: invokeinterface 384 1 0
    //   60: anewarray 248	ss/ss/ss/p
    //   63: invokeinterface 390 2 0
    //   68: checkcast 392	[Lss/ss/ss/p;
    //   71: astore 6
    //   73: aload_0
    //   74: getfield 103	ss/ss/ss/d:n	Ljava/util/Map;
    //   77: invokeinterface 395 1 0
    //   82: aload_0
    //   83: iconst_0
    //   84: invokespecial 268	ss/ss/ss/d:a	(Z)V
    //   87: aload_0
    //   88: getfield 397	ss/ss/ss/d:u	Ljava/util/Map;
    //   91: ifnull +189 -> 280
    //   94: aload_0
    //   95: getfield 397	ss/ss/ss/d:u	Ljava/util/Map;
    //   98: invokeinterface 380 1 0
    //   103: aload_0
    //   104: getfield 397	ss/ss/ss/d:u	Ljava/util/Map;
    //   107: invokeinterface 384 1 0
    //   112: anewarray 399	ss/ss/ss/z
    //   115: invokeinterface 390 2 0
    //   120: checkcast 401	[Lss/ss/ss/z;
    //   123: astore 7
    //   125: aload_0
    //   126: aconst_null
    //   127: putfield 397	ss/ss/ss/d:u	Ljava/util/Map;
    //   130: aload_0
    //   131: monitorexit
    //   132: aload_1
    //   133: astore 5
    //   135: aload 6
    //   137: ifnull +69 -> 206
    //   140: aload 6
    //   142: arraylength
    //   143: istore 4
    //   145: iconst_0
    //   146: istore_3
    //   147: iload_3
    //   148: iload 4
    //   150: if_icmpge +53 -> 203
    //   153: aload 6
    //   155: iload_3
    //   156: aaload
    //   157: astore 5
    //   159: aload 5
    //   161: aload_2
    //   162: invokevirtual 402	ss/ss/ss/p:a	(Lss/ss/ss/a;)V
    //   165: aload_1
    //   166: astore 5
    //   168: iload_3
    //   169: iconst_1
    //   170: iadd
    //   171: istore_3
    //   172: aload 5
    //   174: astore_1
    //   175: goto -28 -> 147
    //   178: astore_1
    //   179: goto -151 -> 28
    //   182: astore_1
    //   183: aload_0
    //   184: monitorexit
    //   185: aload_1
    //   186: athrow
    //   187: astore 8
    //   189: aload_1
    //   190: astore 5
    //   192: aload_1
    //   193: ifnull -25 -> 168
    //   196: aload 8
    //   198: astore 5
    //   200: goto -32 -> 168
    //   203: aload_1
    //   204: astore 5
    //   206: aload 7
    //   208: ifnull +30 -> 238
    //   211: aload 7
    //   213: arraylength
    //   214: istore 4
    //   216: iconst_0
    //   217: istore_3
    //   218: iload_3
    //   219: iload 4
    //   221: if_icmpge +17 -> 238
    //   224: aload 7
    //   226: iload_3
    //   227: aaload
    //   228: invokevirtual 404	ss/ss/ss/z:c	()V
    //   231: iload_3
    //   232: iconst_1
    //   233: iadd
    //   234: istore_3
    //   235: goto -17 -> 218
    //   238: aload_0
    //   239: getfield 204	ss/ss/ss/d:i	Lss/ss/ss/c;
    //   242: invokeinterface 407 1 0
    //   247: aload 5
    //   249: astore_1
    //   250: aload_0
    //   251: getfield 194	ss/ss/ss/d:h	Ljava/net/Socket;
    //   254: invokevirtual 410	java/net/Socket:close	()V
    //   257: aload_1
    //   258: ifnull +17 -> 275
    //   261: aload_1
    //   262: athrow
    //   263: astore_1
    //   264: aload 5
    //   266: ifnull -16 -> 250
    //   269: aload 5
    //   271: astore_1
    //   272: goto -22 -> 250
    //   275: return
    //   276: astore_1
    //   277: goto -20 -> 257
    //   280: aconst_null
    //   281: astore 7
    //   283: goto -153 -> 130
    //   286: aconst_null
    //   287: astore 6
    //   289: goto -202 -> 87
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	292	0	this	d
    //   0	292	1	paramA1	a
    //   0	292	2	paramA2	a
    //   146	89	3	i1	int
    //   143	79	4	i2	int
    //   133	137	5	localObject	Object
    //   71	217	6	arrayOfP	p[]
    //   123	159	7	arrayOfZ	z[]
    //   187	10	8	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   21	26	178	java/io/IOException
    //   30	87	182	finally
    //   87	130	182	finally
    //   130	132	182	finally
    //   183	185	182	finally
    //   159	165	187	java/io/IOException
    //   238	247	263	java/io/IOException
    //   250	257	276	java/io/IOException
  }
  
  private void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        l1 = System.nanoTime();
        s = l1;
        return;
      }
      finally {}
      long l1 = Long.MAX_VALUE;
    }
  }
  
  private void a(boolean paramBoolean, int paramInt1, int paramInt2, z paramZ)
  {
    l.execute(new g(this, "OkHttp %s ping %08x%08x", new Object[] { o, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) }, paramBoolean, paramInt1, paramInt2, paramZ));
  }
  
  private void b(boolean paramBoolean, int paramInt1, int paramInt2, z paramZ)
    throws IOException
  {
    c localC = i;
    if (paramZ != null) {}
    try
    {
      paramZ.a();
      i.a(paramBoolean, paramInt1, paramInt2);
      return;
    }
    finally {}
  }
  
  /* Error */
  private z c(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 397	ss/ss/ss/d:u	Ljava/util/Map;
    //   6: ifnull +24 -> 30
    //   9: aload_0
    //   10: getfield 397	ss/ss/ss/d:u	Ljava/util/Map;
    //   13: iload_1
    //   14: invokestatic 259	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   17: invokeinterface 460 2 0
    //   22: checkcast 399	ss/ss/ss/z
    //   25: astore_2
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_2
    //   29: areturn
    //   30: aconst_null
    //   31: astore_2
    //   32: goto -6 -> 26
    //   35: astore_2
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_2
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	this	d
    //   0	40	1	paramInt	int
    //   25	7	2	localZ	z
    //   35	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	26	35	finally
  }
  
  private void c(int paramInt, a paramA)
  {
    t.execute(new k(this, "OkHttp %s Push Reset[%s]", new Object[] { o, Integer.valueOf(paramInt) }, paramInt, paramA));
  }
  
  private boolean d(int paramInt)
  {
    return (a == ss.ae.d) && (paramInt != 0) && ((paramInt & 0x1) == 0);
  }
  
  public ss.ae a()
  {
    return a;
  }
  
  p a(int paramInt)
  {
    try
    {
      p localP = (p)n.get(Integer.valueOf(paramInt));
      return localP;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public p a(List<r> paramList, boolean paramBoolean1, boolean paramBoolean2)
    throws IOException
  {
    return a(0, paramList, paramBoolean1, paramBoolean2);
  }
  
  void a(int paramInt, long paramLong)
  {
    l.execute(new f(this, "OkHttp Window Update %s stream %d", new Object[] { o, Integer.valueOf(paramInt) }, paramInt, paramLong));
  }
  
  void a(int paramInt, a paramA)
  {
    l.submit(new e(this, "OkHttp %s stream %d", new Object[] { o, Integer.valueOf(paramInt) }, paramInt, paramA));
  }
  
  public void a(int paramInt, boolean paramBoolean, gK.e paramE, long paramLong)
    throws IOException
  {
    long l1 = paramLong;
    if (paramLong == 0L)
    {
      i.a(paramBoolean, paramInt, paramE, 0);
      return;
    }
    for (;;)
    {
      try
      {
        int i1 = Math.min((int)Math.min(l1, d), i.c());
        d -= i1;
        l1 -= i1;
        c localC = i;
        if ((!paramBoolean) || (l1 != 0L)) {
          break label170;
        }
        bool = true;
        localC.a(bool, paramInt, paramE, i1);
        if (l1 <= 0L) {
          break;
        }
        try
        {
          if (d > 0L) {
            continue;
          }
          if (!n.containsKey(Integer.valueOf(paramInt))) {
            throw new IOException("stream closed");
          }
        }
        catch (InterruptedException paramE)
        {
          throw new InterruptedIOException();
        }
        wait();
      }
      finally {}
      continue;
      label170:
      boolean bool = false;
    }
  }
  
  void a(long paramLong)
  {
    d += paramLong;
    if (paramLong > 0L) {
      notifyAll();
    }
  }
  
  public void a(a paramA)
    throws IOException
  {
    int i1;
    synchronized (i) {}
  }
  
  public int b()
  {
    try
    {
      int i1 = f.d(Integer.MAX_VALUE);
      return i1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  p b(int paramInt)
  {
    try
    {
      p localP = (p)n.remove(Integer.valueOf(paramInt));
      if ((localP != null) && (n.isEmpty())) {
        a(true);
      }
      notifyAll();
      return localP;
    }
    finally {}
  }
  
  void b(int paramInt, a paramA)
    throws IOException
  {
    i.a(paramInt, paramA);
  }
  
  public void c()
    throws IOException
  {
    i.b();
  }
  
  public void close()
    throws IOException
  {
    a(a.a, a.l);
  }
  
  public void d()
    throws IOException
  {
    i.a();
    i.b(e);
    int i1 = e.f(65536);
    if (i1 != 65536) {
      i.a(0, i1 - 65536);
    }
  }
  
  public static class a
  {
    private Socket a;
    private String b;
    private gK.g c;
    private gK.f d;
    private d.b e = d.b.a;
    private ss.ae f = ss.ae.c;
    private aa g = aa.a;
    private boolean h;
    
    public a(boolean paramBoolean)
      throws IOException
    {
      h = paramBoolean;
    }
    
    public a a(Socket paramSocket, String paramString, gK.g paramG, gK.f paramF)
    {
      a = paramSocket;
      b = paramString;
      c = paramG;
      d = paramF;
      return this;
    }
    
    public a a(ss.ae paramAe)
    {
      f = paramAe;
      return this;
    }
    
    public a a(d.b paramB)
    {
      e = paramB;
      return this;
    }
    
    public d a()
      throws IOException
    {
      return new d(this, null);
    }
  }
  
  public static abstract class b
  {
    public static final b a = new l();
    
    public b() {}
    
    public void a(d paramD) {}
    
    public abstract void a(p paramP)
      throws IOException;
  }
  
  class c
    extends ss.ss.f
    implements b.a
  {
    final b b;
    
    private c(b paramB)
    {
      super(new Object[] { d.a(d.this) });
      b = paramB;
    }
    
    private void a(ac paramAc)
    {
      d.e().execute(new o(this, "OkHttp %s ACK Settings", new Object[] { d.a(d.this) }, paramAc));
    }
    
    /* Error */
    protected void a()
    {
      // Byte code:
      //   0: getstatic 60	ss/ss/ss/a:g	Lss/ss/ss/a;
      //   3: astore_3
      //   4: getstatic 60	ss/ss/ss/a:g	Lss/ss/ss/a;
      //   7: astore 4
      //   9: aload_3
      //   10: astore_2
      //   11: aload_3
      //   12: astore_1
      //   13: aload_0
      //   14: getfield 16	ss/ss/ss/d$c:c	Lss/ss/ss/d;
      //   17: getfield 63	ss/ss/ss/d:b	Z
      //   20: ifne +16 -> 36
      //   23: aload_3
      //   24: astore_2
      //   25: aload_3
      //   26: astore_1
      //   27: aload_0
      //   28: getfield 29	ss/ss/ss/d$c:b	Lss/ss/ss/b;
      //   31: invokeinterface 67 1 0
      //   36: aload_3
      //   37: astore_2
      //   38: aload_3
      //   39: astore_1
      //   40: aload_0
      //   41: getfield 29	ss/ss/ss/d$c:b	Lss/ss/ss/b;
      //   44: aload_0
      //   45: invokeinterface 70 2 0
      //   50: ifne -14 -> 36
      //   53: aload_3
      //   54: astore_2
      //   55: aload_3
      //   56: astore_1
      //   57: getstatic 72	ss/ss/ss/a:a	Lss/ss/ss/a;
      //   60: astore_3
      //   61: aload_3
      //   62: astore_2
      //   63: aload_3
      //   64: astore_1
      //   65: getstatic 75	ss/ss/ss/a:l	Lss/ss/ss/a;
      //   68: astore 5
      //   70: aload_0
      //   71: getfield 16	ss/ss/ss/d$c:c	Lss/ss/ss/d;
      //   74: aload_3
      //   75: aload 5
      //   77: invokestatic 78	ss/ss/ss/d:a	(Lss/ss/ss/d;Lss/ss/ss/a;Lss/ss/ss/a;)V
      //   80: aload_0
      //   81: getfield 29	ss/ss/ss/d$c:b	Lss/ss/ss/b;
      //   84: invokestatic 83	ss/ss/j:a	(Ljava/io/Closeable;)V
      //   87: return
      //   88: astore_1
      //   89: aload_2
      //   90: astore_1
      //   91: getstatic 85	ss/ss/ss/a:b	Lss/ss/ss/a;
      //   94: astore_3
      //   95: getstatic 85	ss/ss/ss/a:b	Lss/ss/ss/a;
      //   98: astore_1
      //   99: aload_0
      //   100: getfield 16	ss/ss/ss/d$c:c	Lss/ss/ss/d;
      //   103: aload_3
      //   104: aload_1
      //   105: invokestatic 78	ss/ss/ss/d:a	(Lss/ss/ss/d;Lss/ss/ss/a;Lss/ss/ss/a;)V
      //   108: aload_0
      //   109: getfield 29	ss/ss/ss/d$c:b	Lss/ss/ss/b;
      //   112: invokestatic 83	ss/ss/j:a	(Ljava/io/Closeable;)V
      //   115: return
      //   116: astore_2
      //   117: aload_1
      //   118: astore_3
      //   119: aload_2
      //   120: astore_1
      //   121: aload_0
      //   122: getfield 16	ss/ss/ss/d$c:c	Lss/ss/ss/d;
      //   125: aload_3
      //   126: aload 4
      //   128: invokestatic 78	ss/ss/ss/d:a	(Lss/ss/ss/d;Lss/ss/ss/a;Lss/ss/ss/a;)V
      //   131: aload_0
      //   132: getfield 29	ss/ss/ss/d$c:b	Lss/ss/ss/b;
      //   135: invokestatic 83	ss/ss/j:a	(Ljava/io/Closeable;)V
      //   138: aload_1
      //   139: athrow
      //   140: astore_2
      //   141: goto -10 -> 131
      //   144: astore_1
      //   145: goto -24 -> 121
      //   148: astore_1
      //   149: goto -41 -> 108
      //   152: astore_1
      //   153: goto -73 -> 80
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	156	0	this	c
      //   12	53	1	localObject1	Object
      //   88	1	1	localIOException1	IOException
      //   90	49	1	localObject2	Object
      //   144	1	1	localObject3	Object
      //   148	1	1	localIOException2	IOException
      //   152	1	1	localIOException3	IOException
      //   10	80	2	localObject4	Object
      //   116	4	2	localObject5	Object
      //   140	1	2	localIOException4	IOException
      //   3	123	3	localObject6	Object
      //   7	120	4	localA1	a
      //   68	8	5	localA2	a
      // Exception table:
      //   from	to	target	type
      //   13	23	88	java/io/IOException
      //   27	36	88	java/io/IOException
      //   40	53	88	java/io/IOException
      //   57	61	88	java/io/IOException
      //   65	70	88	java/io/IOException
      //   13	23	116	finally
      //   27	36	116	finally
      //   40	53	116	finally
      //   57	61	116	finally
      //   65	70	116	finally
      //   91	95	116	finally
      //   121	131	140	java/io/IOException
      //   95	99	144	finally
      //   99	108	148	java/io/IOException
      //   70	80	152	java/io/IOException
    }
    
    public void a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean) {}
    
    public void a(int paramInt1, int paramInt2, List<r> paramList)
    {
      d.a(d.this, paramInt2, paramList);
    }
    
    public void a(int paramInt, long paramLong)
    {
      if (paramInt == 0) {
        synchronized (d.this)
        {
          d localD = d.this;
          d += paramLong;
          notifyAll();
          return;
        }
      }
      ??? = a(paramInt);
      if (??? != null) {
        try
        {
          ((p)???).a(paramLong);
          return;
        }
        finally {}
      }
    }
    
    public void a(int paramInt, a paramA)
    {
      if (d.a(d.this, paramInt)) {
        d.a(d.this, paramInt, paramA);
      }
      p localP;
      do
      {
        return;
        localP = b(paramInt);
      } while (localP == null);
      localP.c(paramA);
    }
    
    public void a(int paramInt, a arg2, gK.h paramH)
    {
      if (paramH.f() > 0) {}
      synchronized (d.this)
      {
        paramH = (p[])d.e(d.this).values().toArray(new p[d.e(d.this).size()]);
        d.b(d.this, true);
        int j = paramH.length;
        int i = 0;
        if (i < j)
        {
          ??? = paramH[i];
          if ((???.a() > paramInt) && (???.c()))
          {
            ???.c(a.k);
            b(???.a());
          }
          i += 1;
        }
      }
    }
    
    public void a(boolean paramBoolean, int paramInt1, int paramInt2)
    {
      if (paramBoolean)
      {
        z localZ = d.c(d.this, paramInt1);
        if (localZ != null) {
          localZ.b();
        }
        return;
      }
      d.b(d.this, true, paramInt1, paramInt2, null);
    }
    
    public void a(boolean paramBoolean, int paramInt1, gK.g paramG, int paramInt2)
      throws IOException
    {
      if (d.a(d.this, paramInt1)) {
        d.a(d.this, paramInt1, paramG, paramInt2, paramBoolean);
      }
      p localP;
      do
      {
        return;
        localP = a(paramInt1);
        if (localP == null)
        {
          d.this.a(paramInt1, a.c);
          paramG.g(paramInt2);
          return;
        }
        localP.a(paramG, paramInt2);
      } while (!paramBoolean);
      localP.i();
    }
    
    public void a(boolean paramBoolean, ac paramAc)
    {
      for (;;)
      {
        int i;
        synchronized (d.this)
        {
          i = f.f(65536);
          if (paramBoolean) {
            f.a();
          }
          f.a(paramAc);
          if (a() == ss.ae.d) {
            a(paramAc);
          }
          int j = f.f(65536);
          if ((j == -1) || (j == i)) {
            break label278;
          }
          l = j - i;
          if (!d.g(d.this))
          {
            a(l);
            d.a(d.this, true);
          }
          if (d.e(d.this).isEmpty()) {
            break label273;
          }
          paramAc = (p[])d.e(d.this).values().toArray(new p[d.e(d.this).size()]);
          d.e().execute(new n(this, "OkHttp %s settings", new Object[] { d.a(d.this) }));
          if ((paramAc == null) || (l == 0L)) {
            break label272;
          }
          j = paramAc.length;
          i = 0;
          if (i >= j) {
            break label272;
          }
        }
        synchronized (paramAc[i])
        {
          ???.a(l);
          i += 1;
          continue;
          paramAc = finally;
          throw paramAc;
        }
        label272:
        return;
        label273:
        paramAc = null;
        continue;
        label278:
        paramAc = null;
        long l = 0L;
      }
    }
    
    public void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<r> paramList, s paramS)
    {
      if (d.a(d.this, paramInt1)) {
        d.a(d.this, paramInt1, paramList, paramBoolean2);
      }
      p localP;
      do
      {
        return;
        synchronized (d.this)
        {
          if (d.b(d.this)) {
            return;
          }
        }
        localP = a(paramInt1);
        if (localP == null)
        {
          if (paramS.a())
          {
            d.this.a(paramInt1, a.c);
            return;
          }
          if (paramInt1 <= d.c(d.this)) {
            return;
          }
          if (paramInt1 % 2 == d.d(d.this) % 2) {
            return;
          }
          paramList = new p(paramInt1, d.this, paramBoolean1, paramBoolean2, paramList);
          d.b(d.this, paramInt1);
          d.e(d.this).put(Integer.valueOf(paramInt1), paramList);
          d.e().execute(new m(this, "OkHttp %s stream %d", new Object[] { d.a(d.this), Integer.valueOf(paramInt1) }, paramList));
          return;
        }
        if (paramS.b())
        {
          localP.b(a.b);
          b(paramInt1);
          return;
        }
        localP.a(paramList, paramS);
      } while (!paramBoolean2);
      localP.i();
    }
    
    public void b() {}
  }
}
