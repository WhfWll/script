package android.support.v4.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ArrayMap<K, V>
  extends SimpleArrayMap<K, V>
  implements Map<K, V>
{
  MapCollections<K, V> mCollections;
  
  public ArrayMap() {}
  
  public ArrayMap(int paramInt)
  {
    super(paramInt);
  }
  
  public ArrayMap(SimpleArrayMap paramSimpleArrayMap)
  {
    super(paramSimpleArrayMap);
  }
  
  private MapCollections<K, V> getCollection()
  {
    if (mCollections == null) {
      mCollections = new MapCollections()
      {
        protected void colClear()
        {
          clear();
        }
        
        protected Object colGetEntry(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          return mArray[((paramAnonymousInt1 << 1) + paramAnonymousInt2)];
        }
        
        protected Map<K, V> colGetMap()
        {
          return ArrayMap.this;
        }
        
        protected int colGetSize()
        {
          return mSize;
        }
        
        protected int colIndexOfKey(Object paramAnonymousObject)
        {
          if (paramAnonymousObject == null) {
            return indexOfNull();
          }
          return indexOf(paramAnonymousObject, paramAnonymousObject.hashCode());
        }
        
        protected int colIndexOfValue(Object paramAnonymousObject)
        {
          return indexOfValue(paramAnonymousObject);
        }
        
        protected void colPut(K paramAnonymousK, V paramAnonymousV)
        {
          put(paramAnonymousK, paramAnonymousV);
        }
        
        protected void colRemoveAt(int paramAnonymousInt)
        {
          removeAt(paramAnonymousInt);
        }
        
        protected V colSetValue(int paramAnonymousInt, V paramAnonymousV)
        {
          return setValueAt(paramAnonymousInt, paramAnonymousV);
        }
      };
    }
    return mCollections;
  }
  
  public boolean containsAll(Collection<?> paramCollection)
  {
    return MapCollections.containsAllHelper(this, paramCollection);
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    return getCollection().getEntrySet();
  }
  
  public Set<K> keySet()
  {
    return getCollection().getKeySet();
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    ensureCapacity(mSize + paramMap.size());
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      put(localEntry.getKey(), localEntry.getValue());
    }
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    return MapCollections.removeAllHelper(this, paramCollection);
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    return MapCollections.retainAllHelper(this, paramCollection);
  }
  
  public Collection<V> values()
  {
    return getCollection().getValues();
  }
}
