package gK;

import java.io.IOException;
import java.io.OutputStream;

final class o
  implements v
{
  o(x paramX, OutputStream paramOutputStream) {}
  
  public x a()
  {
    return a;
  }
  
  public void a_(e paramE, long paramLong)
    throws IOException
  {
    z.a(b, 0L, paramLong);
    while (paramLong > 0L)
    {
      a.g();
      t localT = a;
      int i = (int)Math.min(paramLong, c - b);
      b.write(a, b, i);
      b += i;
      long l = paramLong - i;
      b -= i;
      paramLong = l;
      if (b == c)
      {
        a = localT.a();
        u.a(localT);
        paramLong = l;
      }
    }
  }
  
  public void close()
    throws IOException
  {
    b.close();
  }
  
  public void flush()
    throws IOException
  {
    b.flush();
  }
  
  public String toString()
  {
    return "sink(" + b + ")";
  }
}
