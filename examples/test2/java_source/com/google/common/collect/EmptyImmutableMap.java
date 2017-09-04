package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import java.util.Map.Entry;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
final class EmptyImmutableMap
  extends ImmutableMap<Object, Object>
{
  static final EmptyImmutableMap INSTANCE = new EmptyImmutableMap();
  private static final long serialVersionUID = 0L;
  
  static
  {
    JniLib.a(EmptyImmutableMap.class, 484);
  }
  
  private EmptyImmutableMap() {}
  
  public native boolean containsKey(Object paramObject);
  
  public native boolean containsValue(Object paramObject);
  
  public native ImmutableSet<Map.Entry<Object, Object>> entrySet();
  
  public native boolean equals(@Nullable Object paramObject);
  
  public native Object get(Object paramObject);
  
  public native int hashCode();
  
  public native boolean isEmpty();
  
  native boolean isPartialView();
  
  public native ImmutableSet<Object> keySet();
  
  native Object readResolve();
  
  public native int size();
  
  public native String toString();
  
  public native ImmutableCollection<Object> values();
}
