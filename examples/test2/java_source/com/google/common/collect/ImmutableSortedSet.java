package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;

@GwtCompatible(emulated=true, serializable=true)
public abstract class ImmutableSortedSet<E>
  extends ImmutableSortedSetFauxverideShim<E>
  implements SortedSet<E>
{
  private static final ImmutableSortedSet<Comparable> NATURAL_EMPTY_SET = new EmptyImmutableSortedSet(NATURAL_ORDER);
  private static final Comparator<Comparable> NATURAL_ORDER = ;
  final transient Comparator<? super E> comparator;
  
  ImmutableSortedSet(Comparator<? super E> paramComparator)
  {
    comparator = paramComparator;
  }
  
  public static <E> ImmutableSortedSet<E> copyOf(Iterable<? extends E> paramIterable)
  {
    return copyOf(Ordering.natural(), paramIterable);
  }
  
  public static <E> ImmutableSortedSet<E> copyOf(Collection<? extends E> paramCollection)
  {
    return copyOf(Ordering.natural(), paramCollection);
  }
  
  public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> paramComparator, Iterable<? extends E> paramIterable)
  {
    Preconditions.checkNotNull(paramComparator);
    return copyOfInternal(paramComparator, paramIterable, false);
  }
  
  public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> paramComparator, Collection<? extends E> paramCollection)
  {
    Preconditions.checkNotNull(paramComparator);
    return copyOfInternal(paramComparator, paramCollection, false);
  }
  
  public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> paramComparator, Iterator<? extends E> paramIterator)
  {
    Preconditions.checkNotNull(paramComparator);
    return copyOfInternal(paramComparator, paramIterator);
  }
  
  public static <E> ImmutableSortedSet<E> copyOf(Iterator<? extends E> paramIterator)
  {
    return copyOfInternal(Ordering.natural(), paramIterator);
  }
  
  public static <E extends Comparable<? super E>> ImmutableSortedSet<E> copyOf(E[] paramArrayOfE)
  {
    return copyOf(Ordering.natural(), Arrays.asList(paramArrayOfE));
  }
  
  private static <E> ImmutableSortedSet<E> copyOfInternal(Comparator<? super E> paramComparator, Iterable<? extends E> paramIterable, boolean paramBoolean)
  {
    int i;
    ImmutableSortedSet localImmutableSortedSet;
    if ((paramBoolean) || (hasSameComparator(paramIterable, paramComparator)))
    {
      i = 1;
      if ((i == 0) || (!(paramIterable instanceof ImmutableSortedSet))) {
        break label75;
      }
      localImmutableSortedSet = (ImmutableSortedSet)paramIterable;
      if (!localImmutableSortedSet.isEmpty()) {
        break label47;
      }
    }
    label47:
    ImmutableList localImmutableList;
    do
    {
      return localImmutableSortedSet;
      i = 0;
      break;
      localImmutableList = localImmutableSortedSet.asList();
      paramIterable = ImmutableList.copyOf(paramIterable);
    } while (localImmutableList == paramIterable);
    return new RegularImmutableSortedSet(paramIterable, paramComparator);
    label75:
    paramIterable = immutableSortedUniqueCopy(paramComparator, Lists.newArrayList(paramIterable));
    if (paramIterable.isEmpty()) {
      return emptySet(paramComparator);
    }
    return new RegularImmutableSortedSet(paramIterable, paramComparator);
  }
  
  private static <E> ImmutableSortedSet<E> copyOfInternal(Comparator<? super E> paramComparator, Iterator<? extends E> paramIterator)
  {
    if (!paramIterator.hasNext()) {
      return emptySet(paramComparator);
    }
    return new RegularImmutableSortedSet(immutableSortedUniqueCopy(paramComparator, Lists.newArrayList(paramIterator)), paramComparator);
  }
  
  public static <E> ImmutableSortedSet<E> copyOfSorted(SortedSet<E> paramSortedSet)
  {
    Comparator localComparator2 = paramSortedSet.comparator();
    Comparator localComparator1 = localComparator2;
    if (localComparator2 == null) {
      localComparator1 = NATURAL_ORDER;
    }
    return copyOfInternal(localComparator1, paramSortedSet, true);
  }
  
  private static <E> ImmutableSortedSet<E> emptySet()
  {
    return NATURAL_EMPTY_SET;
  }
  
  static <E> ImmutableSortedSet<E> emptySet(Comparator<? super E> paramComparator)
  {
    if (NATURAL_ORDER.equals(paramComparator)) {
      return emptySet();
    }
    return new EmptyImmutableSortedSet(paramComparator);
  }
  
  static boolean hasSameComparator(Iterable<?> paramIterable, Comparator<?> paramComparator)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramIterable instanceof SortedSet))
    {
      paramIterable = ((SortedSet)paramIterable).comparator();
      if (paramIterable != null) {
        break label38;
      }
      bool1 = bool2;
      if (paramComparator == Ordering.natural()) {
        bool1 = true;
      }
    }
    return bool1;
    label38:
    return paramComparator.equals(paramIterable);
  }
  
  private static <E> ImmutableList<E> immutableSortedUniqueCopy(Comparator<? super E> paramComparator, List<E> paramList)
  {
    if (paramList.isEmpty()) {
      return ImmutableList.of();
    }
    Collections.sort(paramList, paramComparator);
    int j = 1;
    int i = 1;
    while (i < paramList.size())
    {
      Object localObject = paramList.get(i);
      int k = j;
      if (paramComparator.compare(localObject, paramList.get(j - 1)) != 0)
      {
        paramList.set(j, localObject);
        k = j + 1;
      }
      i += 1;
      j = k;
    }
    return ImmutableList.copyOf(paramList.subList(0, j));
  }
  
  public static <E extends Comparable<E>> Builder<E> naturalOrder()
  {
    return new Builder(Ordering.natural());
  }
  
  public static <E> ImmutableSortedSet<E> of()
  {
    return emptySet();
  }
  
  public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E paramE)
  {
    return new RegularImmutableSortedSet(ImmutableList.of(paramE), Ordering.natural());
  }
  
  public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E paramE1, E paramE2)
  {
    return copyOf(Ordering.natural(), Arrays.asList(new Comparable[] { paramE1, paramE2 }));
  }
  
  public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E paramE1, E paramE2, E paramE3)
  {
    return copyOf(Ordering.natural(), Arrays.asList(new Comparable[] { paramE1, paramE2, paramE3 }));
  }
  
  public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E paramE1, E paramE2, E paramE3, E paramE4)
  {
    return copyOf(Ordering.natural(), Arrays.asList(new Comparable[] { paramE1, paramE2, paramE3, paramE4 }));
  }
  
  public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5)
  {
    return copyOf(Ordering.natural(), Arrays.asList(new Comparable[] { paramE1, paramE2, paramE3, paramE4, paramE5 }));
  }
  
  public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList(paramVarArgs.length + 6);
    Collections.addAll(localArrayList, new Comparable[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6 });
    Collections.addAll(localArrayList, paramVarArgs);
    return copyOf(Ordering.natural(), localArrayList);
  }
  
  @Deprecated
  public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E[] paramArrayOfE)
  {
    return copyOf(paramArrayOfE);
  }
  
  public static <E> Builder<E> orderedBy(Comparator<E> paramComparator)
  {
    return new Builder(paramComparator);
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws InvalidObjectException
  {
    throw new InvalidObjectException("Use SerializedForm");
  }
  
  public static <E extends Comparable<E>> Builder<E> reverseOrder()
  {
    return new Builder(Ordering.natural().reverse());
  }
  
  static int unsafeCompare(Comparator<?> paramComparator, Object paramObject1, Object paramObject2)
  {
    return paramComparator.compare(paramObject1, paramObject2);
  }
  
  @Deprecated
  @Beta
  public static <E> ImmutableSortedSet<E> withExplicitOrder(E paramE, E... paramVarArgs)
  {
    return withExplicitOrder(Lists.asList(paramE, paramVarArgs));
  }
  
  @Deprecated
  @Beta
  public static <E> ImmutableSortedSet<E> withExplicitOrder(List<E> paramList)
  {
    return ExplicitOrderedImmutableSortedSet.create(paramList);
  }
  
  public Comparator<? super E> comparator()
  {
    return comparator;
  }
  
  public ImmutableSortedSet<E> headSet(E paramE)
  {
    return headSetImpl(Preconditions.checkNotNull(paramE));
  }
  
  abstract ImmutableSortedSet<E> headSetImpl(E paramE);
  
  abstract int indexOf(Object paramObject);
  
  public ImmutableSortedSet<E> subSet(E paramE1, E paramE2)
  {
    Preconditions.checkNotNull(paramE1);
    Preconditions.checkNotNull(paramE2);
    if (comparator.compare(paramE1, paramE2) <= 0) {}
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      return subSetImpl(paramE1, paramE2);
    }
  }
  
  abstract ImmutableSortedSet<E> subSetImpl(E paramE1, E paramE2);
  
  public ImmutableSortedSet<E> tailSet(E paramE)
  {
    return tailSetImpl(Preconditions.checkNotNull(paramE));
  }
  
  abstract ImmutableSortedSet<E> tailSetImpl(E paramE);
  
  int unsafeCompare(Object paramObject1, Object paramObject2)
  {
    return unsafeCompare(comparator, paramObject1, paramObject2);
  }
  
  Object writeReplace()
  {
    return new SerializedForm(comparator, toArray());
  }
  
  public static final class Builder<E>
    extends ImmutableSet.Builder<E>
  {
    private final Comparator<? super E> comparator;
    
    static
    {
      JniLib.a(Builder.class, 557);
    }
    
    public Builder(Comparator<? super E> paramComparator)
    {
      comparator = ((Comparator)Preconditions.checkNotNull(paramComparator));
    }
    
    public native Builder<E> add(E paramE);
    
    public Builder<E> add(E... paramVarArgs)
    {
      super.add(paramVarArgs);
      return this;
    }
    
    public native Builder<E> addAll(Iterable<? extends E> paramIterable);
    
    public native Builder<E> addAll(Iterator<? extends E> paramIterator);
    
    public native ImmutableSortedSet<E> build();
  }
  
  private static class SerializedForm<E>
    implements Serializable
  {
    private static final long serialVersionUID = 0L;
    final Comparator<? super E> comparator;
    final Object[] elements;
    
    static
    {
      JniLib.a(SerializedForm.class, 558);
    }
    
    public SerializedForm(Comparator<? super E> paramComparator, Object[] paramArrayOfObject)
    {
      comparator = paramComparator;
      elements = paramArrayOfObject;
    }
    
    native Object readResolve();
  }
}
