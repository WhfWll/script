package com.lidroid.xutils.db.sqlite;

import android.text.TextUtils;
import java.util.List;

public class DbModelSelector
{
  private String[] columnExpressions;
  private String groupByColumnName;
  private WhereBuilder having;
  private Selector selector;
  
  protected DbModelSelector(Selector paramSelector, String paramString)
  {
    selector = paramSelector;
    groupByColumnName = paramString;
  }
  
  protected DbModelSelector(Selector paramSelector, String[] paramArrayOfString)
  {
    selector = paramSelector;
    columnExpressions = paramArrayOfString;
  }
  
  private DbModelSelector(Class<?> paramClass)
  {
    selector = Selector.from(paramClass);
  }
  
  public static DbModelSelector from(Class<?> paramClass)
  {
    return new DbModelSelector(paramClass);
  }
  
  public DbModelSelector and(WhereBuilder paramWhereBuilder)
  {
    selector.and(paramWhereBuilder);
    return this;
  }
  
  public DbModelSelector and(String paramString1, String paramString2, Object paramObject)
  {
    selector.and(paramString1, paramString2, paramObject);
    return this;
  }
  
  public DbModelSelector expr(String paramString)
  {
    selector.expr(paramString);
    return this;
  }
  
  public DbModelSelector expr(String paramString1, String paramString2, Object paramObject)
  {
    selector.expr(paramString1, paramString2, paramObject);
    return this;
  }
  
  public Class<?> getEntityType()
  {
    return selector.getEntityType();
  }
  
  public DbModelSelector groupBy(String paramString)
  {
    groupByColumnName = paramString;
    return this;
  }
  
  public DbModelSelector having(WhereBuilder paramWhereBuilder)
  {
    having = paramWhereBuilder;
    return this;
  }
  
  public DbModelSelector limit(int paramInt)
  {
    selector.limit(paramInt);
    return this;
  }
  
  public DbModelSelector offset(int paramInt)
  {
    selector.offset(paramInt);
    return this;
  }
  
  public DbModelSelector or(WhereBuilder paramWhereBuilder)
  {
    selector.or(paramWhereBuilder);
    return this;
  }
  
  public DbModelSelector or(String paramString1, String paramString2, Object paramObject)
  {
    selector.or(paramString1, paramString2, paramObject);
    return this;
  }
  
  public DbModelSelector orderBy(String paramString)
  {
    selector.orderBy(paramString);
    return this;
  }
  
  public DbModelSelector orderBy(String paramString, boolean paramBoolean)
  {
    selector.orderBy(paramString, paramBoolean);
    return this;
  }
  
  public DbModelSelector select(String... paramVarArgs)
  {
    columnExpressions = paramVarArgs;
    return this;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("SELECT ");
    int i;
    if ((columnExpressions != null) && (columnExpressions.length > 0))
    {
      i = 0;
      if (i >= columnExpressions.length)
      {
        localStringBuffer.deleteCharAt(localStringBuffer.length() - 1);
        label52:
        localStringBuffer.append(" FROM ").append(selector.tableName);
        if ((selector.whereBuilder != null) && (selector.whereBuilder.getWhereItemSize() > 0)) {
          localStringBuffer.append(" WHERE ").append(selector.whereBuilder.toString());
        }
        if (!TextUtils.isEmpty(groupByColumnName))
        {
          localStringBuffer.append(" GROUP BY ").append(groupByColumnName);
          if ((having != null) && (having.getWhereItemSize() > 0)) {
            localStringBuffer.append(" HAVING ").append(having.toString());
          }
        }
        if (selector.orderByList != null) {
          i = 0;
        }
      }
    }
    for (;;)
    {
      if (i >= selector.orderByList.size())
      {
        if (selector.limit > 0)
        {
          localStringBuffer.append(" LIMIT ").append(selector.limit);
          localStringBuffer.append(" OFFSET ").append(selector.offset);
        }
        return localStringBuffer.toString();
        localStringBuffer.append(columnExpressions[i]);
        localStringBuffer.append(",");
        i += 1;
        break;
        if (!TextUtils.isEmpty(groupByColumnName))
        {
          localStringBuffer.append(groupByColumnName);
          break label52;
        }
        localStringBuffer.append("*");
        break label52;
      }
      localStringBuffer.append(" ORDER BY ").append(((Selector.OrderBy)selector.orderByList.get(i)).toString());
      i += 1;
    }
  }
  
  public DbModelSelector where(WhereBuilder paramWhereBuilder)
  {
    selector.where(paramWhereBuilder);
    return this;
  }
  
  public DbModelSelector where(String paramString1, String paramString2, Object paramObject)
  {
    selector.where(paramString1, paramString2, paramObject);
    return this;
  }
}
