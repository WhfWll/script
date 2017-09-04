package ss;

public final class ak
{
  private final ag a;
  private final ae b;
  private final int c;
  private final String d;
  private final v e;
  private final w f;
  private final am g;
  private ak h;
  private ak i;
  private final ak j;
  private volatile e k;
  
  private ak(a paramA)
  {
    a = a.a(paramA);
    b = a.b(paramA);
    c = a.c(paramA);
    d = a.d(paramA);
    e = a.e(paramA);
    f = a.f(paramA).a();
    g = a.g(paramA);
    h = a.h(paramA);
    i = a.i(paramA);
    j = a.j(paramA);
  }
  
  public String a(String paramString)
  {
    return a(paramString, null);
  }
  
  public String a(String paramString1, String paramString2)
  {
    paramString1 = f.a(paramString1);
    if (paramString1 != null) {
      paramString2 = paramString1;
    }
    return paramString2;
  }
  
  public ag a()
  {
    return a;
  }
  
  public int b()
  {
    return c;
  }
  
  public boolean c()
  {
    return (c >= 200) && (c < 300);
  }
  
  public v d()
  {
    return e;
  }
  
  public w e()
  {
    return f;
  }
  
  public am f()
  {
    return g;
  }
  
  public a g()
  {
    return new a(this, null);
  }
  
  public e h()
  {
    e localE = k;
    if (localE != null) {
      return localE;
    }
    localE = e.a(f);
    k = localE;
    return localE;
  }
  
  public String toString()
  {
    return "Response{protocol=" + b + ", code=" + c + ", message=" + d + ", url=" + a.a() + '}';
  }
  
  public static class a
  {
    private ag a;
    private ae b;
    private int c = -1;
    private String d;
    private v e;
    private w.a f;
    private am g;
    private ak h;
    private ak i;
    private ak j;
    
    public a()
    {
      f = new w.a();
    }
    
    private a(ak paramAk)
    {
      a = ak.a(paramAk);
      b = ak.b(paramAk);
      c = ak.c(paramAk);
      d = ak.d(paramAk);
      e = ak.e(paramAk);
      f = ak.f(paramAk).b();
      g = ak.g(paramAk);
      h = ak.h(paramAk);
      i = ak.i(paramAk);
      j = ak.j(paramAk);
    }
    
    private void a(String paramString, ak paramAk)
    {
      if (ak.g(paramAk) != null) {
        throw new IllegalArgumentException(paramString + ".body != null");
      }
      if (ak.h(paramAk) != null) {
        throw new IllegalArgumentException(paramString + ".networkResponse != null");
      }
      if (ak.i(paramAk) != null) {
        throw new IllegalArgumentException(paramString + ".cacheResponse != null");
      }
      if (ak.j(paramAk) != null) {
        throw new IllegalArgumentException(paramString + ".priorResponse != null");
      }
    }
    
    private void d(ak paramAk)
    {
      if (ak.g(paramAk) != null) {
        throw new IllegalArgumentException("priorResponse.body != null");
      }
    }
    
    public a a(int paramInt)
    {
      c = paramInt;
      return this;
    }
    
    public a a(String paramString)
    {
      d = paramString;
      return this;
    }
    
    public a a(String paramString1, String paramString2)
    {
      f.c(paramString1, paramString2);
      return this;
    }
    
    public a a(ae paramAe)
    {
      b = paramAe;
      return this;
    }
    
    public a a(ag paramAg)
    {
      a = paramAg;
      return this;
    }
    
    public a a(ak paramAk)
    {
      if (paramAk != null) {
        a("networkResponse", paramAk);
      }
      h = paramAk;
      return this;
    }
    
    public a a(am paramAm)
    {
      g = paramAm;
      return this;
    }
    
    public a a(v paramV)
    {
      e = paramV;
      return this;
    }
    
    public a a(w paramW)
    {
      f = paramW.b();
      return this;
    }
    
    public ak a()
    {
      if (a == null) {
        throw new IllegalStateException("request == null");
      }
      if (b == null) {
        throw new IllegalStateException("protocol == null");
      }
      if (c < 0) {
        throw new IllegalStateException("code < 0: " + c);
      }
      return new ak(this, null);
    }
    
    public a b(String paramString1, String paramString2)
    {
      f.a(paramString1, paramString2);
      return this;
    }
    
    public a b(ak paramAk)
    {
      if (paramAk != null) {
        a("cacheResponse", paramAk);
      }
      i = paramAk;
      return this;
    }
    
    public a c(ak paramAk)
    {
      if (paramAk != null) {
        d(paramAk);
      }
      j = paramAk;
      return this;
    }
  }
}
