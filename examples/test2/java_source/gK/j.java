package gK;

import java.io.IOException;

public abstract class j
  implements w
{
  private final w a;
  
  public j(w paramW)
  {
    if (paramW == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    a = paramW;
  }
  
  public long a(e paramE, long paramLong)
    throws IOException
  {
    return a.a(paramE, paramLong);
  }
  
  public x a()
  {
    return a.a();
  }
  
  public void close()
    throws IOException
  {
    a.close();
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + a.toString() + ")";
  }
}
