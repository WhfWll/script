package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;

@GwtCompatible(emulated=true, serializable=true)
final class RegularImmutableSet<E>
  extends ImmutableSet.ArrayImmutableSet<E>
{
  private final transient int hashCode;
  private final transient int mask;
  @VisibleForTesting
  final transient Object[] table;
  
  static
  {
    JniLib.a(RegularImmutableSet.class, 763);
  }
  
  RegularImmutableSet(Object[] paramArrayOfObject1, int paramInt1, Object[] paramArrayOfObject2, int paramInt2)
  {
    super(paramArrayOfObject1);
    table = paramArrayOfObject2;
    mask = paramInt2;
    hashCode = paramInt1;
  }
  
  public native boolean contains(Object paramObject);
  
  public native int hashCode();
  
  native boolean isHashCodeFast();
}
