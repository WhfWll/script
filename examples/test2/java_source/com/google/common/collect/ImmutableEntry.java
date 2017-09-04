package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
class ImmutableEntry<K, V>
  extends AbstractMapEntry<K, V>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  private final K key;
  private final V value;
  
  static
  {
    JniLib.a(ImmutableEntry.class, 520);
  }
  
  ImmutableEntry(@Nullable K paramK, @Nullable V paramV)
  {
    key = paramK;
    value = paramV;
  }
  
  public native K getKey();
  
  public native V getValue();
  
  public final native V setValue(V paramV);
}
