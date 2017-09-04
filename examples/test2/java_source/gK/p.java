package gK;

import java.io.IOException;
import java.io.InputStream;

final class p
  implements w
{
  p(x paramX, InputStream paramInputStream) {}
  
  public long a(e paramE, long paramLong)
    throws IOException
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (paramLong == 0L) {
      return 0L;
    }
    try
    {
      a.g();
      t localT = paramE.e(1);
      int i = (int)Math.min(paramLong, 8192 - c);
      i = b.read(a, c, i);
      if (i == -1) {
        return -1L;
      }
      c += i;
      b += i;
      return i;
    }
    catch (AssertionError paramE)
    {
      if (n.a(paramE)) {
        throw new IOException(paramE);
      }
      throw paramE;
    }
  }
  
  public x a()
  {
    return a;
  }
  
  public void close()
    throws IOException
  {
    b.close();
  }
  
  public String toString()
  {
    return "source(" + b + ")";
  }
}
