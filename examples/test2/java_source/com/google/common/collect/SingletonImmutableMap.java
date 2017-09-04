package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import java.util.Map.Entry;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
final class SingletonImmutableMap<K, V>
  extends ImmutableMap<K, V>
{
  private transient Map.Entry<K, V> entry;
  private transient ImmutableSet<Map.Entry<K, V>> entrySet;
  private transient ImmutableSet<K> keySet;
  final transient K singleKey;
  final transient V singleValue;
  private transient ImmutableCollection<V> values;
  
  static
  {
    JniLib.a(SingletonImmutableMap.class, 787);
  }
  
  SingletonImmutableMap(K paramK, V paramV)
  {
    singleKey = paramK;
    singleValue = paramV;
  }
  
  SingletonImmutableMap(Map.Entry<K, V> paramEntry)
  {
    entry = paramEntry;
    singleKey = paramEntry.getKey();
    singleValue = paramEntry.getValue();
  }
  
  private native Map.Entry<K, V> entry();
  
  public native boolean containsKey(Object paramObject);
  
  public native boolean containsValue(Object paramObject);
  
  public native ImmutableSet<Map.Entry<K, V>> entrySet();
  
  public native boolean equals(@Nullable Object paramObject);
  
  public native V get(Object paramObject);
  
  public native int hashCode();
  
  public native boolean isEmpty();
  
  native boolean isPartialView();
  
  public native ImmutableSet<K> keySet();
  
  public native int size();
  
  public native String toString();
  
  public native ImmutableCollection<V> values();
  
  private static class Values<V>
    extends ImmutableCollection<V>
  {
    final V singleValue;
    
    static
    {
      JniLib.a(Values.class, 786);
    }
    
    Values(V paramV)
    {
      singleValue = paramV;
    }
    
    public native boolean contains(Object paramObject);
    
    public native boolean isEmpty();
    
    native boolean isPartialView();
    
    public native UnmodifiableIterator<V> iterator();
    
    public native int size();
  }
}
