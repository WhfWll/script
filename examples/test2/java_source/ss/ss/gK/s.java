package ss.ss.gK;

import gK.e;
import gK.v;
import gK.x;
import java.io.IOException;
import java.net.ProtocolException;
import ss.ss.j;

public final class s
  implements v
{
  private boolean a;
  private final int b;
  private final e c = new e();
  
  public s()
  {
    this(-1);
  }
  
  public s(int paramInt)
  {
    b = paramInt;
  }
  
  public x a()
  {
    return x.b;
  }
  
  public void a(v paramV)
    throws IOException
  {
    e localE = new e();
    c.a(localE, 0L, c.b());
    paramV.a_(localE, localE.b());
  }
  
  public void a_(e paramE, long paramLong)
    throws IOException
  {
    if (a) {
      throw new IllegalStateException("closed");
    }
    j.a(paramE.b(), 0L, paramLong);
    if ((b != -1) && (c.b() > b - paramLong)) {
      throw new ProtocolException("exceeded content-length limit of " + b + " bytes");
    }
    c.a_(paramE, paramLong);
  }
  
  public long b()
    throws IOException
  {
    return c.b();
  }
  
  public void close()
    throws IOException
  {
    if (a) {}
    do
    {
      return;
      a = true;
    } while (c.b() >= b);
    throw new ProtocolException("content-length promised " + b + " bytes, but received " + c.b());
  }
  
  public void flush()
    throws IOException
  {}
}
