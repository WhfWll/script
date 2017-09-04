package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible
abstract class AbstractMultiset<E>
  extends AbstractCollection<E>
  implements Multiset<E>
{
  private transient Set<E> elementSet;
  
  AbstractMultiset() {}
  
  public int add(E paramE, int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean add(@Nullable E paramE)
  {
    add(paramE, 1);
    return true;
  }
  
  public boolean addAll(Collection<? extends E> paramCollection)
  {
    return Multisets.addAllImpl(this, paramCollection);
  }
  
  public void clear()
  {
    entrySet().clear();
  }
  
  public boolean contains(@Nullable Object paramObject)
  {
    return count(paramObject) > 0;
  }
  
  public int count(Object paramObject)
  {
    Iterator localIterator = entrySet().iterator();
    while (localIterator.hasNext())
    {
      Multiset.Entry localEntry = (Multiset.Entry)localIterator.next();
      if (Objects.equal(localEntry.getElement(), paramObject)) {
        return localEntry.getCount();
      }
    }
    return 0;
  }
  
  Set<E> createElementSet()
  {
    return Multisets.elementSetImpl(this);
  }
  
  public Set<E> elementSet()
  {
    Set localSet2 = elementSet;
    Set localSet1 = localSet2;
    if (localSet2 == null)
    {
      localSet1 = createElementSet();
      elementSet = localSet1;
    }
    return localSet1;
  }
  
  public abstract Set<Multiset.Entry<E>> entrySet();
  
  public boolean equals(@Nullable Object paramObject)
  {
    return Multisets.equalsImpl(this, paramObject);
  }
  
  public int hashCode()
  {
    return entrySet().hashCode();
  }
  
  public boolean isEmpty()
  {
    return entrySet().isEmpty();
  }
  
  public Iterator<E> iterator()
  {
    return Multisets.iteratorImpl(this);
  }
  
  public int remove(Object paramObject, int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean remove(Object paramObject)
  {
    return remove(paramObject, 1) > 0;
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    return Multisets.removeAllImpl(this, paramCollection);
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    return Multisets.retainAllImpl(this, paramCollection);
  }
  
  public int setCount(E paramE, int paramInt)
  {
    return Multisets.setCountImpl(this, paramE, paramInt);
  }
  
  public boolean setCount(E paramE, int paramInt1, int paramInt2)
  {
    return Multisets.setCountImpl(this, paramE, paramInt1, paramInt2);
  }
  
  public int size()
  {
    return Multisets.sizeImpl(this);
  }
  
  public String toString()
  {
    return entrySet().toString();
  }
}