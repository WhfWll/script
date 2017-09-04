package gK;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

public class k
  extends x
{
  private x a;
  
  public k(x paramX)
  {
    if (paramX == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    a = paramX;
  }
  
  public final k a(x paramX)
  {
    if (paramX == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    a = paramX;
    return this;
  }
  
  public final x a()
  {
    return a;
  }
  
  public x a(long paramLong)
  {
    return a.a(paramLong);
  }
  
  public x a(long paramLong, TimeUnit paramTimeUnit)
  {
    return a.a(paramLong, paramTimeUnit);
  }
  
  public long b_()
  {
    return a.b_();
  }
  
  public boolean c_()
  {
    return a.c_();
  }
  
  public long d()
  {
    return a.d();
  }
  
  public x d_()
  {
    return a.d_();
  }
  
  public x f()
  {
    return a.f();
  }
  
  public void g()
    throws IOException
  {
    a.g();
  }
}
