package com.lidroid.xutils.cache;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class LruMemoryCache<K, V>
{
  private int createCount;
  private int evictionCount;
  private int hitCount;
  private KeyExpiryMap<K, Long> keyExpiryMap;
  private final LinkedHashMap<K, V> map;
  private int maxSize;
  private int missCount;
  private int putCount;
  private int size;
  
  public LruMemoryCache(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    maxSize = paramInt;
    map = new LinkedHashMap(0, 0.75F, true);
    keyExpiryMap = new KeyExpiryMap(0, 0.75F);
  }
  
  private int safeSizeOf(K paramK, V paramV)
  {
    int i = sizeOf(paramK, paramV);
    if (i <= 0)
    {
      size = 0;
      paramK = map.entrySet().iterator();
    }
    for (;;)
    {
      if (!paramK.hasNext()) {
        return i;
      }
      paramV = (Map.Entry)paramK.next();
      size += sizeOf(paramV.getKey(), paramV.getValue());
    }
  }
  
  private void trimToSize(int paramInt)
  {
    for (;;)
    {
      try
      {
        if ((size <= paramInt) || (map.isEmpty())) {
          return;
        }
        Object localObject3 = (Map.Entry)map.entrySet().iterator().next();
        Object localObject1 = ((Map.Entry)localObject3).getKey();
        localObject3 = ((Map.Entry)localObject3).getValue();
        map.remove(localObject1);
        keyExpiryMap.remove(localObject1);
        size -= safeSizeOf(localObject1, localObject3);
        evictionCount += 1;
        entryRemoved(true, localObject1, localObject3, null);
      }
      finally {}
    }
  }
  
  public final boolean containsKey(K paramK)
  {
    return map.containsKey(paramK);
  }
  
  protected V create(K paramK)
  {
    return null;
  }
  
  public final int createCount()
  {
    try
    {
      int i = createCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  protected void entryRemoved(boolean paramBoolean, K paramK, V paramV1, V paramV2) {}
  
  public final void evictAll()
  {
    trimToSize(-1);
    keyExpiryMap.clear();
  }
  
  public final int evictionCount()
  {
    try
    {
      int i = evictionCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final V get(K paramK)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    try
    {
      if (!keyExpiryMap.containsKey(paramK))
      {
        remove(paramK);
        return null;
      }
      localObject1 = map.get(paramK);
      if (localObject1 != null)
      {
        hitCount += 1;
        return localObject1;
      }
    }
    finally {}
    missCount += 1;
    Object localObject1 = create(paramK);
    if (localObject1 == null) {
      return null;
    }
    try
    {
      createCount += 1;
      Object localObject2 = map.put(paramK, localObject1);
      if (localObject2 != null) {
        map.put(paramK, localObject2);
      }
      for (;;)
      {
        if (localObject2 == null) {
          break;
        }
        entryRemoved(false, paramK, localObject1, localObject2);
        return localObject2;
        size += safeSizeOf(paramK, localObject1);
      }
      trimToSize(maxSize);
    }
    finally {}
    return localObject1;
  }
  
  public final int hitCount()
  {
    try
    {
      int i = hitCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final int maxSize()
  {
    try
    {
      int i = maxSize;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final int missCount()
  {
    try
    {
      int i = missCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final V put(K paramK, V paramV)
  {
    return put(paramK, paramV, Long.MAX_VALUE);
  }
  
  public final V put(K paramK, V paramV, long paramLong)
  {
    if ((paramK == null) || (paramV == null)) {
      throw new NullPointerException("key == null || value == null");
    }
    try
    {
      putCount += 1;
      size += safeSizeOf(paramK, paramV);
      Object localObject = map.put(paramK, paramV);
      keyExpiryMap.put(paramK, Long.valueOf(paramLong));
      if (localObject != null) {
        size -= safeSizeOf(paramK, localObject);
      }
      if (localObject != null) {
        entryRemoved(false, paramK, localObject, paramV);
      }
      trimToSize(maxSize);
      return localObject;
    }
    finally {}
  }
  
  public final int putCount()
  {
    try
    {
      int i = putCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final V remove(K paramK)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    try
    {
      Object localObject = map.remove(paramK);
      keyExpiryMap.remove(paramK);
      if (localObject != null) {
        size -= safeSizeOf(paramK, localObject);
      }
      if (localObject != null) {
        entryRemoved(false, paramK, localObject, null);
      }
      return localObject;
    }
    finally {}
  }
  
  public void setMaxSize(int paramInt)
  {
    maxSize = paramInt;
    trimToSize(paramInt);
  }
  
  public final int size()
  {
    try
    {
      int i = size;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  protected int sizeOf(K paramK, V paramV)
  {
    return 1;
  }
  
  public final Map<K, V> snapshot()
  {
    try
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap(map);
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
      int j = hitCount + missCount;
      if (j != 0) {
        i = hitCount * 100 / j;
      }
      String str = String.format("LruMemoryCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[] { Integer.valueOf(maxSize), Integer.valueOf(hitCount), Integer.valueOf(missCount), Integer.valueOf(i) });
      return str;
    }
    finally {}
  }
}
