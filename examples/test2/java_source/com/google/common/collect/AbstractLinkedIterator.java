package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;

@Beta
@GwtCompatible
public abstract class AbstractLinkedIterator<T>
  extends UnmodifiableIterator<T>
{
  private T nextOrNull;
  
  protected AbstractLinkedIterator(@Nullable T paramT)
  {
    nextOrNull = paramT;
  }
  
  protected abstract T computeNext(T paramT);
  
  public final boolean hasNext()
  {
    return nextOrNull != null;
  }
  
  public final T next()
  {
    if (!hasNext()) {
      throw new NoSuchElementException();
    }
    try
    {
      Object localObject1 = nextOrNull;
      return localObject1;
    }
    finally
    {
      nextOrNull = computeNext(nextOrNull);
    }
  }
}
