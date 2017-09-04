package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
abstract class AbstractBiMap<K, V>
  extends ForwardingMap<K, V>
  implements BiMap<K, V>, Serializable
{
  @GwtIncompatible("Not needed in emulated source.")
  private static final long serialVersionUID = 0L;
  private transient Map<K, V> delegate;
  private transient Set<Map.Entry<K, V>> entrySet;
  private transient AbstractBiMap<V, K> inverse;
  private transient Set<K> keySet;
  private transient Set<V> valueSet;
  
  private AbstractBiMap(Map<K, V> paramMap, AbstractBiMap<V, K> paramAbstractBiMap)
  {
    delegate = paramMap;
    inverse = paramAbstractBiMap;
  }
  
  AbstractBiMap(Map<K, V> paramMap, Map<V, K> paramMap1)
  {
    setDelegates(paramMap, paramMap1);
  }
  
  private V putInBothMaps(@Nullable K paramK, @Nullable V paramV, boolean paramBoolean)
  {
    boolean bool = containsKey(paramK);
    if ((bool) && (Objects.equal(paramV, get(paramK)))) {
      return paramV;
    }
    if (paramBoolean)
    {
      inverse().remove(paramV);
      Object localObject = delegate.put(paramK, paramV);
      updateInverseMap(paramK, bool, localObject, paramV);
      return localObject;
    }
    if (!containsValue(paramV)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      Preconditions.checkArgument(paramBoolean, "value already present: %s", new Object[] { paramV });
      break;
    }
  }
  
  private V removeFromBothMaps(Object paramObject)
  {
    paramObject = delegate.remove(paramObject);
    removeFromInverseMap(paramObject);
    return paramObject;
  }
  
  private void removeFromInverseMap(V paramV)
  {
    inverse.delegate.remove(paramV);
  }
  
  private void updateInverseMap(K paramK, boolean paramBoolean, V paramV1, V paramV2)
  {
    if (paramBoolean) {
      removeFromInverseMap(paramV1);
    }
    inverse.delegate.put(paramV2, paramK);
  }
  
  public void clear()
  {
    delegate.clear();
    inverse.delegate.clear();
  }
  
  public boolean containsValue(Object paramObject)
  {
    return inverse.containsKey(paramObject);
  }
  
  protected Map<K, V> delegate()
  {
    return delegate;
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    Set localSet = entrySet;
    Object localObject = localSet;
    if (localSet == null)
    {
      localObject = new EntrySet(null);
      entrySet = ((Set)localObject);
    }
    return localObject;
  }
  
  public V forcePut(K paramK, V paramV)
  {
    return putInBothMaps(paramK, paramV, true);
  }
  
  public BiMap<V, K> inverse()
  {
    return inverse;
  }
  
  public Set<K> keySet()
  {
    Set localSet = keySet;
    Object localObject = localSet;
    if (localSet == null)
    {
      localObject = new KeySet(null);
      keySet = ((Set)localObject);
    }
    return localObject;
  }
  
  public V put(K paramK, V paramV)
  {
    return putInBothMaps(paramK, paramV, false);
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      put(localEntry.getKey(), localEntry.getValue());
    }
  }
  
  public V remove(Object paramObject)
  {
    if (containsKey(paramObject)) {
      return removeFromBothMaps(paramObject);
    }
    return null;
  }
  
  void setDelegates(Map<K, V> paramMap, Map<V, K> paramMap1)
  {
    boolean bool2 = true;
    if (delegate == null)
    {
      bool1 = true;
      Preconditions.checkState(bool1);
      if (inverse != null) {
        break label84;
      }
      bool1 = true;
      label25:
      Preconditions.checkState(bool1);
      Preconditions.checkArgument(paramMap.isEmpty());
      Preconditions.checkArgument(paramMap1.isEmpty());
      if (paramMap == paramMap1) {
        break label89;
      }
    }
    label84:
    label89:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      Preconditions.checkArgument(bool1);
      delegate = paramMap;
      inverse = new Inverse(paramMap1, this, null);
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label25;
    }
  }
  
  void setInverse(AbstractBiMap<V, K> paramAbstractBiMap)
  {
    inverse = paramAbstractBiMap;
  }
  
  public Set<V> values()
  {
    Set localSet = valueSet;
    Object localObject = localSet;
    if (localSet == null)
    {
      localObject = new ValueSet(null);
      valueSet = ((Set)localObject);
    }
    return localObject;
  }
  
  private class EntrySet
    extends ForwardingSet<Map.Entry<K, V>>
  {
    final Set<Map.Entry<K, V>> esDelegate = delegate.entrySet();
    
    static
    {
      JniLib.a(EntrySet.class, 382);
    }
    
    private EntrySet() {}
    
    public native void clear();
    
    public native boolean contains(Object paramObject);
    
    public native boolean containsAll(Collection<?> paramCollection);
    
    protected native Set<Map.Entry<K, V>> delegate();
    
    public native Iterator<Map.Entry<K, V>> iterator();
    
    public native boolean remove(Object paramObject);
    
    public native boolean removeAll(Collection<?> paramCollection);
    
    public native boolean retainAll(Collection<?> paramCollection);
    
    public native Object[] toArray();
    
    public native <T> T[] toArray(T[] paramArrayOfT);
  }
  
  private static class Inverse<K, V>
    extends AbstractBiMap<K, V>
  {
    @GwtIncompatible("Not needed in emulated source.")
    private static final long serialVersionUID = 0L;
    
    static
    {
      JniLib.a(Inverse.class, 383);
    }
    
    private Inverse(Map<K, V> paramMap, AbstractBiMap<V, K> paramAbstractBiMap)
    {
      super(paramAbstractBiMap, null);
    }
    
    @GwtIncompatible("java.io.ObjectInputStream")
    private native void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException;
    
    @GwtIncompatible("java.io.ObjectOuputStream")
    private native void writeObject(ObjectOutputStream paramObjectOutputStream)
      throws IOException;
    
    @GwtIncompatible("Not needed in the emulated source.")
    native Object readResolve();
  }
  
  private class KeySet
    extends ForwardingSet<K>
  {
    static
    {
      JniLib.a(KeySet.class, 385);
    }
    
    private KeySet() {}
    
    public native void clear();
    
    protected native Set<K> delegate();
    
    public native Iterator<K> iterator();
    
    public native boolean remove(Object paramObject);
    
    public native boolean removeAll(Collection<?> paramCollection);
    
    public native boolean retainAll(Collection<?> paramCollection);
  }
  
  private class ValueSet
    extends ForwardingSet<V>
  {
    final Set<V> valuesDelegate = inverse.keySet();
    
    static
    {
      JniLib.a(ValueSet.class, 387);
    }
    
    private ValueSet() {}
    
    protected native Set<V> delegate();
    
    public native Iterator<V> iterator();
    
    public native Object[] toArray();
    
    public native <T> T[] toArray(T[] paramArrayOfT);
    
    public native String toString();
  }
}
