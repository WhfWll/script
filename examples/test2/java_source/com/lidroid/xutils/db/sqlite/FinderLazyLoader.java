package com.lidroid.xutils.db.sqlite;

import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.db.table.ColumnUtils;
import com.lidroid.xutils.db.table.Finder;
import com.lidroid.xutils.db.table.Table;
import com.lidroid.xutils.exception.DbException;
import java.util.List;

public class FinderLazyLoader<T>
{
  private final Finder finderColumn;
  private final Object finderValue;
  
  public FinderLazyLoader(Finder paramFinder, Object paramObject)
  {
    finderColumn = paramFinder;
    finderValue = ColumnUtils.convert2DbColumnValueIfNeeded(paramObject);
  }
  
  public List<T> getAllFromDb()
    throws DbException
  {
    List localList = null;
    Table localTable = finderColumn.getTable();
    if (localTable != null) {
      localList = db.findAll(Selector.from(finderColumn.getTargetEntityType()).where(finderColumn.getTargetColumnName(), "=", finderValue));
    }
    return localList;
  }
  
  public T getFirstFromDb()
    throws DbException
  {
    Object localObject = null;
    Table localTable = finderColumn.getTable();
    if (localTable != null) {
      localObject = db.findFirst(Selector.from(finderColumn.getTargetEntityType()).where(finderColumn.getTargetColumnName(), "=", finderValue));
    }
    return localObject;
  }
}
