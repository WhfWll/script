package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
final class ByFunctionOrdering<F, T>
  extends Ordering<F>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final Function<F, ? extends T> function;
  final Ordering<T> ordering;
  
  static
  {
    JniLib.a(ByFunctionOrdering.class, 417);
  }
  
  ByFunctionOrdering(Function<F, ? extends T> paramFunction, Ordering<T> paramOrdering)
  {
    function = ((Function)Preconditions.checkNotNull(paramFunction));
    ordering = ((Ordering)Preconditions.checkNotNull(paramOrdering));
  }
  
  public native int compare(F paramF1, F paramF2);
  
  public native boolean equals(@Nullable Object paramObject);
  
  public native int hashCode();
  
  public native String toString();
}
