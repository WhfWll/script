package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public abstract class ImmutableCollection<E>
  implements Collection<E>, Serializable
{
  static final ImmutableCollection<Object> EMPTY_IMMUTABLE_COLLECTION = new EmptyImmutableCollection(null);
  private transient ImmutableList<E> asList;
  
  ImmutableCollection() {}
  
  public final boolean add(E paramE)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean addAll(Collection<? extends E> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public ImmutableList<E> asList()
  {
    ImmutableList localImmutableList2 = asList;
    ImmutableList localImmutableList1 = localImmutableList2;
    if (localImmutableList2 == null)
    {
      localImmutableList1 = createAsList();
      asList = localImmutableList1;
    }
    return localImmutableList1;
  }
  
  public final void clear()
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean contains(@Nullable Object paramObject)
  {
    return (paramObject != null) && (Iterators.contains(iterator(), paramObject));
  }
  
  public boolean containsAll(Collection<?> paramCollection)
  {
    return Collections2.containsAllImpl(this, paramCollection);
  }
  
  ImmutableList<E> createAsList()
  {
    switch (size())
    {
    default: 
      return new ImmutableAsList(toArray(), this);
    case 0: 
      return ImmutableList.of();
    }
    return ImmutableList.of(iterator().next());
  }
  
  public boolean isEmpty()
  {
    return size() == 0;
  }
  
  abstract boolean isPartialView();
  
  public abstract UnmodifiableIterator<E> iterator();
  
  public final boolean remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean removeAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean retainAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public Object[] toArray()
  {
    return ObjectArrays.toArrayImpl(this);
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return ObjectArrays.toArrayImpl(this, paramArrayOfT);
  }
  
  public String toString()
  {
    return Collections2.toStringImpl(this);
  }
  
  Object writeReplace()
  {
    return new SerializedForm(toArray());
  }
  
  private static class ArrayImmutableCollection<E>
    extends ImmutableCollection<E>
  {
    private final E[] elements;
    
    static
    {
      JniLib.a(ArrayImmutableCollection.class, 517);
    }
    
    ArrayImmutableCollection(E[] paramArrayOfE)
    {
      elements = paramArrayOfE;
    }
    
    native ImmutableList<E> createAsList();
    
    public native boolean isEmpty();
    
    native boolean isPartialView();
    
    public native UnmodifiableIterator<E> iterator();
    
    public native int size();
  }
  
  static abstract class Builder<E>
  {
    Builder() {}
    
    public abstract Builder<E> add(E paramE);
    
    public Builder<E> add(E... paramVarArgs)
    {
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        add(paramVarArgs[i]);
        i += 1;
      }
      return this;
    }
    
    public Builder<E> addAll(Iterable<? extends E> paramIterable)
    {
      paramIterable = paramIterable.iterator();
      while (paramIterable.hasNext()) {
        add(paramIterable.next());
      }
      return this;
    }
    
    public Builder<E> addAll(Iterator<? extends E> paramIterator)
    {
      while (paramIterator.hasNext()) {
        add(paramIterator.next());
      }
      return this;
    }
    
    public abstract ImmutableCollection<E> build();
  }
  
  private static class EmptyImmutableCollection
    extends ImmutableCollection<Object>
  {
    private static final Object[] EMPTY_ARRAY = new Object[0];
    
    static
    {
      JniLib.a(EmptyImmutableCollection.class, 518);
    }
    
    private EmptyImmutableCollection() {}
    
    public native boolean contains(@Nullable Object paramObject);
    
    native ImmutableList<Object> createAsList();
    
    public native boolean isEmpty();
    
    native boolean isPartialView();
    
    public native UnmodifiableIterator<Object> iterator();
    
    public native int size();
    
    public native Object[] toArray();
    
    public native <T> T[] toArray(T[] paramArrayOfT);
  }
  
  private static class SerializedForm
    implements Serializable
  {
    private static final long serialVersionUID = 0L;
    final Object[] elements;
    
    static
    {
      JniLib.a(SerializedForm.class, 519);
    }
    
    SerializedForm(Object[] paramArrayOfObject)
    {
      elements = paramArrayOfObject;
    }
    
    native Object readResolve();
  }
}
