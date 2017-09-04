package gK;

import java.io.IOException;

final class r
  implements f
{
  public final e a = new e();
  public final v b;
  boolean c;
  
  r(v paramV)
  {
    if (paramV == null) {
      throw new IllegalArgumentException("sink == null");
    }
    b = paramV;
  }
  
  public long a(w paramW)
    throws IOException
  {
    if (paramW == null) {
      throw new IllegalArgumentException("source == null");
    }
    long l1 = 0L;
    for (;;)
    {
      long l2 = paramW.a(a, 8192L);
      if (l2 == -1L) {
        break;
      }
      l1 += l2;
      t();
    }
    return l1;
  }
  
  public x a()
  {
    return b.a();
  }
  
  public void a_(e paramE, long paramLong)
    throws IOException
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.a_(paramE, paramLong);
    t();
  }
  
  public f b(h paramH)
    throws IOException
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.a(paramH);
    return t();
  }
  
  public f b(String paramString)
    throws IOException
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.a(paramString);
    return t();
  }
  
  public e c()
  {
    return a;
  }
  
  public f c(byte[] paramArrayOfByte)
    throws IOException
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.b(paramArrayOfByte);
    return t();
  }
  
  public f c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.b(paramArrayOfByte, paramInt1, paramInt2);
    return t();
  }
  
  public void close()
    throws IOException
  {
    if (c) {}
    do
    {
      return;
      localObject2 = null;
      localObject1 = localObject2;
      for (;;)
      {
        try
        {
          if (a.b > 0L)
          {
            b.a_(a, a.b);
            localObject1 = localObject2;
          }
        }
        catch (Throwable localThrowable1)
        {
          continue;
        }
        try
        {
          b.close();
          localObject2 = localObject1;
        }
        catch (Throwable localThrowable2)
        {
          localObject2 = localObject1;
          if (localObject1 != null) {
            continue;
          }
          localObject2 = localThrowable2;
        }
      }
      c = true;
    } while (localObject2 == null);
    z.a(localObject2);
  }
  
  public f e()
    throws IOException
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    long l = a.b();
    if (l > 0L) {
      b.a_(a, l);
    }
    return this;
  }
  
  public f f(int paramInt)
    throws IOException
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.d(paramInt);
    return t();
  }
  
  public void flush()
    throws IOException
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    if (a.b > 0L) {
      b.a_(a, a.b);
    }
    b.flush();
  }
  
  public f g(int paramInt)
    throws IOException
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.c(paramInt);
    return t();
  }
  
  public f h(int paramInt)
    throws IOException
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.b(paramInt);
    return t();
  }
  
  public f j(long paramLong)
    throws IOException
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.i(paramLong);
    return t();
  }
  
  public f k(long paramLong)
    throws IOException
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    a.h(paramLong);
    return t();
  }
  
  public f t()
    throws IOException
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    long l = a.g();
    if (l > 0L) {
      b.a_(a, l);
    }
    return this;
  }
  
  public String toString()
  {
    return "buffer(" + b + ")";
  }
}
