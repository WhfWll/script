package com.lidroid.xutils.db.table;

import android.database.Cursor;
import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.db.converter.ColumnConverter;
import com.lidroid.xutils.db.converter.ColumnConverterFactory;
import com.lidroid.xutils.db.sqlite.ColumnDbType;
import com.lidroid.xutils.db.sqlite.ForeignLazyLoader;
import com.lidroid.xutils.exception.DbException;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

public class Foreign
  extends Column
{
  private final ColumnConverter foreignColumnConverter;
  private final String foreignColumnName;
  
  Foreign(Class<?> paramClass, Field paramField)
  {
    super(paramClass, paramField);
    foreignColumnName = ColumnUtils.getForeignColumnNameByField(paramField);
    foreignColumnConverter = ColumnConverterFactory.getColumnConverter(getColumnOrIdgetForeignEntityTypeforeignColumnName).columnField.getType());
  }
  
  public ColumnDbType getColumnDbType()
  {
    return foreignColumnConverter.getColumnDbType();
  }
  
  public Object getColumnValue(Object paramObject)
  {
    Object localObject5 = getFieldValue(paramObject);
    Object localObject3 = null;
    List localList = null;
    Object localObject4 = null;
    Object localObject1 = localObject4;
    if (localObject5 != null)
    {
      localObject1 = columnField.getType();
      if (!localObject1.equals(ForeignLazyLoader.class)) {
        break label51;
      }
      localObject1 = ((ForeignLazyLoader)localObject5).getColumnValue();
    }
    for (;;)
    {
      return localObject1;
      label51:
      if (localObject1.equals(List.class))
      {
        paramObject = localObject3;
        try
        {
          localList = (List)localObject5;
          localObject1 = localObject4;
          paramObject = localObject3;
          if (localList.size() > 0)
          {
            paramObject = localObject3;
            localObject4 = TableUtils.getColumnOrId(ColumnUtils.getForeignEntityType(this), foreignColumnName);
            paramObject = localObject3;
            localObject1 = ((Column)localObject4).getColumnValue(localList.get(0));
            paramObject = localObject1;
            localObject3 = getTable();
            if (localObject3 != null)
            {
              paramObject = localObject1;
              if ((localObject4 instanceof Id))
              {
                paramObject = localObject1;
                localObject5 = localList.iterator();
              }
            }
            for (;;)
            {
              paramObject = localObject1;
              if (!((Iterator)localObject5).hasNext())
              {
                paramObject = localObject1;
                return ((Column)localObject4).getColumnValue(localList.get(0));
              }
              paramObject = localObject1;
              Object localObject6 = ((Iterator)localObject5).next();
              paramObject = localObject1;
              if (((Column)localObject4).getColumnValue(localObject6) == null)
              {
                paramObject = localObject1;
                db.saveOrUpdate(localObject6);
              }
            }
            paramObject = localList;
          }
        }
        catch (Throwable localThrowable1)
        {
          LogUtils.e(localThrowable1.getMessage(), localThrowable1);
          return paramObject;
        }
      }
    }
    try
    {
      localObject3 = TableUtils.getColumnOrId(localThrowable1, foreignColumnName);
      paramObject = localList;
      Object localObject2 = ((Column)localObject3).getColumnValue(localObject5);
      paramObject = localObject2;
      localObject4 = getTable();
      if ((localObject4 != null) && (localObject2 == null))
      {
        paramObject = localObject2;
        if ((localObject3 instanceof Id))
        {
          paramObject = localObject2;
          db.saveOrUpdate(localObject5);
        }
      }
      paramObject = localObject2;
      localObject2 = ((Column)localObject3).getColumnValue(localObject5);
      return localObject2;
    }
    catch (Throwable localThrowable2)
    {
      LogUtils.e(localThrowable2.getMessage(), localThrowable2);
    }
    return paramObject;
  }
  
  public Object getDefaultValue()
  {
    return null;
  }
  
  public String getForeignColumnName()
  {
    return foreignColumnName;
  }
  
  public Class<?> getForeignEntityType()
  {
    return ColumnUtils.getForeignEntityType(this);
  }
  
  public void setValue2Entity(Object paramObject, Cursor paramCursor, int paramInt)
  {
    Object localObject1 = foreignColumnConverter.getFieldValue(paramCursor, paramInt);
    if (localObject1 == null) {
      return;
    }
    paramCursor = null;
    Class localClass = columnField.getType();
    if (localClass.equals(ForeignLazyLoader.class)) {
      paramCursor = new ForeignLazyLoader(this, localObject1);
    }
    while (setMethod != null)
    {
      try
      {
        setMethod.invoke(paramObject, new Object[] { paramCursor });
        return;
      }
      catch (Throwable paramObject)
      {
        LogUtils.e(paramObject.getMessage(), paramObject);
        return;
      }
      if (localClass.equals(List.class)) {
        try
        {
          localObject1 = new ForeignLazyLoader(this, localObject1).getAllFromDb();
          paramCursor = (Cursor)localObject1;
        }
        catch (DbException localDbException1)
        {
          LogUtils.e(localDbException1.getMessage(), localDbException1);
        }
      } else {
        try
        {
          Object localObject2 = new ForeignLazyLoader(this, localDbException1).getFirstFromDb();
          paramCursor = localObject2;
        }
        catch (DbException localDbException2)
        {
          LogUtils.e(localDbException2.getMessage(), localDbException2);
        }
      }
    }
    try
    {
      columnField.setAccessible(true);
      columnField.set(paramObject, paramCursor);
      return;
    }
    catch (Throwable paramObject)
    {
      LogUtils.e(paramObject.getMessage(), paramObject);
    }
  }
}
