package gK;

import java.io.IOException;

class c
  implements w
{
  c(a paramA, w paramW) {}
  
  public long a(e paramE, long paramLong)
    throws IOException
  {
    b.c();
    try
    {
      paramLong = a.a(paramE, paramLong);
      b.a(true);
      return paramLong;
    }
    catch (IOException paramE)
    {
      throw b.b(paramE);
    }
    finally
    {
      b.a(false);
    }
  }
  
  public x a()
  {
    return b;
  }
  
  public void close()
    throws IOException
  {
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
  
  public String toString()
  {
    return "AsyncTimeout.source(" + a + ")";
  }
}
