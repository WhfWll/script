package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import javax.annotation.Nullable;

final class ImmutableSortedAsList<E>
  extends ImmutableList<E>
{
  private final transient ImmutableList<E> backingList;
  private final transient ImmutableSortedSet<E> backingSet;
  
  static
  {
    JniLib.a(ImmutableSortedAsList.class, 545);
  }
  
  ImmutableSortedAsList(ImmutableSortedSet<E> paramImmutableSortedSet, ImmutableList<E> paramImmutableList)
  {
    backingSet = paramImmutableSortedSet;
    backingList = paramImmutableList;
  }
  
  public native boolean contains(Object paramObject);
  
  public native boolean equals(@Nullable Object paramObject);
  
  public native E get(int paramInt);
  
  public native int hashCode();
  
  public native int indexOf(Object paramObject);
  
  native boolean isPartialView();
  
  public native UnmodifiableIterator<E> iterator();
  
  public native int lastIndexOf(Object paramObject);
  
  public native UnmodifiableListIterator<E> listIterator();
  
  public native UnmodifiableListIterator<E> listIterator(int paramInt);
  
  public native int size();
  
  public native ImmutableList<E> subList(int paramInt1, int paramInt2);
  
  native Object writeReplace();
}
