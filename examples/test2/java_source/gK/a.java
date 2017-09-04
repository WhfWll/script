package gK;

import java.io.IOException;
import java.io.InterruptedIOException;

public class a
  extends x
{
  private static a a;
  private boolean c;
  private a d;
  private long e;
  
  public a() {}
  
  private static void a(a paramA, long paramLong, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        if (a == null)
        {
          a = new a();
          new a().start();
        }
        long l = System.nanoTime();
        if ((paramLong != 0L) && (paramBoolean))
        {
          e = (Math.min(paramLong, paramA.d() - l) + l);
          paramLong = paramA.b(l);
          localA = a;
          if ((d != null) && (paramLong >= d.b(l))) {
            break label175;
          }
          d = d;
          d = paramA;
          if (localA == a) {
            a.class.notify();
          }
          return;
        }
        if (paramLong != 0L)
        {
          e = (l + paramLong);
          continue;
        }
        if (!paramBoolean) {
          break label167;
        }
      }
      finally {}
      e = paramA.d();
      continue;
      label167:
      throw new AssertionError();
      label175:
      a localA = d;
    }
  }
  
  /* Error */
  private static boolean a(a paramA)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 21	gK/a:a	LgK/a;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnull +39 -> 47
    //   11: aload_2
    //   12: getfield 48	gK/a:d	LgK/a;
    //   15: aload_0
    //   16: if_acmpne +23 -> 39
    //   19: aload_2
    //   20: aload_0
    //   21: getfield 48	gK/a:d	LgK/a;
    //   24: putfield 48	gK/a:d	LgK/a;
    //   27: aload_0
    //   28: aconst_null
    //   29: putfield 48	gK/a:d	LgK/a;
    //   32: iconst_0
    //   33: istore_1
    //   34: ldc 2
    //   36: monitorexit
    //   37: iload_1
    //   38: ireturn
    //   39: aload_2
    //   40: getfield 48	gK/a:d	LgK/a;
    //   43: astore_2
    //   44: goto -37 -> 7
    //   47: iconst_1
    //   48: istore_1
    //   49: goto -15 -> 34
    //   52: astore_0
    //   53: ldc 2
    //   55: monitorexit
    //   56: aload_0
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	paramA	a
    //   33	16	1	bool	boolean
    //   6	38	2	localA	a
    // Exception table:
    //   from	to	target	type
    //   3	7	52	finally
    //   11	32	52	finally
    //   39	44	52	finally
  }
  
  private long b(long paramLong)
  {
    return e - paramLong;
  }
  
  static a e()
    throws InterruptedException
  {
    a localA1 = null;
    for (;;)
    {
      a localA2;
      try
      {
        localA2 = ad;
        if (localA2 == null)
        {
          a.class.wait();
          return localA1;
        }
        long l1 = localA2.b(System.nanoTime());
        if (l1 > 0L)
        {
          long l2 = l1 / 1000000L;
          a.class.wait(l2, (int)(l1 - 1000000L * l2));
          continue;
        }
        ad = d;
      }
      finally {}
      d = null;
      Object localObject2 = localA2;
    }
  }
  
  public final v a(v paramV)
  {
    return new b(this, paramV);
  }
  
  public final w a(w paramW)
  {
    return new c(this, paramW);
  }
  
  protected IOException a(IOException paramIOException)
  {
    InterruptedIOException localInterruptedIOException = new InterruptedIOException("timeout");
    if (paramIOException != null) {
      localInterruptedIOException.initCause(paramIOException);
    }
    return localInterruptedIOException;
  }
  
  protected void a() {}
  
  final void a(boolean paramBoolean)
    throws IOException
  {
    if ((a_()) && (paramBoolean)) {
      throw a(null);
    }
  }
  
  public final boolean a_()
  {
    if (!c) {
      return false;
    }
    c = false;
    return a(this);
  }
  
  final IOException b(IOException paramIOException)
    throws IOException
  {
    if (!a_()) {
      return paramIOException;
    }
    return a(paramIOException);
  }
  
  public final void c()
  {
    if (c) {
      throw new IllegalStateException("Unbalanced enter/exit");
    }
    long l = b_();
    boolean bool = c_();
    if ((l == 0L) && (!bool)) {
      return;
    }
    c = true;
    a(this, l, bool);
  }
  
  private static final class a
    extends Thread
  {
    public a()
    {
      super();
      setDaemon(true);
    }
    
    public void run()
    {
      try
      {
        for (;;)
        {
          a localA = a.e();
          if (localA != null) {
            localA.a();
          }
        }
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
}
