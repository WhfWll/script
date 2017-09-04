package com.lidroid.xutils.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class DoubleKeyValueMap<K1, K2, V>
{
  private ConcurrentHashMap<K1, ConcurrentHashMap<K2, V>> k1_k2V_map = new ConcurrentHashMap();
  
  public DoubleKeyValueMap() {}
  
  public void clear()
  {
    Iterator localIterator;
    if (k1_k2V_map.size() > 0) {
      localIterator = k1_k2V_map.values().iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        k1_k2V_map.clear();
        return;
      }
      ((ConcurrentHashMap)localIterator.next()).clear();
    }
  }
  
  public boolean containsKey(K1 paramK1)
  {
    return k1_k2V_map.containsKey(paramK1);
  }
  
  public boolean containsKey(K1 paramK1, K2 paramK2)
  {
    if (k1_k2V_map.containsKey(paramK1)) {
      return ((ConcurrentHashMap)k1_k2V_map.get(paramK1)).containsKey(paramK2);
    }
    return false;
  }
  
  public V get(K1 paramK1, K2 paramK2)
  {
    paramK1 = (ConcurrentHashMap)k1_k2V_map.get(paramK1);
    if (paramK1 == null) {
      return null;
    }
    return paramK1.get(paramK2);
  }
  
  public ConcurrentHashMap<K2, V> get(K1 paramK1)
  {
    return (ConcurrentHashMap)k1_k2V_map.get(paramK1);
  }
  
  public Collection<V> getAllValues()
  {
    ArrayList localArrayList = null;
    Object localObject1 = k1_k2V_map.keySet();
    if (localObject1 != null)
    {
      localArrayList = new ArrayList();
      localObject1 = ((Set)localObject1).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject1).hasNext()) {
        return localArrayList;
      }
      Object localObject2 = (Object)((Iterator)localObject1).next();
      localObject2 = ((ConcurrentHashMap)k1_k2V_map.get(localObject2)).values();
      if (localObject2 != null) {
        localArrayList.addAll((Collection)localObject2);
      }
    }
  }
  
  public Collection<V> getAllValues(K1 paramK1)
  {
    paramK1 = (ConcurrentHashMap)k1_k2V_map.get(paramK1);
    if (paramK1 == null) {
      return null;
    }
    return paramK1.values();
  }
  
  public Set<K1> getFirstKeys()
  {
    return k1_k2V_map.keySet();
  }
  
  public void put(K1 paramK1, K2 paramK2, V paramV)
  {
    if ((paramK1 == null) || (paramK2 == null) || (paramV == null)) {
      return;
    }
    if (k1_k2V_map.containsKey(paramK1))
    {
      localConcurrentHashMap = (ConcurrentHashMap)k1_k2V_map.get(paramK1);
      if (localConcurrentHashMap != null)
      {
        localConcurrentHashMap.put(paramK2, paramV);
        return;
      }
      localConcurrentHashMap = new ConcurrentHashMap();
      localConcurrentHashMap.put(paramK2, paramV);
      k1_k2V_map.put(paramK1, localConcurrentHashMap);
      return;
    }
    ConcurrentHashMap localConcurrentHashMap = new ConcurrentHashMap();
    localConcurrentHashMap.put(paramK2, paramV);
    k1_k2V_map.put(paramK1, localConcurrentHashMap);
  }
  
  public void remove(K1 paramK1)
  {
    k1_k2V_map.remove(paramK1);
  }
  
  public void remove(K1 paramK1, K2 paramK2)
  {
    paramK1 = (ConcurrentHashMap)k1_k2V_map.get(paramK1);
    if (paramK1 != null) {
      paramK1.remove(paramK2);
    }
  }
  
  public int size()
  {
    int j;
    if (k1_k2V_map.size() == 0)
    {
      j = 0;
      return j;
    }
    int i = 0;
    Iterator localIterator = k1_k2V_map.values().iterator();
    for (;;)
    {
      j = i;
      if (!localIterator.hasNext()) {
        break;
      }
      i += ((ConcurrentHashMap)localIterator.next()).size();
    }
  }
}
