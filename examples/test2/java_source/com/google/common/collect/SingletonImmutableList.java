package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
final class SingletonImmutableList<E>
  extends ImmutableList<E>
{
  final transient E element;
  
  static
  {
    JniLib.a(SingletonImmutableList.class, 785);
  }
  
  SingletonImmutableList(E paramE)
  {
    element = Preconditions.checkNotNull(paramE);
  }
  
  public native boolean contains(@Nullable Object paramObject);
  
  public native boolean equals(Object paramObject);
  
  public native E get(int paramInt);
  
  public native int hashCode();
  
  public native int indexOf(@Nullable Object paramObject);
  
  public native boolean isEmpty();
  
  native boolean isPartialView();
  
  public native UnmodifiableIterator<E> iterator();
  
  public native int lastIndexOf(@Nullable Object paramObject);
  
  public native UnmodifiableListIterator<E> listIterator(int paramInt);
  
  public native ImmutableList<E> reverse();
  
  public native int size();
  
  public native ImmutableList<E> subList(int paramInt1, int paramInt2);
  
  public native Object[] toArray();
  
  public native <T> T[] toArray(T[] paramArrayOfT);
  
  public native String toString();
}
