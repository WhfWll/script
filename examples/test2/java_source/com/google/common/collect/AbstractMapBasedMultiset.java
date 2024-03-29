package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
abstract class AbstractMapBasedMultiset<E>
  extends AbstractMultiset<E>
  implements Serializable
{
  @GwtIncompatible("not needed in emulated source.")
  private static final long serialVersionUID = -2250766705698539974L;
  private transient Map<E, AtomicInteger> backingMap;
  private transient AbstractMapBasedMultiset<E>.EntrySet entrySet;
  private transient long size;
  
  protected AbstractMapBasedMultiset(Map<E, AtomicInteger> paramMap)
  {
    backingMap = ((Map)Preconditions.checkNotNull(paramMap));
    size = super.size();
  }
  
  private static int getAndSet(AtomicInteger paramAtomicInteger, int paramInt)
  {
    if (paramAtomicInteger == null) {
      return 0;
    }
    return paramAtomicInteger.getAndSet(paramInt);
  }
  
  @GwtIncompatible("java.io.ObjectStreamException")
  private void readObjectNoData()
    throws ObjectStreamException
  {
    throw new InvalidObjectException("Stream data required");
  }
  
  private int removeAllOccurrences(@Nullable Object paramObject, Map<E, AtomicInteger> paramMap)
  {
    paramObject = (AtomicInteger)paramMap.remove(paramObject);
    if (paramObject == null) {
      return 0;
    }
    int i = paramObject.getAndSet(0);
    size -= i;
    return i;
  }
  
  public int add(@Nullable E paramE, int paramInt)
  {
    if (paramInt == 0) {
      return count(paramE);
    }
    if (paramInt > 0) {}
    AtomicInteger localAtomicInteger;
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool, "occurrences cannot be negative: %s", new Object[] { Integer.valueOf(paramInt) });
      localAtomicInteger = (AtomicInteger)backingMap.get(paramE);
      if (localAtomicInteger != null) {
        break;
      }
      i = 0;
      backingMap.put(paramE, new AtomicInteger(paramInt));
      size += paramInt;
      return i;
    }
    int i = localAtomicInteger.get();
    long l = i + paramInt;
    if (l <= 2147483647L) {}
    for (bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool, "too many occurrences: %s", new Object[] { Long.valueOf(l) });
      localAtomicInteger.getAndAdd(paramInt);
      break;
    }
  }
  
  Map<E, AtomicInteger> backingMap()
  {
    return backingMap;
  }
  
  public boolean contains(@Nullable Object paramObject)
  {
    paramObject = (AtomicInteger)backingMap.get(paramObject);
    return (paramObject != null) && (paramObject.get() > 0);
  }
  
  public int count(@Nullable Object paramObject)
  {
    paramObject = (AtomicInteger)backingMap.get(paramObject);
    if (paramObject == null) {
      return 0;
    }
    return paramObject.get();
  }
  
  Set<E> createElementSet()
  {
    return new MapBasedElementSet(backingMap);
  }
  
  public Set<Multiset.Entry<E>> entrySet()
  {
    EntrySet localEntrySet2 = entrySet;
    EntrySet localEntrySet1 = localEntrySet2;
    if (localEntrySet2 == null)
    {
      localEntrySet1 = new EntrySet(null);
      entrySet = localEntrySet1;
    }
    return localEntrySet1;
  }
  
  public Iterator<E> iterator()
  {
    return new MapBasedMultisetIterator();
  }
  
  public int remove(@Nullable Object paramObject, int paramInt)
  {
    int i = 0;
    if (paramInt == 0) {
      i = count(paramObject);
    }
    boolean bool;
    AtomicInteger localAtomicInteger;
    do
    {
      return i;
      if (paramInt <= 0) {
        break;
      }
      bool = true;
      Preconditions.checkArgument(bool, "occurrences cannot be negative: %s", new Object[] { Integer.valueOf(paramInt) });
      localAtomicInteger = (AtomicInteger)backingMap.get(paramObject);
    } while (localAtomicInteger == null);
    i = localAtomicInteger.get();
    if (i > paramInt) {}
    for (;;)
    {
      localAtomicInteger.addAndGet(-paramInt);
      size -= paramInt;
      return i;
      bool = false;
      break;
      paramInt = i;
      backingMap.remove(paramObject);
    }
  }
  
  void setBackingMap(Map<E, AtomicInteger> paramMap)
  {
    backingMap = paramMap;
  }
  
  public int setCount(E paramE, int paramInt)
  {
    Multisets.checkNonnegative(paramInt, "count");
    int i;
    if (paramInt == 0) {
      i = getAndSet((AtomicInteger)backingMap.remove(paramE), paramInt);
    }
    for (;;)
    {
      size += paramInt - i;
      return i;
      AtomicInteger localAtomicInteger = (AtomicInteger)backingMap.get(paramE);
      int j = getAndSet(localAtomicInteger, paramInt);
      i = j;
      if (localAtomicInteger == null)
      {
        backingMap.put(paramE, new AtomicInteger(paramInt));
        i = j;
      }
    }
  }
  
  public int size()
  {
    return Ints.saturatedCast(size);
  }
  
  private class EntrySet
    extends AbstractSet<Multiset.Entry<E>>
  {
    static
    {
      JniLib.a(EntrySet.class, 390);
    }
    
    private EntrySet() {}
    
    public native void clear();
    
    public native boolean contains(Object paramObject);
    
    public native Iterator<Multiset.Entry<E>> iterator();
    
    public native boolean remove(Object paramObject);
    
    public native int size();
  }
  
  class MapBasedElementSet
    extends ForwardingSet<E>
  {
    private final Set<E> delegate;
    private final Map<E, AtomicInteger> map;
    
    static
    {
      JniLib.a(MapBasedElementSet.class, 392);
    }
    
    MapBasedElementSet()
    {
      Object localObject;
      map = localObject;
      delegate = localObject.keySet();
    }
    
    public native void clear();
    
    protected native Set<E> delegate();
    
    public native Map<E, AtomicInteger> getMap();
    
    public native Iterator<E> iterator();
    
    public native boolean remove(Object paramObject);
    
    public native boolean removeAll(Collection<?> paramCollection);
    
    public native boolean retainAll(Collection<?> paramCollection);
  }
  
  private class MapBasedMultisetIterator
    implements Iterator<E>
  {
    boolean canRemove;
    Map.Entry<E, AtomicInteger> currentEntry;
    final Iterator<Map.Entry<E, AtomicInteger>> entryIterator = backingMap.entrySet().iterator();
    int occurrencesLeft;
    
    static
    {
      JniLib.a(MapBasedMultisetIterator.class, 393);
    }
    
    MapBasedMultisetIterator() {}
    
    public native boolean hasNext();
    
    public native E next();
    
    public native void remove();
  }
}
