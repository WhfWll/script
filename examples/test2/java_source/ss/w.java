package ss;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import ss.ss.gK.h;

public final class w
{
  private final String[] a;
  
  private w(a paramA)
  {
    a = ((String[])a.a(paramA).toArray(new String[a.a(paramA).size()]));
  }
  
  private static String a(String[] paramArrayOfString, String paramString)
  {
    int i = paramArrayOfString.length - 2;
    while (i >= 0)
    {
      if (paramString.equalsIgnoreCase(paramArrayOfString[i])) {
        return paramArrayOfString[(i + 1)];
      }
      i -= 2;
    }
    return null;
  }
  
  public int a()
  {
    return a.length / 2;
  }
  
  public String a(int paramInt)
  {
    return a[(paramInt * 2)];
  }
  
  public String a(String paramString)
  {
    return a(a, paramString);
  }
  
  public String b(int paramInt)
  {
    return a[(paramInt * 2 + 1)];
  }
  
  public Date b(String paramString)
  {
    paramString = a(paramString);
    if (paramString != null) {
      return h.a(paramString);
    }
    return null;
  }
  
  public a b()
  {
    a localA = new a();
    Collections.addAll(a.a(localA), a);
    return localA;
  }
  
  public List<String> c(String paramString)
  {
    int j = a();
    Object localObject1 = null;
    int i = 0;
    while (i < j)
    {
      Object localObject2 = localObject1;
      if (paramString.equalsIgnoreCase(a(i)))
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new ArrayList(2);
        }
        ((List)localObject2).add(b(i));
      }
      i += 1;
      localObject1 = localObject2;
    }
    if (localObject1 != null) {
      return Collections.unmodifiableList(localObject1);
    }
    return Collections.emptyList();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    int j = a();
    while (i < j)
    {
      localStringBuilder.append(a(i)).append(": ").append(b(i)).append("\n");
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static final class a
  {
    private final List<String> a = new ArrayList(20);
    
    public a() {}
    
    private void d(String paramString1, String paramString2)
    {
      if (paramString1 == null) {
        throw new NullPointerException("name == null");
      }
      if (paramString1.isEmpty()) {
        throw new IllegalArgumentException("name is empty");
      }
      int j = paramString1.length();
      int i = 0;
      int k;
      while (i < j)
      {
        k = paramString1.charAt(i);
        if ((k <= 31) || (k >= 127)) {
          throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header name: %s", new Object[] { Integer.valueOf(k), Integer.valueOf(i), paramString1 }));
        }
        i += 1;
      }
      if (paramString2 == null) {
        throw new NullPointerException("value == null");
      }
      j = paramString2.length();
      i = 0;
      while (i < j)
      {
        k = paramString2.charAt(i);
        if ((k <= 31) || (k >= 127)) {
          throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in %s value: %s", new Object[] { Integer.valueOf(k), Integer.valueOf(i), paramString1, paramString2 }));
        }
        i += 1;
      }
    }
    
    a a(String paramString)
    {
      int i = paramString.indexOf(":", 1);
      if (i != -1) {
        return b(paramString.substring(0, i), paramString.substring(i + 1));
      }
      if (paramString.startsWith(":")) {
        return b("", paramString.substring(1));
      }
      return b("", paramString);
    }
    
    public a a(String paramString1, String paramString2)
    {
      d(paramString1, paramString2);
      return b(paramString1, paramString2);
    }
    
    public w a()
    {
      return new w(this, null);
    }
    
    public a b(String paramString)
    {
      int j;
      for (int i = 0; i < a.size(); i = j + 2)
      {
        j = i;
        if (paramString.equalsIgnoreCase((String)a.get(i)))
        {
          a.remove(i);
          a.remove(i);
          j = i - 2;
        }
      }
      return this;
    }
    
    a b(String paramString1, String paramString2)
    {
      a.add(paramString1);
      a.add(paramString2.trim());
      return this;
    }
    
    public a c(String paramString1, String paramString2)
    {
      d(paramString1, paramString2);
      b(paramString1);
      b(paramString1, paramString2);
      return this;
    }
  }
}
