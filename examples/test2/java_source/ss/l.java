package ss;

import java.lang.ref.Reference;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import ss.ss.d;
import ss.ss.gK.w;
import ss.ss.i;
import ss.ss.j;
import ss.ss.pK.c;

public final class l
{
  private static final Executor d;
  final i a = new i();
  boolean b;
  private final int e;
  private final long f;
  private final Runnable g = new m(this);
  private final Deque<c> h = new ArrayDeque();
  
  static
  {
    if (!l.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), j.a("OkHttp ConnectionPool", true));
      return;
    }
  }
  
  public l()
  {
    this(5, 5L, TimeUnit.MINUTES);
  }
  
  public l(int paramInt, long paramLong, TimeUnit paramTimeUnit)
  {
    e = paramInt;
    f = paramTimeUnit.toNanos(paramLong);
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("keepAliveDuration <= 0: " + paramLong);
    }
  }
  
  private int a(c paramC, long paramLong)
  {
    List localList = h;
    int i = 0;
    while (i < localList.size()) {
      if (((Reference)localList.get(i)).get() != null)
      {
        i += 1;
      }
      else
      {
        d.a.warning("A connection to " + paramC.a().a().a() + " was leaked. Did you forget to close a response body?");
        localList.remove(i);
        i = true;
        if (localList.isEmpty())
        {
          j = (paramLong - f);
          return 0;
        }
      }
    }
    return localList.size();
  }
  
  long a(long paramLong)
  {
    Object localObject1 = null;
    long l1 = Long.MIN_VALUE;
    for (;;)
    {
      int j;
      int i;
      try
      {
        Iterator localIterator = h.iterator();
        j = 0;
        i = 0;
        if (localIterator.hasNext())
        {
          c localC = (c)localIterator.next();
          if (a(localC, paramLong) > 0)
          {
            i += 1;
            continue;
          }
          long l2 = paramLong - j;
          if (l2 <= l1) {
            break label184;
          }
          localObject1 = localC;
          l1 = l2;
          break label184;
        }
        if ((l1 >= f) || (j > e))
        {
          h.remove(localObject1);
          j.a(localObject1.b());
          return 0L;
        }
        if (j > 0)
        {
          paramLong = f;
          return paramLong - l1;
        }
      }
      finally {}
      if (i > 0)
      {
        paramLong = f;
        return paramLong;
      }
      b = false;
      return -1L;
      label184:
      j += 1;
    }
  }
  
  c a(a paramA, w paramW)
  {
    if ((!c) && (!Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    Iterator localIterator = h.iterator();
    while (localIterator.hasNext())
    {
      c localC = (c)localIterator.next();
      if ((h.size() < g) && (paramA.equals(aa)) && (!i))
      {
        paramW.a(localC);
        return localC;
      }
    }
    return null;
  }
  
  void a(c paramC)
  {
    if ((!c) && (!Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    if (!b)
    {
      b = true;
      d.execute(g);
    }
    h.add(paramC);
  }
  
  boolean b(c paramC)
  {
    if ((!c) && (!Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    if ((i) || (e == 0))
    {
      h.remove(paramC);
      return true;
    }
    notifyAll();
    return false;
  }
}
