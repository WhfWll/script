package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.Nullable;

@GwtCompatible
abstract class AbstractMultimap<K, V>
  implements Multimap<K, V>, Serializable
{
  private static final long serialVersionUID = 2447537837011683357L;
  private transient Map<K, Collection<V>> asMap;
  private transient Collection<Map.Entry<K, V>> entries;
  private transient Set<K> keySet;
  private transient Map<K, Collection<V>> map;
  private transient Multiset<K> multiset;
  private transient int totalSize;
  private transient Collection<V> valuesCollection;
  
  protected AbstractMultimap(Map<K, Collection<V>> paramMap)
  {
    Preconditions.checkArgument(paramMap.isEmpty());
    map = paramMap;
  }
  
  private Map<K, Collection<V>> createAsMap()
  {
    if ((map instanceof SortedMap)) {
      return new SortedAsMap((SortedMap)map);
    }
    return new AsMap(map);
  }
  
  private Collection<Map.Entry<K, V>> createEntries()
  {
    if ((this instanceof SetMultimap)) {
      return new EntrySet(null);
    }
    return new Entries(null);
  }
  
  private Set<K> createKeySet()
  {
    if ((map instanceof SortedMap)) {
      return new SortedKeySet((SortedMap)map);
    }
    return new KeySet(map);
  }
  
  private Collection<V> getOrCreateCollection(@Nullable K paramK)
  {
    Collection localCollection2 = (Collection)map.get(paramK);
    Collection localCollection1 = localCollection2;
    if (localCollection2 == null)
    {
      localCollection1 = createCollection(paramK);
      map.put(paramK, localCollection1);
    }
    return localCollection1;
  }
  
  private Iterator<V> iteratorOrListIterator(Collection<V> paramCollection)
  {
    if ((paramCollection instanceof List)) {
      return ((List)paramCollection).listIterator();
    }
    return paramCollection.iterator();
  }
  
  private int removeValuesForKey(Object paramObject)
  {
    try
    {
      paramObject = (Collection)map.remove(paramObject);
      int i = 0;
      if (paramObject != null)
      {
        i = paramObject.size();
        paramObject.clear();
        totalSize -= i;
      }
      return i;
    }
    catch (NullPointerException paramObject)
    {
      return 0;
    }
    catch (ClassCastException paramObject) {}
    return 0;
  }
  
  private Collection<V> unmodifiableCollectionSubclass(Collection<V> paramCollection)
  {
    if ((paramCollection instanceof SortedSet)) {
      return Collections.unmodifiableSortedSet((SortedSet)paramCollection);
    }
    if ((paramCollection instanceof Set)) {
      return Collections.unmodifiableSet((Set)paramCollection);
    }
    if ((paramCollection instanceof List)) {
      return Collections.unmodifiableList((List)paramCollection);
    }
    return Collections.unmodifiableCollection(paramCollection);
  }
  
  private Collection<V> wrapCollection(@Nullable K paramK, Collection<V> paramCollection)
  {
    if ((paramCollection instanceof SortedSet)) {
      return new WrappedSortedSet(paramK, (SortedSet)paramCollection, null);
    }
    if ((paramCollection instanceof Set)) {
      return new WrappedSet(paramK, (Set)paramCollection);
    }
    if ((paramCollection instanceof List)) {
      return wrapList(paramK, (List)paramCollection, null);
    }
    return new WrappedCollection(paramK, paramCollection, null);
  }
  
  private List<V> wrapList(@Nullable K paramK, List<V> paramList, @Nullable AbstractMultimap<K, V>.WrappedCollection paramAbstractMultimap)
  {
    if ((paramList instanceof RandomAccess)) {
      return new RandomAccessWrappedList(paramK, paramList, paramAbstractMultimap);
    }
    return new WrappedList(paramK, paramList, paramAbstractMultimap);
  }
  
  public Map<K, Collection<V>> asMap()
  {
    Map localMap2 = asMap;
    Map localMap1 = localMap2;
    if (localMap2 == null)
    {
      localMap1 = createAsMap();
      asMap = localMap1;
    }
    return localMap1;
  }
  
  Map<K, Collection<V>> backingMap()
  {
    return map;
  }
  
  public void clear()
  {
    Iterator localIterator = map.values().iterator();
    while (localIterator.hasNext()) {
      ((Collection)localIterator.next()).clear();
    }
    map.clear();
    totalSize = 0;
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
      if (((Collection)localIterator.next()).contains(paramObject)) {
        return true;
      }
    }
    return false;
  }
  
  abstract Collection<V> createCollection();
  
  Collection<V> createCollection(@Nullable K paramK)
  {
    return createCollection();
  }
  
  Iterator<Map.Entry<K, V>> createEntryIterator()
  {
    return new EntryIterator();
  }
  
  public Collection<Map.Entry<K, V>> entries()
  {
    Collection localCollection2 = entries;
    Collection localCollection1 = localCollection2;
    if (localCollection2 == null)
    {
      localCollection1 = createEntries();
      entries = localCollection1;
    }
    return localCollection1;
  }
  
  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof Multimap))
    {
      paramObject = (Multimap)paramObject;
      return map.equals(paramObject.asMap());
    }
    return false;
  }
  
  public Collection<V> get(@Nullable K paramK)
  {
    Collection localCollection2 = (Collection)map.get(paramK);
    Collection localCollection1 = localCollection2;
    if (localCollection2 == null) {
      localCollection1 = createCollection(paramK);
    }
    return wrapCollection(paramK, localCollection1);
  }
  
  public int hashCode()
  {
    return map.hashCode();
  }
  
  public boolean isEmpty()
  {
    return totalSize == 0;
  }
  
  public Set<K> keySet()
  {
    Set localSet2 = keySet;
    Set localSet1 = localSet2;
    if (localSet2 == null)
    {
      localSet1 = createKeySet();
      keySet = localSet1;
    }
    return localSet1;
  }
  
  public Multiset<K> keys()
  {
    Multiset localMultiset = multiset;
    Object localObject = localMultiset;
    if (localMultiset == null)
    {
      localObject = new MultisetView(null);
      multiset = ((Multiset)localObject);
    }
    return localObject;
  }
  
  public boolean put(@Nullable K paramK, @Nullable V paramV)
  {
    if (getOrCreateCollection(paramK).add(paramV))
    {
      totalSize += 1;
      return true;
    }
    return false;
  }
  
  public boolean putAll(Multimap<? extends K, ? extends V> paramMultimap)
  {
    boolean bool = false;
    paramMultimap = paramMultimap.entries().iterator();
    while (paramMultimap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMultimap.next();
      bool |= put(localEntry.getKey(), localEntry.getValue());
    }
    return bool;
  }
  
  public boolean putAll(@Nullable K paramK, Iterable<? extends V> paramIterable)
  {
    if (!paramIterable.iterator().hasNext()) {
      return false;
    }
    paramK = getOrCreateCollection(paramK);
    int i = paramK.size();
    boolean bool1 = false;
    boolean bool2;
    if ((paramIterable instanceof Collection))
    {
      bool2 = paramK.addAll(Collections2.cast(paramIterable));
      totalSize += paramK.size() - i;
      return bool2;
    }
    paramIterable = paramIterable.iterator();
    for (;;)
    {
      bool2 = bool1;
      if (!paramIterable.hasNext()) {
        break;
      }
      bool1 |= paramK.add(paramIterable.next());
    }
  }
  
  public boolean remove(@Nullable Object paramObject1, @Nullable Object paramObject2)
  {
    Collection localCollection = (Collection)map.get(paramObject1);
    boolean bool1;
    if (localCollection == null) {
      bool1 = false;
    }
    boolean bool2;
    do
    {
      do
      {
        return bool1;
        bool2 = localCollection.remove(paramObject2);
        bool1 = bool2;
      } while (!bool2);
      totalSize -= 1;
      bool1 = bool2;
    } while (!localCollection.isEmpty());
    map.remove(paramObject1);
    return bool2;
  }
  
  public Collection<V> removeAll(@Nullable Object paramObject)
  {
    paramObject = (Collection)map.remove(paramObject);
    Collection localCollection = createCollection();
    if (paramObject != null)
    {
      localCollection.addAll(paramObject);
      totalSize -= paramObject.size();
      paramObject.clear();
    }
    return unmodifiableCollectionSubclass(localCollection);
  }
  
  public Collection<V> replaceValues(@Nullable K paramK, Iterable<? extends V> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    if (!paramIterable.hasNext()) {
      return removeAll(paramK);
    }
    paramK = getOrCreateCollection(paramK);
    Collection localCollection = createCollection();
    localCollection.addAll(paramK);
    totalSize -= paramK.size();
    paramK.clear();
    while (paramIterable.hasNext()) {
      if (paramK.add(paramIterable.next())) {
        totalSize += 1;
      }
    }
    return unmodifiableCollectionSubclass(localCollection);
  }
  
  final void setMap(Map<K, Collection<V>> paramMap)
  {
    map = paramMap;
    totalSize = 0;
    paramMap = paramMap.values().iterator();
    if (paramMap.hasNext())
    {
      Collection localCollection = (Collection)paramMap.next();
      if (!localCollection.isEmpty()) {}
      for (boolean bool = true;; bool = false)
      {
        Preconditions.checkArgument(bool);
        totalSize += localCollection.size();
        break;
      }
    }
  }
  
  public int size()
  {
    return totalSize;
  }
  
  public String toString()
  {
    return map.toString();
  }
  
  public Collection<V> values()
  {
    Collection localCollection = valuesCollection;
    Object localObject = localCollection;
    if (localCollection == null)
    {
      localObject = new Values(null);
      valuesCollection = ((Collection)localObject);
    }
    return localObject;
  }
  
  private class AsMap
    extends AbstractMap<K, Collection<V>>
  {
    transient Set<Map.Entry<K, Collection<V>>> entrySet;
    final transient Map<K, Collection<V>> submap;
    
    static
    {
      JniLib.a(AsMap.class, 396);
    }
    
    AsMap()
    {
      Object localObject;
      submap = localObject;
    }
    
    public native boolean containsKey(Object paramObject);
    
    public native Set<Map.Entry<K, Collection<V>>> entrySet();
    
    public native boolean equals(@Nullable Object paramObject);
    
    public native Collection<V> get(Object paramObject);
    
    public native int hashCode();
    
    public native Set<K> keySet();
    
    public native Collection<V> remove(Object paramObject);
    
    public native String toString();
    
    class AsMapEntries
      extends AbstractSet<Map.Entry<K, Collection<V>>>
    {
      static
      {
        JniLib.a(AsMapEntries.class, 394);
      }
      
      AsMapEntries() {}
      
      public native boolean contains(Object paramObject);
      
      public native Iterator<Map.Entry<K, Collection<V>>> iterator();
      
      public native boolean remove(Object paramObject);
      
      public native int size();
    }
    
    class AsMapIterator
      implements Iterator<Map.Entry<K, Collection<V>>>
    {
      Collection<V> collection;
      final Iterator<Map.Entry<K, Collection<V>>> delegateIterator = submap.entrySet().iterator();
      
      static
      {
        JniLib.a(AsMapIterator.class, 395);
      }
      
      AsMapIterator() {}
      
      public native boolean hasNext();
      
      public native Map.Entry<K, Collection<V>> next();
      
      public native void remove();
    }
  }
  
  private class Entries
    extends AbstractCollection<Map.Entry<K, V>>
  {
    static
    {
      JniLib.a(Entries.class, 397);
    }
    
    private Entries() {}
    
    public native void clear();
    
    public native boolean contains(Object paramObject);
    
    public native Iterator<Map.Entry<K, V>> iterator();
    
    public native boolean remove(Object paramObject);
    
    public native int size();
  }
  
  private class EntryIterator
    implements Iterator<Map.Entry<K, V>>
  {
    Collection<V> collection;
    K key;
    final Iterator<Map.Entry<K, Collection<V>>> keyIterator = map.entrySet().iterator();
    Iterator<V> valueIterator;
    
    static
    {
      JniLib.a(EntryIterator.class, 398);
    }
    
    EntryIterator()
    {
      if (keyIterator.hasNext())
      {
        findValueIteratorAndKey();
        return;
      }
      valueIterator = Iterators.emptyModifiableIterator();
    }
    
    native void findValueIteratorAndKey();
    
    public native boolean hasNext();
    
    public native Map.Entry<K, V> next();
    
    public native void remove();
  }
  
  private class EntrySet
    extends AbstractMultimap<K, V>.Entries
    implements Set<Map.Entry<K, V>>
  {
    static
    {
      JniLib.a(EntrySet.class, 399);
    }
    
    private EntrySet()
    {
      super(null);
    }
    
    public native boolean equals(@Nullable Object paramObject);
    
    public native int hashCode();
  }
  
  private class KeySet
    extends AbstractSet<K>
  {
    final Map<K, Collection<V>> subMap;
    
    static
    {
      JniLib.a(KeySet.class, 401);
    }
    
    KeySet()
    {
      Object localObject;
      subMap = localObject;
    }
    
    public native boolean contains(Object paramObject);
    
    public native boolean containsAll(Collection<?> paramCollection);
    
    public native boolean equals(@Nullable Object paramObject);
    
    public native int hashCode();
    
    public native Iterator<K> iterator();
    
    public native boolean remove(Object paramObject);
    
    public native boolean removeAll(Collection<?> paramCollection);
    
    public native int size();
  }
  
  private class MultisetEntry
    extends Multisets.AbstractEntry<K>
  {
    final Map.Entry<K, Collection<V>> entry;
    
    static
    {
      JniLib.a(MultisetEntry.class, 402);
    }
    
    public MultisetEntry()
    {
      Object localObject;
      entry = localObject;
    }
    
    public native int getCount();
    
    public native K getElement();
  }
  
  private class MultisetEntryIterator
    implements Iterator<Multiset.Entry<K>>
  {
    final Iterator<Map.Entry<K, Collection<V>>> asMapIterator = asMap().entrySet().iterator();
    
    static
    {
      JniLib.a(MultisetEntryIterator.class, 403);
    }
    
    private MultisetEntryIterator() {}
    
    public native boolean hasNext();
    
    public native Multiset.Entry<K> next();
    
    public native void remove();
  }
  
  private class MultisetKeyIterator
    implements Iterator<K>
  {
    final Iterator<Map.Entry<K, V>> entryIterator = entries().iterator();
    
    static
    {
      JniLib.a(MultisetKeyIterator.class, 404);
    }
    
    private MultisetKeyIterator() {}
    
    public native boolean hasNext();
    
    public native K next();
    
    public native void remove();
  }
  
  private class MultisetView
    extends AbstractMultiset<K>
  {
    transient Set<Multiset.Entry<K>> entrySet;
    
    static
    {
      JniLib.a(MultisetView.class, 406);
    }
    
    private MultisetView() {}
    
    public native void clear();
    
    public native int count(Object paramObject);
    
    public native Set<K> elementSet();
    
    public native Set<Multiset.Entry<K>> entrySet();
    
    public native Iterator<K> iterator();
    
    public native int remove(Object paramObject, int paramInt);
    
    public native int size();
    
    private class EntrySet
      extends AbstractSet<Multiset.Entry<K>>
    {
      static
      {
        JniLib.a(EntrySet.class, 405);
      }
      
      private EntrySet() {}
      
      public native void clear();
      
      public native boolean contains(Object paramObject);
      
      public native Iterator<Multiset.Entry<K>> iterator();
      
      public native boolean remove(Object paramObject);
      
      public native int size();
    }
  }
  
  private class RandomAccessWrappedList
    extends AbstractMultimap.WrappedList
    implements RandomAccess
  {
    RandomAccessWrappedList(List<V> paramList, @Nullable AbstractMultimap<K, V>.WrappedCollection paramAbstractMultimap)
    {
      super(paramList, paramAbstractMultimap, localWrappedCollection);
    }
  }
  
  private class SortedAsMap
    extends AbstractMultimap<K, V>.AsMap
    implements SortedMap<K, Collection<V>>
  {
    SortedSet<K> sortedKeySet;
    
    static
    {
      JniLib.a(SortedAsMap.class, 409);
    }
    
    SortedAsMap()
    {
      super(localMap);
    }
    
    public native Comparator<? super K> comparator();
    
    public native K firstKey();
    
    public native SortedMap<K, Collection<V>> headMap(K paramK);
    
    public native SortedSet<K> keySet();
    
    public native K lastKey();
    
    native SortedMap<K, Collection<V>> sortedMap();
    
    public native SortedMap<K, Collection<V>> subMap(K paramK1, K paramK2);
    
    public native SortedMap<K, Collection<V>> tailMap(K paramK);
  }
  
  private class SortedKeySet
    extends AbstractMultimap<K, V>.KeySet
    implements SortedSet<K>
  {
    static
    {
      JniLib.a(SortedKeySet.class, 410);
    }
    
    SortedKeySet()
    {
      super(localMap);
    }
    
    public native Comparator<? super K> comparator();
    
    public native K first();
    
    public native SortedSet<K> headSet(K paramK);
    
    public native K last();
    
    native SortedMap<K, Collection<V>> sortedMap();
    
    public native SortedSet<K> subSet(K paramK1, K paramK2);
    
    public native SortedSet<K> tailSet(K paramK);
  }
  
  private class ValueIterator
    implements Iterator<V>
  {
    final Iterator<Map.Entry<K, V>> entryIterator = createEntryIterator();
    
    static
    {
      JniLib.a(ValueIterator.class, 411);
    }
    
    private ValueIterator() {}
    
    public native boolean hasNext();
    
    public native V next();
    
    public native void remove();
  }
  
  private class Values
    extends AbstractCollection<V>
  {
    static
    {
      JniLib.a(Values.class, 412);
    }
    
    private Values() {}
    
    public native void clear();
    
    public native boolean contains(Object paramObject);
    
    public native Iterator<V> iterator();
    
    public native int size();
  }
  
  private class WrappedCollection
    extends AbstractCollection<V>
  {
    final AbstractMultimap<K, V>.WrappedCollection ancestor;
    final Collection<V> ancestorDelegate;
    Collection<V> delegate;
    final K key;
    
    static
    {
      JniLib.a(WrappedCollection.class, 407);
    }
    
    WrappedCollection(Collection<V> paramCollection, @Nullable AbstractMultimap<K, V>.WrappedCollection paramAbstractMultimap)
    {
      key = paramCollection;
      delegate = paramAbstractMultimap;
      Object localObject;
      ancestor = localObject;
      if (localObject == null) {}
      for (this$1 = null;; this$1 = localObject.getDelegate())
      {
        ancestorDelegate = AbstractMultimap.this;
        return;
      }
    }
    
    public native boolean add(V paramV);
    
    public native boolean addAll(Collection<? extends V> paramCollection);
    
    native void addToMap();
    
    public native void clear();
    
    public native boolean contains(Object paramObject);
    
    public native boolean containsAll(Collection<?> paramCollection);
    
    public native boolean equals(@Nullable Object paramObject);
    
    native AbstractMultimap<K, V>.WrappedCollection getAncestor();
    
    native Collection<V> getDelegate();
    
    native K getKey();
    
    public native int hashCode();
    
    public native Iterator<V> iterator();
    
    native void refreshIfEmpty();
    
    public native boolean remove(Object paramObject);
    
    public native boolean removeAll(Collection<?> paramCollection);
    
    native void removeIfEmpty();
    
    public native boolean retainAll(Collection<?> paramCollection);
    
    public native int size();
    
    public native String toString();
    
    class WrappedIterator
      implements Iterator<V>
    {
      final Iterator<V> delegateIterator;
      final Collection<V> originalDelegate = delegate;
      
      static
      {
        JniLib.a(WrappedIterator.class, 413);
      }
      
      WrappedIterator()
      {
        delegateIterator = AbstractMultimap.this.iteratorOrListIterator(delegate);
      }
      
      WrappedIterator()
      {
        Object localObject;
        delegateIterator = localObject;
      }
      
      native Iterator<V> getDelegateIterator();
      
      public native boolean hasNext();
      
      public native V next();
      
      public native void remove();
      
      native void validateIterator();
    }
  }
  
  private class WrappedList
    extends AbstractMultimap<K, V>.WrappedCollection
    implements List<V>
  {
    static
    {
      JniLib.a(WrappedList.class, 408);
    }
    
    WrappedList(List<V> paramList, @Nullable AbstractMultimap<K, V>.WrappedCollection paramAbstractMultimap)
    {
      super(paramList, paramAbstractMultimap, localWrappedCollection);
    }
    
    public native void add(int paramInt, V paramV);
    
    public native boolean addAll(int paramInt, Collection<? extends V> paramCollection);
    
    public native V get(int paramInt);
    
    native List<V> getListDelegate();
    
    public native int indexOf(Object paramObject);
    
    public native int lastIndexOf(Object paramObject);
    
    public native ListIterator<V> listIterator();
    
    public native ListIterator<V> listIterator(int paramInt);
    
    public native V remove(int paramInt);
    
    public native V set(int paramInt, V paramV);
    
    public native List<V> subList(int paramInt1, int paramInt2);
    
    private class WrappedListIterator
      extends AbstractMultimap<K, V>.WrappedCollection.WrappedIterator
      implements ListIterator<V>
    {
      static
      {
        JniLib.a(WrappedListIterator.class, 414);
      }
      
      WrappedListIterator()
      {
        super();
      }
      
      public WrappedListIterator(int paramInt)
      {
        super(getListDelegate().listIterator(paramInt));
      }
      
      private native ListIterator<V> getDelegateListIterator();
      
      public native void add(V paramV);
      
      public native boolean hasPrevious();
      
      public native int nextIndex();
      
      public native V previous();
      
      public native int previousIndex();
      
      public native void set(V paramV);
    }
  }
  
  private class WrappedSet
    extends AbstractMultimap<K, V>.WrappedCollection
    implements Set<V>
  {
    WrappedSet(Set<V> paramSet)
    {
      super(paramSet, localCollection, null);
    }
  }
  
  private class WrappedSortedSet
    extends AbstractMultimap<K, V>.WrappedCollection
    implements SortedSet<V>
  {
    static
    {
      JniLib.a(WrappedSortedSet.class, 415);
    }
    
    WrappedSortedSet(SortedSet<V> paramSortedSet, @Nullable AbstractMultimap<K, V>.WrappedCollection paramAbstractMultimap)
    {
      super(paramSortedSet, paramAbstractMultimap, localWrappedCollection);
    }
    
    public native Comparator<? super V> comparator();
    
    public native V first();
    
    native SortedSet<V> getSortedSetDelegate();
    
    public native SortedSet<V> headSet(V paramV);
    
    public native V last();
    
    public native SortedSet<V> subSet(V paramV1, V paramV2);
    
    public native SortedSet<V> tailSet(V paramV);
  }
}
