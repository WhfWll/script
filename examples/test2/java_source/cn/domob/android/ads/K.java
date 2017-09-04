package cn.domob.android.ads;

class K
{
  private String a = "";
  private String b = "";
  private long c = Long.MAX_VALUE;
  private long d = -1L;
  private String e = "";
  private String f = "";
  
  K() {}
  
  protected String a()
  {
    return f;
  }
  
  public void a(long paramLong)
  {
    c = paramLong;
  }
  
  protected void a(String paramString)
  {
    f = paramString;
  }
  
  public String b()
  {
    return a;
  }
  
  public void b(long paramLong)
  {
    d = paramLong;
  }
  
  public void b(String paramString)
  {
    a = paramString;
  }
  
  public String c()
  {
    return b;
  }
  
  public void c(String paramString)
  {
    b = paramString;
  }
  
  public long d()
  {
    return c;
  }
  
  public void d(String paramString)
  {
    e = paramString;
  }
  
  public long e()
  {
    return d;
  }
  
  public String f()
  {
    return e;
  }
  
  protected boolean g()
  {
    return (!a.trim().equals("")) && (c != Long.MAX_VALUE) && (!e.trim().equals(""));
  }
}
