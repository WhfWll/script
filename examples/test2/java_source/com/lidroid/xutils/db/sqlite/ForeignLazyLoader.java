package com.lidroid.xutils.db.sqlite;

import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.db.table.ColumnUtils;
import com.lidroid.xutils.db.table.Foreign;
import com.lidroid.xutils.db.table.Table;
import com.lidroid.xutils.exception.DbException;
import java.util.List;

public class ForeignLazyLoader<T>
{
  private Object columnValue;
  private final Foreign foreignColumn;
  
  public ForeignLazyLoader(Foreign paramForeign, Object paramObject)
  {
    foreignColumn = paramForeign;
    columnValue = ColumnUtils.convert2DbColumnValueIfNeeded(paramObject);
  }
  
  public List<T> getAllFromDb()
    throws DbException
  {
    List localList = null;
    Table localTable = foreignColumn.getTable();
    if (localTable != null) {
      localList = db.findAll(Selector.from(foreignColumn.getForeignEntityType()).where(foreignColumn.getForeignColumnName(), "=", columnValue));
    }
    return localList;
  }
  
  public Object getColumnValue()
  {
    return columnValue;
  }
  
  public T getFirstFromDb()
    throws DbException
  {
    Object localObject = null;
    Table localTable = foreignColumn.getTable();
    if (localTable != null) {
      localObject = db.findFirst(Selector.from(foreignColumn.getForeignEntityType()).where(foreignColumn.getForeignColumnName(), "=", columnValue));
    }
    return localObject;
  }
  
  public void setColumnValue(Object paramObject)
  {
    columnValue = ColumnUtils.convert2DbColumnValueIfNeeded(paramObject);
  }
}
