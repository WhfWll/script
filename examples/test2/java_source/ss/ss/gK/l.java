package ss.ss.gK;

import gK.e;
import gK.f;
import gK.g;
import gK.w;
import gK.x;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

class l
  implements w
{
  boolean a;
  
  l(j paramJ, g paramG, a paramA, f paramF) {}
  
  public long a(e paramE, long paramLong)
    throws IOException
  {
    try
    {
      paramLong = b.a(paramE, paramLong);
      if (paramLong == -1L)
      {
        if (!a)
        {
          a = true;
          d.close();
        }
        return -1L;
      }
    }
    catch (IOException paramE)
    {
      if (!a)
      {
        a = true;
        c.b();
      }
      throw paramE;
    }
    paramE.a(d.c(), paramE.b() - paramLong, paramLong);
    d.t();
    return paramLong;
  }
  
  public x a()
  {
    return b.a();
  }
  
  public void close()
    throws IOException
  {
    if ((!a) && (!ss.ss.j.a(this, 100, TimeUnit.MILLISECONDS)))
    {
      a = true;
      c.b();
    }
    b.close();
  }
}
