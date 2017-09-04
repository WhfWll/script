package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import java.util.Iterator;
import java.util.Map.Entry;

@GwtCompatible(emulated=true, serializable=true)
class RegularImmutableBiMap<K, V>
  extends ImmutableBiMap<K, V>
{
  final transient ImmutableMap<K, V> delegate;
  final transient ImmutableBiMap<V, K> inverse;
  
  static
  {
    JniLib.a(RegularImmutableBiMap.class, 754);
  }
  
  RegularImmutableBiMap(ImmutableMap<K, V> paramImmutableMap)
  {
    delegate = paramImmutableMap;
    ImmutableMap.Builder localBuilder = ImmutableMap.builder();
    paramImmutableMap = paramImmutableMap.entrySet().iterator();
    while (paramImmutableMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramImmutableMap.next();
      localBuilder.put(localEntry.getValue(), localEntry.getKey());
    }
    inverse = new RegularImmutableBiMap(localBuilder.build(), this);
  }
  
  RegularImmutableBiMap(ImmutableMap<K, V> paramImmutableMap, ImmutableBiMap<V, K> paramImmutableBiMap)
  {
    delegate = paramImmutableMap;
    inverse = paramImmutableBiMap;
  }
  
  native ImmutableMap<K, V> delegate();
  
  public native ImmutableBiMap<V, K> inverse();
  
  native boolean isPartialView();
}
