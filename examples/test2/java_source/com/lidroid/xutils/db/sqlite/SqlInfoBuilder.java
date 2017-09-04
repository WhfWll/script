package com.lidroid.xutils.db.sqlite;

import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.db.table.Column;
import com.lidroid.xutils.db.table.ColumnUtils;
import com.lidroid.xutils.db.table.Finder;
import com.lidroid.xutils.db.table.Id;
import com.lidroid.xutils.db.table.KeyValue;
import com.lidroid.xutils.db.table.Table;
import com.lidroid.xutils.db.table.TableUtils;
import com.lidroid.xutils.exception.DbException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class SqlInfoBuilder
{
  private SqlInfoBuilder() {}
  
  public static SqlInfo buildCreateTableSqlInfo(DbUtils paramDbUtils, Class<?> paramClass)
    throws DbException
  {
    paramClass = Table.get(paramDbUtils, paramClass);
    Object localObject = id;
    paramDbUtils = new StringBuffer();
    paramDbUtils.append("CREATE TABLE IF NOT EXISTS ");
    paramDbUtils.append(tableName);
    paramDbUtils.append(" ( ");
    if (((Id)localObject).isAutoIncrement())
    {
      paramDbUtils.append("\"").append(((Id)localObject).getColumnName()).append("\"  ").append("INTEGER PRIMARY KEY AUTOINCREMENT,");
      paramClass = columnMap.values().iterator();
    }
    for (;;)
    {
      if (!paramClass.hasNext())
      {
        paramDbUtils.deleteCharAt(paramDbUtils.length() - 1);
        paramDbUtils.append(" )");
        return new SqlInfo(paramDbUtils.toString());
        paramDbUtils.append("\"").append(((Id)localObject).getColumnName()).append("\"  ").append(((Id)localObject).getColumnDbType()).append(" PRIMARY KEY,");
        break;
      }
      localObject = (Column)paramClass.next();
      if (!(localObject instanceof Finder))
      {
        paramDbUtils.append("\"").append(((Column)localObject).getColumnName()).append("\"  ");
        paramDbUtils.append(((Column)localObject).getColumnDbType());
        if (ColumnUtils.isUnique(((Column)localObject).getColumnField())) {
          paramDbUtils.append(" UNIQUE");
        }
        if (ColumnUtils.isNotNull(((Column)localObject).getColumnField())) {
          paramDbUtils.append(" NOT NULL");
        }
        localObject = ColumnUtils.getCheck(((Column)localObject).getColumnField());
        if (localObject != null) {
          paramDbUtils.append(" CHECK(").append((String)localObject).append(")");
        }
        paramDbUtils.append(",");
      }
    }
  }
  
  private static String buildDeleteSqlByTableName(String paramString)
  {
    return "DELETE FROM " + paramString;
  }
  
  public static SqlInfo buildDeleteSqlInfo(DbUtils paramDbUtils, Class<?> paramClass, WhereBuilder paramWhereBuilder)
    throws DbException
  {
    paramDbUtils = new StringBuilder(buildDeleteSqlByTableName(gettableName));
    if ((paramWhereBuilder != null) && (paramWhereBuilder.getWhereItemSize() > 0)) {
      paramDbUtils.append(" WHERE ").append(paramWhereBuilder.toString());
    }
    return new SqlInfo(paramDbUtils.toString());
  }
  
  public static SqlInfo buildDeleteSqlInfo(DbUtils paramDbUtils, Class<?> paramClass, Object paramObject)
    throws DbException
  {
    SqlInfo localSqlInfo = new SqlInfo();
    Table localTable = Table.get(paramDbUtils, paramClass);
    paramDbUtils = id;
    if (paramObject == null) {
      throw new DbException("this entity[" + paramClass + "]'s id value is null");
    }
    paramClass = new StringBuilder(buildDeleteSqlByTableName(tableName));
    paramClass.append(" WHERE ").append(WhereBuilder.b(paramDbUtils.getColumnName(), "=", paramObject));
    localSqlInfo.setSql(paramClass.toString());
    return localSqlInfo;
  }
  
  public static SqlInfo buildDeleteSqlInfo(DbUtils paramDbUtils, Object paramObject)
    throws DbException
  {
    SqlInfo localSqlInfo = new SqlInfo();
    Table localTable = Table.get(paramDbUtils, paramObject.getClass());
    paramDbUtils = id;
    Object localObject = paramDbUtils.getColumnValue(paramObject);
    if (localObject == null) {
      throw new DbException("this entity[" + paramObject.getClass() + "]'s id value is null");
    }
    paramObject = new StringBuilder(buildDeleteSqlByTableName(tableName));
    paramObject.append(" WHERE ").append(WhereBuilder.b(paramDbUtils.getColumnName(), "=", localObject));
    localSqlInfo.setSql(paramObject.toString());
    return localSqlInfo;
  }
  
  public static SqlInfo buildInsertSqlInfo(DbUtils paramDbUtils, Object paramObject)
    throws DbException
  {
    paramDbUtils = entity2KeyValueList(paramDbUtils, paramObject);
    if (paramDbUtils.size() == 0) {
      return null;
    }
    SqlInfo localSqlInfo = new SqlInfo();
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("INSERT INTO ");
    localStringBuffer.append(TableUtils.getTableName(paramObject.getClass()));
    localStringBuffer.append(" (");
    paramObject = paramDbUtils.iterator();
    int j;
    int i;
    if (!paramObject.hasNext())
    {
      localStringBuffer.deleteCharAt(localStringBuffer.length() - 1);
      localStringBuffer.append(") VALUES (");
      j = paramDbUtils.size();
      i = 0;
    }
    for (;;)
    {
      if (i >= j)
      {
        localStringBuffer.deleteCharAt(localStringBuffer.length() - 1);
        localStringBuffer.append(")");
        localSqlInfo.setSql(localStringBuffer.toString());
        return localSqlInfo;
        KeyValue localKeyValue = (KeyValue)paramObject.next();
        localStringBuffer.append(key).append(",");
        localSqlInfo.addBindArgWithoutConverter(value);
        break;
      }
      localStringBuffer.append("?,");
      i += 1;
    }
  }
  
  public static SqlInfo buildReplaceSqlInfo(DbUtils paramDbUtils, Object paramObject)
    throws DbException
  {
    paramDbUtils = entity2KeyValueList(paramDbUtils, paramObject);
    if (paramDbUtils.size() == 0) {
      return null;
    }
    SqlInfo localSqlInfo = new SqlInfo();
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("REPLACE INTO ");
    localStringBuffer.append(TableUtils.getTableName(paramObject.getClass()));
    localStringBuffer.append(" (");
    paramObject = paramDbUtils.iterator();
    int j;
    int i;
    if (!paramObject.hasNext())
    {
      localStringBuffer.deleteCharAt(localStringBuffer.length() - 1);
      localStringBuffer.append(") VALUES (");
      j = paramDbUtils.size();
      i = 0;
    }
    for (;;)
    {
      if (i >= j)
      {
        localStringBuffer.deleteCharAt(localStringBuffer.length() - 1);
        localStringBuffer.append(")");
        localSqlInfo.setSql(localStringBuffer.toString());
        return localSqlInfo;
        KeyValue localKeyValue = (KeyValue)paramObject.next();
        localStringBuffer.append(key).append(",");
        localSqlInfo.addBindArgWithoutConverter(value);
        break;
      }
      localStringBuffer.append("?,");
      i += 1;
    }
  }
  
  public static SqlInfo buildUpdateSqlInfo(DbUtils paramDbUtils, Object paramObject, WhereBuilder paramWhereBuilder, String... paramVarArgs)
    throws DbException
  {
    Object localObject2 = entity2KeyValueList(paramDbUtils, paramObject);
    if (((List)localObject2).size() == 0) {
      return null;
    }
    Object localObject1 = null;
    paramDbUtils = (DbUtils)localObject1;
    if (paramVarArgs != null)
    {
      paramDbUtils = (DbUtils)localObject1;
      if (paramVarArgs.length > 0)
      {
        paramDbUtils = new HashSet(paramVarArgs.length);
        Collections.addAll(paramDbUtils, paramVarArgs);
      }
    }
    localObject1 = TableUtils.getTableName(paramObject.getClass());
    paramObject = new SqlInfo();
    paramVarArgs = new StringBuffer("UPDATE ");
    paramVarArgs.append((String)localObject1);
    paramVarArgs.append(" SET ");
    localObject1 = ((List)localObject2).iterator();
    for (;;)
    {
      if (!((Iterator)localObject1).hasNext())
      {
        paramVarArgs.deleteCharAt(paramVarArgs.length() - 1);
        if ((paramWhereBuilder != null) && (paramWhereBuilder.getWhereItemSize() > 0)) {
          paramVarArgs.append(" WHERE ").append(paramWhereBuilder.toString());
        }
        paramObject.setSql(paramVarArgs.toString());
        return paramObject;
      }
      localObject2 = (KeyValue)((Iterator)localObject1).next();
      if ((paramDbUtils == null) || (paramDbUtils.contains(key)))
      {
        paramVarArgs.append(key).append("=?,");
        paramObject.addBindArgWithoutConverter(value);
      }
    }
  }
  
  public static SqlInfo buildUpdateSqlInfo(DbUtils paramDbUtils, Object paramObject, String... paramVarArgs)
    throws DbException
  {
    Object localObject2 = entity2KeyValueList(paramDbUtils, paramObject);
    if (((List)localObject2).size() == 0) {
      return null;
    }
    StringBuffer localStringBuffer = null;
    Object localObject1 = localStringBuffer;
    if (paramVarArgs != null)
    {
      localObject1 = localStringBuffer;
      if (paramVarArgs.length > 0)
      {
        localObject1 = new HashSet(paramVarArgs.length);
        Collections.addAll((Collection)localObject1, paramVarArgs);
      }
    }
    Object localObject3 = Table.get(paramDbUtils, paramObject.getClass());
    paramDbUtils = id;
    paramVarArgs = paramDbUtils.getColumnValue(paramObject);
    if (paramVarArgs == null) {
      throw new DbException("this entity[" + paramObject.getClass() + "]'s id value is null");
    }
    paramObject = new SqlInfo();
    localStringBuffer = new StringBuffer("UPDATE ");
    localStringBuffer.append(tableName);
    localStringBuffer.append(" SET ");
    localObject2 = ((List)localObject2).iterator();
    for (;;)
    {
      if (!((Iterator)localObject2).hasNext())
      {
        localStringBuffer.deleteCharAt(localStringBuffer.length() - 1);
        localStringBuffer.append(" WHERE ").append(WhereBuilder.b(paramDbUtils.getColumnName(), "=", paramVarArgs));
        paramObject.setSql(localStringBuffer.toString());
        return paramObject;
      }
      localObject3 = (KeyValue)((Iterator)localObject2).next();
      if ((localObject1 == null) || (((HashSet)localObject1).contains(key)))
      {
        localStringBuffer.append(key).append("=?,");
        paramObject.addBindArgWithoutConverter(value);
      }
    }
  }
  
  private static KeyValue column2KeyValue(Object paramObject, Column paramColumn)
  {
    Object localObject = null;
    String str = paramColumn.getColumnName();
    if (str != null)
    {
      localObject = paramColumn.getColumnValue(paramObject);
      paramObject = localObject;
      if (localObject == null) {
        paramObject = paramColumn.getDefaultValue();
      }
      localObject = new KeyValue(str, paramObject);
    }
    return localObject;
  }
  
  public static List<KeyValue> entity2KeyValueList(DbUtils paramDbUtils, Object paramObject)
  {
    ArrayList localArrayList = new ArrayList();
    paramDbUtils = Table.get(paramDbUtils, paramObject.getClass());
    Object localObject1 = id;
    if (!((Id)localObject1).isAutoIncrement())
    {
      Object localObject2 = ((Id)localObject1).getColumnValue(paramObject);
      localArrayList.add(new KeyValue(((Id)localObject1).getColumnName(), localObject2));
    }
    paramDbUtils = columnMap.values().iterator();
    for (;;)
    {
      if (!paramDbUtils.hasNext()) {
        return localArrayList;
      }
      localObject1 = (Column)paramDbUtils.next();
      if (!(localObject1 instanceof Finder))
      {
        localObject1 = column2KeyValue(paramObject, (Column)localObject1);
        if (localObject1 != null) {
          localArrayList.add(localObject1);
        }
      }
    }
  }
}
