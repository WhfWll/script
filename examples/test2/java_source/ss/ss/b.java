package ss.ss;

import gK.f;
import gK.v;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import ss.ss.pK.a;

public final class b
  implements Closeable, Flushable
{
  static final Pattern a;
  private static final v p;
  private final a c;
  private long d;
  private final int e;
  private long f;
  private f g;
  private final LinkedHashMap<String, b> h;
  private int i;
  private boolean j;
  private boolean k;
  private boolean l;
  private long m;
  private final Executor n;
  private final Runnable o;
  
  static
  {
    if (!b.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      a = Pattern.compile("[a-z0-9_-]{1,120}");
      p = new c();
      return;
    }
  }
  
  private void a(a paramA, boolean paramBoolean)
    throws IOException
  {
    int i3 = 0;
    b localB;
    try
    {
      localB = a.a(paramA);
      if (b.a(localB) != paramA) {
        throw new IllegalStateException();
      }
    }
    finally {}
    int i2 = i3;
    if (paramBoolean)
    {
      i2 = i3;
      if (!b.f(localB))
      {
        int i1 = 0;
        for (;;)
        {
          i2 = i3;
          if (i1 >= e) {
            break;
          }
          if (a.b(paramA)[i1] == 0)
          {
            paramA.a();
            throw new IllegalStateException("Newly created entry didn't create value for index " + i1);
          }
          if (!c.b(b.d(localB)[i1]))
          {
            paramA.a();
            return;
          }
          i1 += 1;
        }
      }
    }
    for (;;)
    {
      long l1;
      if (i2 < e)
      {
        paramA = b.d(localB)[i2];
        if (paramBoolean)
        {
          if (c.b(paramA))
          {
            File localFile = b.c(localB)[i2];
            c.a(paramA, localFile);
            l1 = b.b(localB)[i2];
            long l2 = c.c(localFile);
            b.b(localB)[i2] = l2;
            f = (f - l1 + l2);
          }
        }
        else {
          c.a(paramA);
        }
      }
      else
      {
        i += 1;
        b.a(localB, null);
        if ((b.f(localB) | paramBoolean))
        {
          b.a(localB, true);
          g.b("CLEAN").h(32);
          g.b(b.e(localB));
          localB.a(g);
          g.h(10);
          if (paramBoolean)
          {
            l1 = m;
            m = (1L + l1);
            b.a(localB, l1);
          }
        }
        for (;;)
        {
          g.flush();
          if ((f <= d) && (!b())) {
            break;
          }
          n.execute(o);
          break;
          h.remove(b.e(localB));
          g.b("REMOVE").h(32);
          g.b(b.e(localB));
          g.h(10);
        }
      }
      i2 += 1;
    }
  }
  
  private boolean a(b paramB)
    throws IOException
  {
    if (b.a(paramB) != null) {
      a.a(b.a(paramB), true);
    }
    int i1 = 0;
    while (i1 < e)
    {
      c.a(b.c(paramB)[i1]);
      f -= b.b(paramB)[i1];
      b.b(paramB)[i1] = 0L;
      i1 += 1;
    }
    i += 1;
    g.b("REMOVE").h(32).b(b.e(paramB)).h(10);
    h.remove(b.e(paramB));
    if (b()) {
      n.execute(o);
    }
    return true;
  }
  
  private boolean b()
  {
    return (i >= 2000) && (i >= h.size());
  }
  
  private void c()
  {
    try
    {
      if (a()) {
        throw new IllegalStateException("cache is closed");
      }
    }
    finally {}
  }
  
  private void d()
    throws IOException
  {
    while (f > d) {
      a((b)h.values().iterator().next());
    }
    l = false;
  }
  
  public boolean a()
  {
    try
    {
      boolean bool = k;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void close()
    throws IOException
  {
    for (;;)
    {
      try
      {
        if ((!j) || (k))
        {
          k = true;
          return;
        }
        b[] arrayOfB = (b[])h.values().toArray(new b[h.size()]);
        int i2 = arrayOfB.length;
        int i1 = 0;
        if (i1 < i2)
        {
          b localB = arrayOfB[i1];
          if (b.a(localB) != null) {
            b.a(localB).a();
          }
        }
        else
        {
          d();
          g.close();
          g = null;
          k = true;
          continue;
        }
        i1 += 1;
      }
      finally {}
    }
  }
  
  /* Error */
  public void flush()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 232	ss/ss/b:j	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokespecial 244	ss/ss/b:c	()V
    //   18: aload_0
    //   19: invokespecial 240	ss/ss/b:d	()V
    //   22: aload_0
    //   23: getfield 144	ss/ss/b:g	LgK/f;
    //   26: invokeinterface 168 1 0
    //   31: goto -20 -> 11
    //   34: astore_2
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_2
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	b
    //   6	2	1	bool	boolean
    //   34	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	34	finally
    //   14	31	34	finally
  }
  
  public final class a
  {
    private final b.b b;
    private final boolean[] c;
    private boolean d;
    
    public void a()
      throws IOException
    {
      synchronized (a)
      {
        b.a(a, this, false);
        return;
      }
    }
  }
  
  private final class b
  {
    private final String a;
    private final long[] b;
    private final File[] c;
    private final File[] d;
    private boolean e;
    private b.a f;
    private long g;
    
    void a(f paramF)
      throws IOException
    {
      long[] arrayOfLong = b;
      int j = arrayOfLong.length;
      int i = 0;
      while (i < j)
      {
        long l = arrayOfLong[i];
        paramF.h(32).k(l);
        i += 1;
      }
    }
  }
}
