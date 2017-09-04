package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.Nullable;

@GwtCompatible
public abstract class ForwardingSortedMap<K, V>
  extends ForwardingMap<K, V>
  implements SortedMap<K, V>
{
  protected ForwardingSortedMap() {}
  
  private int unsafeCompare(Object paramObject1, Object paramObject2)
  {
    Comparator localComparator = comparator();
    if (localComparator == null) {
      return ((Comparable)paramObject1).compareTo(paramObject2);
    }
    return localComparator.compare(paramObject1, paramObject2);
  }
  
  public Comparator<? super K> comparator()
  {
    return delegate().comparator();
  }
  
  protected abstract SortedMap<K, V> delegate();
  
  public K firstKey()
  {
    return delegate().firstKey();
  }
  
  public SortedMap<K, V> headMap(K paramK)
  {
    return delegate().headMap(paramK);
  }
  
  public K lastKey()
  {
    return delegate().lastKey();
  }
  
  @Beta
  protected boolean standardContainsKey(@Nullable Object paramObject)
  {
    boolean bool = false;
    try
    {
      int i = unsafeCompare(tailMap(paramObject).firstKey(), paramObject);
      if (i == 0) {
        bool = true;
      }
      return bool;
    }
    catch (ClassCastException paramObject)
    {
      return false;
    }
    catch (NoSuchElementException paramObject)
    {
      return false;
    }
    catch (NullPointerException paramObject) {}
    return false;
  }
  
  @Beta
  protected V standardRemove(@Nullable Object paramObject)
  {
    try
    {
      Iterator localIterator = tailMap(paramObject).entrySet().iterator();
      if (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (unsafeCompare(localEntry.getKey(), paramObject) == 0)
        {
          paramObject = localEntry.getValue();
          localIterator.remove();
          return paramObject;
        }
      }
    }
    catch (ClassCastException paramObject)
    {
      return null;
    }
    catch (NullPointerException paramObject)
    {
      return null;
    }
    return null;
  }
  
  @Beta
  protected SortedMap<K, V> standardSubMap(K paramK1, K paramK2)
  {
    return tailMap(paramK1).headMap(paramK2);
  }
  
  public SortedMap<K, V> subMap(K paramK1, K paramK2)
  {
    return delegate().subMap(paramK1, paramK2);
  }
  
  public SortedMap<K, V> tailMap(K paramK)
  {
    return delegate().tailMap(paramK);
  }
}
