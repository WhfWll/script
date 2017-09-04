package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

@GwtCompatible
final class WellBehavedMap<K, V>
  extends ForwardingMap<K, V>
{
  private final Map<K, V> delegate;
  private Set<Map.Entry<K, V>> entrySet;
  
  static
  {
    JniLib.a(WellBehavedMap.class, 867);
  }
  
  private WellBehavedMap(Map<K, V> paramMap)
  {
    delegate = paramMap;
  }
  
  static native <K, V> WellBehavedMap<K, V> wrap(Map<K, V> paramMap);
  
  protected native Map<K, V> delegate();
  
  public native Set<Map.Entry<K, V>> entrySet();
  
  private static class KeyToEntryConverter<K, V>
    extends Sets.InvertibleFunction<K, Map.Entry<K, V>>
  {
    final Map<K, V> map;
    
    static
    {
      JniLib.a(KeyToEntryConverter.class, 866);
    }
    
    KeyToEntryConverter(Map<K, V> paramMap)
    {
      map = paramMap;
    }
    
    public native Map.Entry<K, V> apply(K paramK);
    
    public native K invert(Map.Entry<K, V> paramEntry);
  }
}
