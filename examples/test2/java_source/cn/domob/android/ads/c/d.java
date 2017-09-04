package cn.domob.android.ads.c;

import android.os.Handler;

public class d
{
  private Handler a;
  private a b;
  private c c = c.c;
  private long d;
  private long e;
  
  public d(Handler paramHandler, b paramB)
  {
    a = paramHandler;
    b = new a(paramB);
  }
  
  private boolean h()
  {
    return (a != null) && (b.b());
  }
  
  public long a()
  {
    return e;
  }
  
  public void a(long paramLong)
  {
    if (h())
    {
      e = paramLong;
      a.postDelayed(b, e);
      c = c.a;
      d = System.currentTimeMillis();
    }
  }
  
  public void a(b paramB)
  {
    b.a(paramB);
  }
  
  public void b()
  {
    if ((h()) && (c == c.a))
    {
      a.removeCallbacks(b);
      e -= System.currentTimeMillis() - d;
      c = c.b;
    }
  }
  
  public void c()
  {
    if ((h()) && (c == c.b))
    {
      a.postDelayed(b, e);
      d = System.currentTimeMillis();
      c = c.a;
    }
  }
  
  public void d()
  {
    if (h())
    {
      a.removeCallbacks(b);
      b.run();
    }
    c = c.c;
    a = null;
  }
  
  public void e()
  {
    if (h()) {
      a.removeCallbacks(b);
    }
    c = c.c;
  }
  
  public void f()
  {
    if (h()) {
      a.removeCallbacks(b);
    }
    c = c.c;
    a = null;
  }
  
  public boolean g()
  {
    return b.a();
  }
  
  private class a
    implements Runnable
  {
    private boolean b = false;
    private d.b c;
    
    protected a(d.b paramB)
    {
      c = paramB;
    }
    
    protected void a(d.b paramB)
    {
      c = paramB;
    }
    
    protected boolean a()
    {
      return b;
    }
    
    protected boolean b()
    {
      return (c != null) && (!b);
    }
    
    public void run()
    {
      if (c != null)
      {
        c.a();
        b = true;
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void a();
  }
  
  static enum c
  {
    private c() {}
  }
}
