package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

@Beta
@GwtCompatible
public abstract interface RowSortedTable<R, C, V>
  extends Table<R, C, V>
{
  public abstract SortedSet<R> rowKeySet();
  
  public abstract SortedMap<R, Map<C, V>> rowMap();
}
