package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

@GwtCompatible
abstract class TransformedImmutableList<D, E>
  extends ImmutableList<E>
{
  private final transient ImmutableList<D> backingList;
  
  TransformedImmutableList(ImmutableList<D> paramImmutableList)
  {
    backingList = ((ImmutableList)Preconditions.checkNotNull(paramImmutableList));
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof List)) {
        break;
      }
      paramObject = (List)paramObject;
    } while ((size() == paramObject.size()) && (Iterators.elementsEqual(iterator(), paramObject.iterator())));
    return false;
    return false;
  }
  
  public E get(int paramInt)
  {
    return transform(backingList.get(paramInt));
  }
  
  public int hashCode()
  {
    int i = 1;
    Iterator localIterator = iterator();
    if (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (localObject == null) {}
      for (int j = 0;; j = localObject.hashCode())
      {
        i = i * 31 + j;
        break;
      }
    }
    return i;
  }
  
  public int indexOf(@Nullable Object paramObject)
  {
    int j;
    if (paramObject == null)
    {
      j = -1;
      return j;
    }
    int i = 0;
    for (;;)
    {
      if (i >= size()) {
        break label39;
      }
      j = i;
      if (get(i).equals(paramObject)) {
        break;
      }
      i += 1;
    }
    label39:
    return -1;
  }
  
  boolean isPartialView()
  {
    return true;
  }
  
  public int lastIndexOf(@Nullable Object paramObject)
  {
    int j;
    if (paramObject == null)
    {
      j = -1;
      return j;
    }
    int i = size() - 1;
    for (;;)
    {
      if (i < 0) {
        break label40;
      }
      j = i;
      if (get(i).equals(paramObject)) {
        break;
      }
      i -= 1;
    }
    label40:
    return -1;
  }
  
  public UnmodifiableListIterator<E> listIterator(int paramInt)
  {
    new AbstractIndexedListIterator(size(), paramInt)
    {
      static
      {
        JniLib.a(1.class, 854);
      }
      
      protected native E get(int paramAnonymousInt);
    };
  }
  
  public int size()
  {
    return backingList.size();
  }
  
  public ImmutableList<E> subList(int paramInt1, int paramInt2)
  {
    return new TransformedView(backingList.subList(paramInt1, paramInt2));
  }
  
  public Object[] toArray()
  {
    return ObjectArrays.toArrayImpl(this);
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return ObjectArrays.toArrayImpl(this, paramArrayOfT);
  }
  
  abstract E transform(D paramD);
  
  private class TransformedView
    extends TransformedImmutableList<D, E>
  {
    static
    {
      JniLib.a(TransformedView.class, 855);
    }
    
    TransformedView()
    {
      super();
    }
    
    native E transform(D paramD);
  }
}
