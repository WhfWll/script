package com.lidroid.xutils.db.sqlite;

import com.lidroid.xutils.db.table.ColumnUtils;
import java.util.LinkedList;

public class SqlInfo
{
  private LinkedList<Object> bindArgs;
  private String sql;
  
  public SqlInfo() {}
  
  public SqlInfo(String paramString)
  {
    sql = paramString;
  }
  
  public SqlInfo(String paramString, Object... paramVarArgs)
  {
    sql = paramString;
    addBindArgs(paramVarArgs);
  }
  
  public void addBindArg(Object paramObject)
  {
    if (bindArgs == null) {
      bindArgs = new LinkedList();
    }
    bindArgs.add(ColumnUtils.convert2DbColumnValueIfNeeded(paramObject));
  }
  
  void addBindArgWithoutConverter(Object paramObject)
  {
    if (bindArgs == null) {
      bindArgs = new LinkedList();
    }
    bindArgs.add(paramObject);
  }
  
  public void addBindArgs(Object... paramVarArgs)
  {
    int j;
    int i;
    if (paramVarArgs != null)
    {
      j = paramVarArgs.length;
      i = 0;
    }
    for (;;)
    {
      if (i >= j) {
        return;
      }
      addBindArg(paramVarArgs[i]);
      i += 1;
    }
  }
  
  public LinkedList<Object> getBindArgs()
  {
    return bindArgs;
  }
  
  public Object[] getBindArgsAsArray()
  {
    if (bindArgs != null) {
      return bindArgs.toArray();
    }
    return null;
  }
  
  public String[] getBindArgsAsStrArray()
  {
    if (bindArgs != null)
    {
      String[] arrayOfString = new String[bindArgs.size()];
      int i = 0;
      if (i >= bindArgs.size()) {
        return arrayOfString;
      }
      Object localObject = bindArgs.get(i);
      if (localObject == null) {}
      for (localObject = null;; localObject = localObject.toString())
      {
        arrayOfString[i] = localObject;
        i += 1;
        break;
      }
    }
    return null;
  }
  
  public String getSql()
  {
    return sql;
  }
  
  public void setSql(String paramString)
  {
    sql = paramString;
  }
}
