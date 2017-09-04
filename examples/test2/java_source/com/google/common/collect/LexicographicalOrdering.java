package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
final class LexicographicalOrdering<T>
  extends Ordering<Iterable<T>>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final Ordering<? super T> elementOrder;
  
  static
  {
    JniLib.a(LexicographicalOrdering.class, 599);
  }
  
  LexicographicalOrdering(Ordering<? super T> paramOrdering)
  {
    elementOrder = paramOrdering;
  }
  
  public native int compare(Iterable<T> paramIterable1, Iterable<T> paramIterable2);
  
  public native boolean equals(@Nullable Object paramObject);
  
  public native int hashCode();
  
  public native String toString();
}
