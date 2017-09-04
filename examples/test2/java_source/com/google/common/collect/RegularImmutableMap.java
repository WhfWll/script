package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Map.Entry;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@GwtCompatible(emulated=true, serializable=true)
final class RegularImmutableMap<K, V>
  extends ImmutableMap<K, V>
{
  private static final long serialVersionUID = 0L;
  private final transient LinkedEntry<K, V>[] entries;
  private transient ImmutableSet<Map.Entry<K, V>> entrySet;
  private transient ImmutableSet<K> keySet;
  private final transient int keySetHashCode;
  private final transient int mask;
  private final transient LinkedEntry<K, V>[] table;
  private transient ImmutableCollection<V> values;
  
  static
  {
    JniLib.a(RegularImmutableMap.class, 762);
  }
  
  RegularImmutableMap(Map.Entry<?, ?>... paramVarArgs)
  {
    int k = paramVarArgs.length;
    entries = createEntryArray(k);
    int i = chooseTableSize(k);
    table = createEntryArray(i);
    mask = (i - 1);
    int j = 0;
    i = 0;
    while (i < k)
    {
      Object localObject2 = paramVarArgs[i];
      Object localObject1 = ((Map.Entry)localObject2).getKey();
      int m = localObject1.hashCode();
      j += m;
      m = Hashing.smear(m) & mask;
      LinkedEntry localLinkedEntry = table[m];
      localObject2 = newLinkedEntry(localObject1, ((Map.Entry)localObject2).getValue(), localLinkedEntry);
      table[m] = localObject2;
      entries[i] = localObject2;
      if (localLinkedEntry != null)
      {
        if (!localObject1.equals(localLinkedEntry.getKey())) {}
        for (boolean bool = true;; bool = false)
        {
          Preconditions.checkArgument(bool, "duplicate key: %s", new Object[] { localObject1 });
          localLinkedEntry = localLinkedEntry.next();
          break;
        }
      }
      i += 1;
    }
    keySetHashCode = j;
  }
  
  private static native int chooseTableSize(int paramInt);
  
  private native LinkedEntry<K, V>[] createEntryArray(int paramInt);
  
  private static native <K, V> LinkedEntry<K, V> newLinkedEntry(K paramK, V paramV, @Nullable LinkedEntry<K, V> paramLinkedEntry);
  
  public native boolean containsValue(Object paramObject);
  
  public native ImmutableSet<Map.Entry<K, V>> entrySet();
  
  public native V get(Object paramObject);
  
  public native boolean isEmpty();
  
  native boolean isPartialView();
  
  public native ImmutableSet<K> keySet();
  
  public native int size();
  
  public native String toString();
  
  public native ImmutableCollection<V> values();
  
  private static class EntrySet<K, V>
    extends ImmutableSet.ArrayImmutableSet<Map.Entry<K, V>>
  {
    final transient RegularImmutableMap<K, V> map;
    
    static
    {
      JniLib.a(EntrySet.class, 756);
    }
    
    EntrySet(RegularImmutableMap<K, V> paramRegularImmutableMap)
    {
      super();
      map = paramRegularImmutableMap;
    }
    
    public native boolean contains(Object paramObject);
  }
  
  private static class KeySet<K, V>
    extends ImmutableSet.TransformedImmutableSet<Map.Entry<K, V>, K>
  {
    final RegularImmutableMap<K, V> map;
    
    static
    {
      JniLib.a(KeySet.class, 757);
    }
    
    KeySet(RegularImmutableMap<K, V> paramRegularImmutableMap)
    {
      super(keySetHashCode);
      map = paramRegularImmutableMap;
    }
    
    public native boolean contains(Object paramObject);
    
    native boolean isPartialView();
    
    native K transform(Map.Entry<K, V> paramEntry);
  }
  
  private static abstract interface LinkedEntry<K, V>
    extends Map.Entry<K, V>
  {
    @Nullable
    public abstract LinkedEntry<K, V> next();
  }
  
  @Immutable
  private static final class NonTerminalEntry<K, V>
    extends ImmutableEntry<K, V>
    implements RegularImmutableMap.LinkedEntry<K, V>
  {
    final RegularImmutableMap.LinkedEntry<K, V> next;
    
    static
    {
      JniLib.a(NonTerminalEntry.class, 758);
    }
    
    NonTerminalEntry(K paramK, V paramV, RegularImmutableMap.LinkedEntry<K, V> paramLinkedEntry)
    {
      super(paramV);
      next = paramLinkedEntry;
    }
    
    public native RegularImmutableMap.LinkedEntry<K, V> next();
  }
  
  @Immutable
  private static final class TerminalEntry<K, V>
    extends ImmutableEntry<K, V>
    implements RegularImmutableMap.LinkedEntry<K, V>
  {
    static
    {
      JniLib.a(TerminalEntry.class, 759);
    }
    
    TerminalEntry(K paramK, V paramV)
    {
      super(paramV);
    }
    
    @Nullable
    public native RegularImmutableMap.LinkedEntry<K, V> next();
  }
  
  private static class Values<V>
    extends ImmutableCollection<V>
  {
    final RegularImmutableMap<?, V> map;
    
    static
    {
      JniLib.a(Values.class, 761);
    }
    
    Values(RegularImmutableMap<?, V> paramRegularImmutableMap)
    {
      map = paramRegularImmutableMap;
    }
    
    public native boolean contains(Object paramObject);
    
    native boolean isPartialView();
    
    public native UnmodifiableIterator<V> iterator();
    
    public native int size();
  }
}
