package gK;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

public abstract interface v
  extends Closeable, Flushable
{
  public abstract x a();
  
  public abstract void a_(e paramE, long paramLong)
    throws IOException;
  
  public abstract void close()
    throws IOException;
  
  public abstract void flush()
    throws IOException;
}
