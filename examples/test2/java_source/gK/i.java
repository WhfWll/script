package gK;

import java.io.IOException;
import java.util.zip.Deflater;

public final class i
  implements v
{
  private final f a;
  private final Deflater b;
  private boolean c;
  
  i(f paramF, Deflater paramDeflater)
  {
    if (paramF == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramDeflater == null) {
      throw new IllegalArgumentException("inflater == null");
    }
    a = paramF;
    b = paramDeflater;
  }
  
  public i(v paramV, Deflater paramDeflater)
  {
    this(n.a(paramV), paramDeflater);
  }
  
  private void a(boolean paramBoolean)
    throws IOException
  {
    e localE = a.c();
    t localT;
    label119:
    do
    {
      localT = localE.e(1);
      if (paramBoolean) {}
      for (int i = b.deflate(a, c, 8192 - c, 2);; i = b.deflate(a, c, 8192 - c))
      {
        if (i <= 0) {
          break label119;
        }
        c += i;
        b += i;
        a.t();
        break;
      }
    } while (!b.needsInput());
    if (b == c)
    {
      a = localT.a();
      u.a(localT);
    }
  }
  
  public x a()
  {
    return a.a();
  }
  
  public void a_(e paramE, long paramLong)
    throws IOException
  {
    z.a(b, 0L, paramLong);
    while (paramLong > 0L)
    {
      t localT = a;
      int i = (int)Math.min(paramLong, c - b);
      b.setInput(a, b, i);
      a(false);
      b -= i;
      b += i;
      if (b == c)
      {
        a = localT.a();
        u.a(localT);
      }
      paramLong -= i;
    }
  }
  
  void b()
    throws IOException
  {
    b.finish();
    a(false);
  }
  
  public void close()
    throws IOException
  {
    if (c) {}
    for (;;)
    {
      return;
      Object localObject3 = null;
      try
      {
        b();
        try
        {
          b.end();
          localObject1 = localObject3;
        }
        catch (Throwable localThrowable1)
        {
          for (;;)
          {
            Object localObject1;
            label34:
            if (localObject3 != null) {
              localObject2 = localObject3;
            }
          }
        }
        try
        {
          a.close();
          localObject3 = localObject1;
        }
        catch (Throwable localThrowable3)
        {
          localObject3 = localObject2;
          if (localObject2 != null) {
            break label34;
          }
          localObject3 = localThrowable3;
          break label34;
        }
        c = true;
        if (localObject3 == null) {
          continue;
        }
        z.a(localObject3);
        return;
      }
      catch (Throwable localThrowable2)
      {
        Object localObject2;
        for (;;) {}
      }
    }
  }
  
  public void flush()
    throws IOException
  {
    a(true);
    a.flush();
  }
  
  public String toString()
  {
    return "DeflaterSink(" + a + ")";
  }
}
