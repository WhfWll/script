package com.lidroid.xutils.db.table;

import com.lidroid.xutils.db.annotation.NoAutoIncrement;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashSet;

public class Id
  extends Column
{
  private static final HashSet<String> AUTO_INCREMENT_TYPES;
  private static final HashSet<String> INTEGER_TYPES = new HashSet(2);
  private String columnFieldClassName = columnField.getType().getName();
  private boolean isAutoIncrement = false;
  private boolean isAutoIncrementChecked = false;
  
  static
  {
    AUTO_INCREMENT_TYPES = new HashSet(4);
    INTEGER_TYPES.add(Integer.TYPE.getName());
    INTEGER_TYPES.add(Integer.class.getName());
    AUTO_INCREMENT_TYPES.addAll(INTEGER_TYPES);
    AUTO_INCREMENT_TYPES.add(Long.TYPE.getName());
    AUTO_INCREMENT_TYPES.add(Long.class.getName());
  }
  
  Id(Class<?> paramClass, Field paramField)
  {
    super(paramClass, paramField);
  }
  
  public Object getColumnValue(Object paramObject)
  {
    Object localObject = super.getColumnValue(paramObject);
    if (localObject != null)
    {
      paramObject = localObject;
      if (isAutoIncrement()) {
        if (!localObject.equals(Integer.valueOf(0)))
        {
          paramObject = localObject;
          if (!localObject.equals(Long.valueOf(0L))) {}
        }
        else
        {
          paramObject = null;
        }
      }
      return paramObject;
    }
    return null;
  }
  
  public boolean isAutoIncrement()
  {
    boolean bool = true;
    if (!isAutoIncrementChecked)
    {
      isAutoIncrementChecked = true;
      if ((columnField.getAnnotation(NoAutoIncrement.class) != null) || (!AUTO_INCREMENT_TYPES.contains(columnFieldClassName))) {
        break label49;
      }
    }
    for (;;)
    {
      isAutoIncrement = bool;
      return isAutoIncrement;
      label49:
      bool = false;
    }
  }
  
  public void setAutoIncrementId(Object paramObject, long paramLong)
  {
    Object localObject = Long.valueOf(paramLong);
    if (INTEGER_TYPES.contains(columnFieldClassName)) {
      localObject = Integer.valueOf((int)paramLong);
    }
    if (setMethod != null) {
      try
      {
        setMethod.invoke(paramObject, new Object[] { localObject });
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
      columnField.set(paramObject, localObject);
      return;
    }
    catch (Throwable paramObject)
    {
      LogUtils.e(paramObject.getMessage(), paramObject);
    }
  }
}
