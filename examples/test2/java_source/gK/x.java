package gK;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

public class x
{
  public static final x b = new y();
  private boolean a;
  private long c;
  private long d;
  
  public x() {}
  
  public x a(long paramLong)
  {
    a = true;
    c = paramLong;
    return this;
  }
  
  public x a(long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("timeout < 0: " + paramLong);
    }
    if (paramTimeUnit == null) {
      throw new IllegalArgumentException("unit == null");
    }
    d = paramTimeUnit.toNanos(paramLong);
    return this;
  }
  
  public long b_()
  {
    return d;
  }
  
  public boolean c_()
  {
    return a;
  }
  
  public long d()
  {
    if (!a) {
      throw new IllegalStateException("No deadline");
    }
    return c;
  }
  
  public x d_()
  {
    d = 0L;
    return this;
  }
  
  public x f()
  {
    a = false;
    return this;
  }
  
  public void g()
    throws IOException
  {
    if (Thread.interrupted()) {
      throw new InterruptedIOException("thread interrupted");
    }
    if ((a) && (c - System.nanoTime() <= 0L)) {
      throw new InterruptedIOException("deadline reached");
    }
  }
}
