package com.lidroid.xutils.db.sqlite;

import com.lidroid.xutils.db.table.TableUtils;
import java.util.ArrayList;
import java.util.List;

public class Selector
{
  protected Class<?> entityType;
  protected int limit = 0;
  protected int offset = 0;
  protected List<OrderBy> orderByList;
  protected String tableName;
  protected WhereBuilder whereBuilder;
  
  private Selector(Class<?> paramClass)
  {
    entityType = paramClass;
    tableName = TableUtils.getTableName(paramClass);
  }
  
  public static Selector from(Class<?> paramClass)
  {
    return new Selector(paramClass);
  }
  
  public Selector and(WhereBuilder paramWhereBuilder)
  {
    whereBuilder.expr("AND (" + paramWhereBuilder.toString() + ")");
    return this;
  }
  
  public Selector and(String paramString1, String paramString2, Object paramObject)
  {
    whereBuilder.and(paramString1, paramString2, paramObject);
    return this;
  }
  
  public Selector expr(String paramString)
  {
    if (whereBuilder == null) {
      whereBuilder = WhereBuilder.b();
    }
    whereBuilder.expr(paramString);
    return this;
  }
  
  public Selector expr(String paramString1, String paramString2, Object paramObject)
  {
    if (whereBuilder == null) {
      whereBuilder = WhereBuilder.b();
    }
    whereBuilder.expr(paramString1, paramString2, paramObject);
    return this;
  }
  
  public Class<?> getEntityType()
  {
    return entityType;
  }
  
  public DbModelSelector groupBy(String paramString)
  {
    return new DbModelSelector(this, paramString);
  }
  
  public Selector limit(int paramInt)
  {
    limit = paramInt;
    return this;
  }
  
  public Selector offset(int paramInt)
  {
    offset = paramInt;
    return this;
  }
  
  public Selector or(WhereBuilder paramWhereBuilder)
  {
    whereBuilder.expr("OR (" + paramWhereBuilder.toString() + ")");
    return this;
  }
  
  public Selector or(String paramString1, String paramString2, Object paramObject)
  {
    whereBuilder.or(paramString1, paramString2, paramObject);
    return this;
  }
  
  public Selector orderBy(String paramString)
  {
    if (orderByList == null) {
      orderByList = new ArrayList(2);
    }
    orderByList.add(new OrderBy(paramString));
    return this;
  }
  
  public Selector orderBy(String paramString, boolean paramBoolean)
  {
    if (orderByList == null) {
      orderByList = new ArrayList(2);
    }
    orderByList.add(new OrderBy(paramString, paramBoolean));
    return this;
  }
  
  public DbModelSelector select(String... paramVarArgs)
  {
    return new DbModelSelector(this, paramVarArgs);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SELECT ");
    localStringBuilder.append("*");
    localStringBuilder.append(" FROM ").append(tableName);
    if ((whereBuilder != null) && (whereBuilder.getWhereItemSize() > 0)) {
      localStringBuilder.append(" WHERE ").append(whereBuilder.toString());
    }
    int i;
    if (orderByList != null) {
      i = 0;
    }
    for (;;)
    {
      if (i >= orderByList.size())
      {
        if (limit > 0)
        {
          localStringBuilder.append(" LIMIT ").append(limit);
          localStringBuilder.append(" OFFSET ").append(offset);
        }
        return localStringBuilder.toString();
      }
      localStringBuilder.append(" ORDER BY ").append(((OrderBy)orderByList.get(i)).toString());
      i += 1;
    }
  }
  
  public Selector where(WhereBuilder paramWhereBuilder)
  {
    whereBuilder = paramWhereBuilder;
    return this;
  }
  
  public Selector where(String paramString1, String paramString2, Object paramObject)
  {
    whereBuilder = WhereBuilder.b(paramString1, paramString2, paramObject);
    return this;
  }
  
  protected class OrderBy
  {
    private String columnName;
    private boolean desc;
    
    public OrderBy(String paramString)
    {
      columnName = paramString;
    }
    
    public OrderBy(String paramString, boolean paramBoolean)
    {
      columnName = paramString;
      desc = paramBoolean;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder(String.valueOf(columnName));
      if (desc) {}
      for (String str = " DESC";; str = " ASC") {
        return str;
      }
    }
  }
}
