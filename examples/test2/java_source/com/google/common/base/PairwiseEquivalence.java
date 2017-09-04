package com.google.common.base;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
final class PairwiseEquivalence<T>
  implements Equivalence<Iterable<T>>, Serializable
{
  private static final long serialVersionUID = 0L;
  final Equivalence<? super T> elementEquivalence;
  
  static
  {
    JniLib.a(PairwiseEquivalence.class, 348);
  }
  
  PairwiseEquivalence(Equivalence<? super T> paramEquivalence)
  {
    elementEquivalence = ((Equivalence)Preconditions.checkNotNull(paramEquivalence));
  }
  
  public native boolean equals(@Nullable Object paramObject);
  
  public native boolean equivalent(@Nullable Iterable<T> paramIterable1, @Nullable Iterable<T> paramIterable2);
  
  public native int hash(@Nullable Iterable<T> paramIterable);
  
  public native int hashCode();
  
  public native String toString();
}
