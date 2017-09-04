package gK;

import java.io.IOException;

class b
  implements v
{
  b(a paramA, v paramV) {}
  
  public x a()
  {
    return b;
  }
  
  public void a_(e paramE, long paramLong)
    throws IOException
  {
    z.a(b, 0L, paramLong);
    if (paramLong > 0L)
    {
      t localT = a;
      long l1 = 0L;
      for (;;)
      {
        long l2 = l1;
        if (l1 < 65536L)
        {
          l1 = a.c - a.b + l1;
          if (l1 >= paramLong) {
            l2 = paramLong;
          }
        }
        else
        {
          b.c();
        }
        try
        {
          a.a_(paramE, l2);
          paramLong -= l2;
          b.a(true);
          break;
        }
        catch (IOException paramE)
        {
          throw b.b(paramE);
        }
        finally
        {
          b.a(false);
        }
        localT = f;
      }
    }
  }
  
  public void close()
    throws IOException
  {
    b.c();
    try
    {
      a.close();
      b.a(true);
      return;
    }
    catch (IOException localIOException)
    {
      throw b.b(localIOException);
    }
    finally
    {
      b.a(false);
    }
  }
  
  public void flush()
    throws IOException
  {
    b.c();
    try
    {
      a.flush();
      b.a(true);
      return;
    }
    catch (IOException localIOException)
    {
      throw b.b(localIOException);
    }
    finally
    {
      b.a(false);
    }
  }
  
  public String toString()
  {
    return "AsyncTimeout.sink(" + a + ")";
  }
}
