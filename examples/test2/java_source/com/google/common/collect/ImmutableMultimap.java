package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.TreeMap;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public abstract class ImmutableMultimap<K, V>
  implements Multimap<K, V>, Serializable
{
  private static final long serialVersionUID = 0L;
  private transient ImmutableCollection<Map.Entry<K, V>> entries;
  private transient ImmutableMultiset<K> keys;
  final transient ImmutableMap<K, ? extends ImmutableCollection<V>> map;
  final transient int size;
  private transient ImmutableCollection<V> values;
  
  ImmutableMultimap(ImmutableMap<K, ? extends ImmutableCollection<V>> paramImmutableMap, int paramInt)
  {
    map = paramImmutableMap;
    size = paramInt;
  }
  
  public static <K, V> Builder<K, V> builder()
  {
    return new Builder();
  }
  
  public static <K, V> ImmutableMultimap<K, V> copyOf(Multimap<? extends K, ? extends V> paramMultimap)
  {
    if ((paramMultimap instanceof ImmutableMultimap))
    {
      ImmutableMultimap localImmutableMultimap = (ImmutableMultimap)paramMultimap;
      if (!localImmutableMultimap.isPartialView()) {
        return localImmutableMultimap;
      }
    }
    return ImmutableListMultimap.copyOf(paramMultimap);
  }
  
  private ImmutableMultiset<K> createKeys()
  {
    ImmutableMultiset.Builder localBuilder = ImmutableMultiset.builder();
    Iterator localIterator = map.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localBuilder.addCopies(localEntry.getKey(), ((ImmutableCollection)localEntry.getValue()).size());
    }
    return localBuilder.build();
  }
  
  public static <K, V> ImmutableMultimap<K, V> of()
  {
    return ImmutableListMultimap.of();
  }
  
  public static <K, V> ImmutableMultimap<K, V> of(K paramK, V paramV)
  {
    return ImmutableListMultimap.of(paramK, paramV);
  }
  
  public static <K, V> ImmutableMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2)
  {
    return ImmutableListMultimap.of(paramK1, paramV1, paramK2, paramV2);
  }
  
  public static <K, V> ImmutableMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3)
  {
    return ImmutableListMultimap.of(paramK1, paramV1, paramK2, paramV2, paramK3, paramV3);
  }
  
  public static <K, V> ImmutableMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4)
  {
    return ImmutableListMultimap.of(paramK1, paramV1, paramK2, paramV2, paramK3, paramV3, paramK4, paramV4);
  }
  
  public static <K, V> ImmutableMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4, K paramK5, V paramV5)
  {
    return ImmutableListMultimap.of(paramK1, paramV1, paramK2, paramV2, paramK3, paramV3, paramK4, paramV4, paramK5, paramV5);
  }
  
  public ImmutableMap<K, Collection<V>> asMap()
  {
    return map;
  }
  
  public void clear()
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean containsEntry(@Nullable Object paramObject1, @Nullable Object paramObject2)
  {
    paramObject1 = (Collection)map.get(paramObject1);
    return (paramObject1 != null) && (paramObject1.contains(paramObject2));
  }
  
  public boolean containsKey(@Nullable Object paramObject)
  {
    return map.containsKey(paramObject);
  }
  
  public boolean containsValue(@Nullable Object paramObject)
  {
    Iterator localIterator = map.values().iterator();
    while (localIterator.hasNext()) {
      if (((ImmutableCollection)localIterator.next()).contains(paramObject)) {
        return true;
      }
    }
    return false;
  }
  
  public ImmutableCollection<Map.Entry<K, V>> entries()
  {
    ImmutableCollection localImmutableCollection = entries;
    Object localObject = localImmutableCollection;
    if (localImmutableCollection == null)
    {
      localObject = new EntryCollection(this);
      entries = ((ImmutableCollection)localObject);
    }
    return localObject;
  }
  
  public boolean equals(@Nullable Object paramObject)
  {
    if ((paramObject instanceof Multimap))
    {
      paramObject = (Multimap)paramObject;
      return map.equals(paramObject.asMap());
    }
    return false;
  }
  
  public abstract ImmutableCollection<V> get(K paramK);
  
  public int hashCode()
  {
    return map.hashCode();
  }
  
  public boolean isEmpty()
  {
    return size == 0;
  }
  
  boolean isPartialView()
  {
    return map.isPartialView();
  }
  
  public ImmutableSet<K> keySet()
  {
    return map.keySet();
  }
  
  public ImmutableMultiset<K> keys()
  {
    ImmutableMultiset localImmutableMultiset2 = keys;
    ImmutableMultiset localImmutableMultiset1 = localImmutableMultiset2;
    if (localImmutableMultiset2 == null)
    {
      localImmutableMultiset1 = createKeys();
      keys = localImmutableMultiset1;
    }
    return localImmutableMultiset1;
  }
  
  public boolean put(K paramK, V paramV)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean putAll(Multimap<? extends K, ? extends V> paramMultimap)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean putAll(K paramK, Iterable<? extends V> paramIterable)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean remove(Object paramObject1, Object paramObject2)
  {
    throw new UnsupportedOperationException();
  }
  
  public ImmutableCollection<V> removeAll(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }
  
  public ImmutableCollection<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
  {
    throw new UnsupportedOperationException();
  }
  
  public int size()
  {
    return size;
  }
  
  public String toString()
  {
    return map.toString();
  }
  
  public ImmutableCollection<V> values()
  {
    ImmutableCollection localImmutableCollection = values;
    Object localObject = localImmutableCollection;
    if (localImmutableCollection == null)
    {
      localObject = new Values(this);
      values = ((ImmutableCollection)localObject);
    }
    return localObject;
  }
  
  public static class Builder<K, V>
  {
    Multimap<K, V> builderMultimap = new ImmutableMultimap.BuilderMultimap();
    Comparator<? super V> valueComparator;
    
    static
    {
      JniLib.a(Builder.class, 527);
    }
    
    public Builder() {}
    
    public native ImmutableMultimap<K, V> build();
    
    @Beta
    public native Builder<K, V> orderKeysBy(Comparator<? super K> paramComparator);
    
    @Beta
    public native Builder<K, V> orderValuesBy(Comparator<? super V> paramComparator);
    
    public native Builder<K, V> put(K paramK, V paramV);
    
    public native Builder<K, V> putAll(Multimap<? extends K, ? extends V> paramMultimap);
    
    public native Builder<K, V> putAll(K paramK, Iterable<? extends V> paramIterable);
    
    public Builder<K, V> putAll(K paramK, V... paramVarArgs)
    {
      return putAll(paramK, Arrays.asList(paramVarArgs));
    }
  }
  
  private static class BuilderMultimap<K, V>
    extends AbstractMultimap<K, V>
  {
    private static final long serialVersionUID = 0L;
    
    static
    {
      JniLib.a(BuilderMultimap.class, 529);
    }
    
    BuilderMultimap()
    {
      super();
    }
    
    native Collection<V> createCollection();
  }
  
  private static class EntryCollection<K, V>
    extends ImmutableCollection<Map.Entry<K, V>>
  {
    private static final long serialVersionUID = 0L;
    final ImmutableMultimap<K, V> multimap;
    
    static
    {
      JniLib.a(EntryCollection.class, 531);
    }
    
    EntryCollection(ImmutableMultimap<K, V> paramImmutableMultimap)
    {
      multimap = paramImmutableMultimap;
    }
    
    public native boolean contains(Object paramObject);
    
    native boolean isPartialView();
    
    public native UnmodifiableIterator<Map.Entry<K, V>> iterator();
    
    public native int size();
  }
  
  @GwtIncompatible("java serialization is not supported")
  static class FieldSettersHolder
  {
    static final Serialization.FieldSetter<ImmutableMultimap> MAP_FIELD_SETTER = Serialization.getFieldSetter(ImmutableMultimap.class, "map");
    static final Serialization.FieldSetter<ImmutableMultimap> SIZE_FIELD_SETTER = Serialization.getFieldSetter(ImmutableMultimap.class, "size");
    
    FieldSettersHolder() {}
  }
  
  private static class SortedKeyBuilderMultimap<K, V>
    extends AbstractMultimap<K, V>
  {
    private static final long serialVersionUID = 0L;
    
    static
    {
      JniLib.a(SortedKeyBuilderMultimap.class, 532);
    }
    
    SortedKeyBuilderMultimap(Comparator<? super K> paramComparator, Multimap<K, V> paramMultimap)
    {
      super();
      putAll(paramMultimap);
    }
    
    native Collection<V> createCollection();
  }
  
  private static class Values<V>
    extends ImmutableCollection<V>
  {
    private static final long serialVersionUID = 0L;
    final ImmutableMultimap<?, V> multimap;
    
    static
    {
      JniLib.a(Values.class, 534);
    }
    
    Values(ImmutableMultimap<?, V> paramImmutableMultimap)
    {
      multimap = paramImmutableMultimap;
    }
    
    native boolean isPartialView();
    
    public native UnmodifiableIterator<V> iterator();
    
    public native int size();
  }
}
