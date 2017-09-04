package gK;

import java.io.Closeable;
import java.io.IOException;

public abstract interface w
  extends Closeable
{
  public abstract long a(e paramE, long paramLong)
    throws IOException;
  
  public abstract x a();
  
  public abstract void close()
    throws IOException;
}
