package cn.domob.android.ads.b;

import java.util.HashMap;
import java.util.Map;

class f
{
  private static cn.domob.android.i.f a = new cn.domob.android.i.f(f.class.getSimpleName());
  private static Map<String, a> b = new HashMap();
  
  static
  {
    b.put("close", new a()
    {
      public b a(Map<String, String> paramAnonymousMap, m paramAnonymousM)
      {
        return new c(paramAnonymousMap, paramAnonymousM);
      }
    });
    b.put("expand", new a()
    {
      public b a(Map<String, String> paramAnonymousMap, m paramAnonymousM)
      {
        return new d(paramAnonymousMap, paramAnonymousM);
      }
    });
    b.put("usecustomclose", new a()
    {
      public b a(Map<String, String> paramAnonymousMap, m paramAnonymousM)
      {
        return new g(paramAnonymousMap, paramAnonymousM);
      }
    });
    b.put("open", new a()
    {
      public b a(Map<String, String> paramAnonymousMap, m paramAnonymousM)
      {
        return new e(paramAnonymousMap, paramAnonymousM);
      }
    });
  }
  
  f() {}
  
  static b a(String paramString, Map<String, String> paramMap, m paramM)
  {
    a.a("Create MRAID command with:" + paramString);
    paramString = (a)b.get(paramString);
    if (paramString != null) {
      return paramString.a(paramMap, paramM);
    }
    return null;
  }
  
  private static abstract interface a
  {
    public abstract b a(Map<String, String> paramMap, m paramM);
  }
}
