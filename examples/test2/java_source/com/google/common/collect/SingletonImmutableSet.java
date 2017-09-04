package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
final class SingletonImmutableSet<E>
  extends ImmutableSet<E>
{
  private transient Integer cachedHashCode;
  final transient E element;
  
  static
  {
    JniLib.a(SingletonImmutableSet.class, 788);
  }
  
  SingletonImmutableSet(E paramE)
  {
    element = Preconditions.checkNotNull(paramE);
  }
  
  SingletonImmutableSet(E paramE, int paramInt)
  {
    element = paramE;
    cachedHashCode = Integer.valueOf(paramInt);
  }
  
  public native boolean contains(Object paramObject);
  
  public native boolean equals(@Nullable Object paramObject);
  
  public final native int hashCode();
  
  public native boolean isEmpty();
  
  native boolean isHashCodeFast();
  
  native boolean isPartialView();
  
  public native UnmodifiableIterator<E> iterator();
  
  public native int size();
  
  public native Object[] toArray();
  
  public native <T> T[] toArray(T[] paramArrayOfT);
  
  public native String toString();
}
