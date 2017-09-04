package ss;

import ss.ss.gK.m;

public final class ag
{
  private final y a;
  private final String b;
  private final w c;
  private final ai d;
  private final Object e;
  private volatile e f;
  
  private ag(a paramA)
  {
    a = a.a(paramA);
    b = a.b(paramA);
    c = a.c(paramA).a();
    d = a.d(paramA);
    if (a.e(paramA) != null) {}
    for (paramA = a.e(paramA);; paramA = this)
    {
      e = paramA;
      return;
    }
  }
  
  public String a(String paramString)
  {
    return c.a(paramString);
  }
  
  public y a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public w c()
  {
    return c;
  }
  
  public ai d()
  {
    return d;
  }
  
  public a e()
  {
    return new a(this, null);
  }
  
  public e f()
  {
    e localE = f;
    if (localE != null) {
      return localE;
    }
    localE = e.a(c);
    f = localE;
    return localE;
  }
  
  public boolean g()
  {
    return a.c();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("Request{method=").append(b).append(", url=").append(a).append(", tag=");
    if (e != this) {}
    for (Object localObject = e;; localObject = null) {
      return localObject + '}';
    }
  }
  
  public static class a
  {
    private y a;
    private String b;
    private w.a c;
    private ai d;
    private Object e;
    
    public a()
    {
      b = "GET";
      c = new w.a();
    }
    
    private a(ag paramAg)
    {
      a = ag.a(paramAg);
      b = ag.b(paramAg);
      d = ag.c(paramAg);
      e = ag.d(paramAg);
      c = ag.e(paramAg).b();
    }
    
    public a a(String paramString)
    {
      if (paramString == null) {
        throw new NullPointerException("url == null");
      }
      String str;
      if (paramString.regionMatches(true, 0, "ws:", 0, 3)) {
        str = "http:" + paramString.substring(3);
      }
      for (;;)
      {
        paramString = y.e(str);
        if (paramString != null) {
          break;
        }
        throw new IllegalArgumentException("unexpected url: " + str);
        str = paramString;
        if (paramString.regionMatches(true, 0, "wss:", 0, 4)) {
          str = "https:" + paramString.substring(4);
        }
      }
      return a(paramString);
    }
    
    public a a(String paramString1, String paramString2)
    {
      c.c(paramString1, paramString2);
      return this;
    }
    
    public a a(String paramString, ai paramAi)
    {
      if (paramString == null) {
        throw new NullPointerException("method == null");
      }
      if (paramString.length() == 0) {
        throw new IllegalArgumentException("method.length() == 0");
      }
      if ((paramAi != null) && (!m.c(paramString))) {
        throw new IllegalArgumentException("method " + paramString + " must not have a request body.");
      }
      if ((paramAi == null) && (m.b(paramString))) {
        throw new IllegalArgumentException("method " + paramString + " must have a request body.");
      }
      b = paramString;
      d = paramAi;
      return this;
    }
    
    public a a(ai paramAi)
    {
      return a("POST", paramAi);
    }
    
    public a a(y paramY)
    {
      if (paramY == null) {
        throw new NullPointerException("url == null");
      }
      a = paramY;
      return this;
    }
    
    public ag a()
    {
      if (a == null) {
        throw new IllegalStateException("url == null");
      }
      return new ag(this, null);
    }
    
    public a b(String paramString)
    {
      c.b(paramString);
      return this;
    }
  }
}
