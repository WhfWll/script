package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;

@GwtCompatible(serializable=true)
final class CompoundOrdering<T>
  extends Ordering<T>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final ImmutableList<Comparator<? super T>> comparators;
  
  static
  {
    JniLib.a(CompoundOrdering.class, 427);
  }
  
  CompoundOrdering(Iterable<? extends Comparator<? super T>> paramIterable)
  {
    comparators = ImmutableList.copyOf(paramIterable);
  }
  
  CompoundOrdering(Comparator<? super T> paramComparator1, Comparator<? super T> paramComparator2)
  {
    comparators = ImmutableList.of(paramComparator1, paramComparator2);
  }
  
  CompoundOrdering(List<? extends Comparator<? super T>> paramList, Comparator<? super T> paramComparator)
  {
    comparators = new ImmutableList.Builder().addAll(paramList).add(paramComparator).build();
  }
  
  public native int compare(T paramT1, T paramT2);
  
  public native boolean equals(Object paramObject);
  
  public native int hashCode();
  
  public native String toString();
}
