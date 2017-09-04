package cn.domob.wall.core.download;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class m<K, V>
{
  private final LinkedHashMap<K, V> a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  
  public m(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    c = paramInt;
    a = new LinkedHashMap(0, 0.75F, true);
  }
  
  private void a(int paramInt)
  {
    Object localObject3;
    Object localObject2;
    try
    {
      if ((b < 0) || ((a.isEmpty()) && (b != 0))) {
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
      }
    }
    finally
    {
      throw localObject1;
      if ((b <= paramInt) || (a.isEmpty())) {
        return;
      }
      localObject3 = (Map.Entry)a.entrySet().iterator().next();
      localObject2 = ((Map.Entry)localObject3).getKey();
      localObject3 = ((Map.Entry)localObject3).getValue();
      a.remove(localObject2);
      b -= c(localObject2, localObject3);
      f += 1;
    }
  }
  
  private int c(K paramK, V paramV)
  {
    int i = a(paramK, paramV);
    if (i < 0) {
      throw new IllegalStateException("Negative size: " + paramK + "=" + paramV);
    }
    return i;
  }
  
  protected int a(K paramK, V paramV)
  {
    return 1;
  }
  
  public final V a(K paramK)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    Object localObject1;
    try
    {
      localObject1 = a.get(paramK);
      if (localObject1 != null)
      {
        g += 1;
        return localObject1;
      }
      h += 1;
      localObject1 = c(paramK);
      if (localObject1 == null) {
        return null;
      }
    }
    finally {}
    try
    {
      e += 1;
      Object localObject2 = a.put(paramK, localObject1);
      if (localObject2 != null) {
        a.put(paramK, localObject2);
      }
      for (;;)
      {
        if (localObject2 == null) {
          break;
        }
        a(false, paramK, localObject1, localObject2);
        return localObject2;
        b += c(paramK, localObject1);
      }
      a(c);
    }
    finally {}
    return localObject1;
  }
  
  public final void a()
  {
    a(-1);
  }
  
  protected void a(boolean paramBoolean, K paramK, V paramV1, V paramV2) {}
  
  public final int b()
  {
    try
    {
      int i = b;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final V b(K paramK)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    try
    {
      Object localObject = a.remove(paramK);
      if (localObject != null) {
        b -= c(paramK, localObject);
      }
      if (localObject != null) {
        a(false, paramK, localObject, null);
      }
      return localObject;
    }
    finally {}
  }
  
  public final V b(K paramK, V paramV)
  {
    if ((paramK == null) || (paramV == null)) {
      throw new NullPointerException("key == null || value == null");
    }
    try
    {
      d += 1;
      b += c(paramK, paramV);
      Object localObject = a.put(paramK, paramV);
      if (localObject != null) {
        b -= c(paramK, localObject);
      }
      if (localObject != null) {
        a(false, paramK, localObject, paramV);
      }
      a(c);
      return localObject;
    }
    finally {}
  }
  
  public final int c()
  {
    try
    {
      int i = c;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  protected V c(K paramK)
  {
    return null;
  }
  
  public final int d()
  {
    try
    {
      int i = g;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final int e()
  {
    try
    {
      int i = h;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final int f()
  {
    try
    {
      int i = e;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final int g()
  {
    try
    {
      int i = d;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final int h()
  {
    try
    {
      int i = f;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final Map<K, V> i()
  {
    try
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap(a);
      return localLinkedHashMap;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final String toString()
  {
    int i = 0;
    try
    {
      int j = g + h;
      if (j != 0) {
        i = g * 100 / j;
      }
      String str = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[] { Integer.valueOf(c), Integer.valueOf(g), Integer.valueOf(h), Integer.valueOf(i) });
      return str;
    }
    finally {}
  }
}
