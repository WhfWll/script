package ss.ss.ss;

import gK.h;

public final class r
{
  public static final h a = h.a(":status");
  public static final h b = h.a(":method");
  public static final h c = h.a(":path");
  public static final h d = h.a(":scheme");
  public static final h e = h.a(":authority");
  public static final h f = h.a(":host");
  public static final h g = h.a(":version");
  public final h h;
  public final h i;
  final int j;
  
  public r(h paramH1, h paramH2)
  {
    h = paramH1;
    i = paramH2;
    j = (paramH1.f() + 32 + paramH2.f());
  }
  
  public r(h paramH, String paramString)
  {
    this(paramH, h.a(paramString));
  }
  
  public r(String paramString1, String paramString2)
  {
    this(h.a(paramString1), h.a(paramString2));
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof r))
    {
      paramObject = (r)paramObject;
      bool1 = bool2;
      if (h.equals(h))
      {
        bool1 = bool2;
        if (i.equals(i)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return (h.hashCode() + 527) * 31 + i.hashCode();
  }
  
  public String toString()
  {
    return String.format("%s: %s", new Object[] { h.a(), i.a() });
  }
}
