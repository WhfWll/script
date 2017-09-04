package com.lidroid.xutils.db.table;

import android.database.Cursor;
import com.lidroid.xutils.db.converter.ColumnConverter;
import com.lidroid.xutils.db.converter.ColumnConverterFactory;
import com.lidroid.xutils.db.sqlite.ColumnDbType;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class Column
{
  protected final ColumnConverter columnConverter;
  protected final Field columnField;
  protected final String columnName;
  private final Object defaultValue;
  protected final Method getMethod;
  private int index = -1;
  protected final Method setMethod;
  private Table table;
  
  Column(Class<?> paramClass, Field paramField)
  {
    columnField = paramField;
    columnConverter = ColumnConverterFactory.getColumnConverter(paramField.getType());
    columnName = ColumnUtils.getColumnNameByField(paramField);
    if (columnConverter != null) {}
    for (defaultValue = columnConverter.getFieldValue(ColumnUtils.getColumnDefaultValue(paramField));; defaultValue = null)
    {
      getMethod = ColumnUtils.getColumnGetMethod(paramClass, paramField);
      setMethod = ColumnUtils.getColumnSetMethod(paramClass, paramField);
      return;
    }
  }
  
  public ColumnConverter getColumnConverter()
  {
    return columnConverter;
  }
  
  public ColumnDbType getColumnDbType()
  {
    return columnConverter.getColumnDbType();
  }
  
  public Field getColumnField()
  {
    return columnField;
  }
  
  public String getColumnName()
  {
    return columnName;
  }
  
  public Object getColumnValue(Object paramObject)
  {
    paramObject = getFieldValue(paramObject);
    return columnConverter.fieldValue2ColumnValue(paramObject);
  }
  
  public Object getDefaultValue()
  {
    return defaultValue;
  }
  
  public Object getFieldValue(Object paramObject)
  {
    Object localObject = null;
    if ((paramObject == null) || (getMethod != null)) {
      try
      {
        localObject = getMethod.invoke(paramObject, new Object[0]);
        return localObject;
      }
      catch (Throwable paramObject)
      {
        LogUtils.e(paramObject.getMessage(), paramObject);
        return null;
      }
    }
    try
    {
      columnField.setAccessible(true);
      paramObject = columnField.get(paramObject);
      return paramObject;
    }
    catch (Throwable paramObject)
    {
      LogUtils.e(paramObject.getMessage(), paramObject);
    }
    return null;
  }
  
  public int getIndex()
  {
    return index;
  }
  
  public Table getTable()
  {
    return table;
  }
  
  void setTable(Table paramTable)
  {
    table = paramTable;
  }
  
  public void setValue2Entity(Object paramObject, Cursor paramCursor, int paramInt)
  {
    index = paramInt;
    paramCursor = columnConverter.getFieldValue(paramCursor, paramInt);
    if ((paramCursor == null) && (defaultValue == null)) {
      return;
    }
    Object localObject2;
    Object localObject1;
    if (setMethod != null) {
      try
      {
        localObject2 = setMethod;
        localObject1 = paramCursor;
        if (paramCursor == null) {
          localObject1 = defaultValue;
        }
        ((Method)localObject2).invoke(paramObject, new Object[] { localObject1 });
        return;
      }
      catch (Throwable paramObject)
      {
        LogUtils.e(paramObject.getMessage(), paramObject);
        return;
      }
    }
    try
    {
      columnField.setAccessible(true);
      localObject2 = columnField;
      localObject1 = paramCursor;
      if (paramCursor == null) {
        localObject1 = defaultValue;
      }
      ((Field)localObject2).set(paramObject, localObject1);
      return;
    }
    catch (Throwable paramObject)
    {
      LogUtils.e(paramObject.getMessage(), paramObject);
    }
  }
}
