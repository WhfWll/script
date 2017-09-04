package com.lidroid.xutils.db.table;

import android.text.TextUtils;
import java.util.HashMap;

public class DbModel
{
  private HashMap<String, String> dataMap = new HashMap();
  
  public DbModel() {}
  
  public void add(String paramString1, String paramString2)
  {
    dataMap.put(paramString1, paramString2);
  }
  
  public boolean getBoolean(String paramString)
  {
    paramString = (String)dataMap.get(paramString);
    if (paramString != null)
    {
      if (paramString.length() == 1) {
        return "1".equals(paramString);
      }
      return Boolean.valueOf(paramString).booleanValue();
    }
    return false;
  }
  
  public HashMap<String, String> getDataMap()
  {
    return dataMap;
  }
  
  public java.util.Date getDate(String paramString)
  {
    return new java.util.Date(Long.valueOf((String)dataMap.get(paramString)).longValue());
  }
  
  public double getDouble(String paramString)
  {
    return Double.valueOf((String)dataMap.get(paramString)).doubleValue();
  }
  
  public float getFloat(String paramString)
  {
    return Float.valueOf((String)dataMap.get(paramString)).floatValue();
  }
  
  public int getInt(String paramString)
  {
    return Integer.valueOf((String)dataMap.get(paramString)).intValue();
  }
  
  public long getLong(String paramString)
  {
    return Long.valueOf((String)dataMap.get(paramString)).longValue();
  }
  
  public java.sql.Date getSqlDate(String paramString)
  {
    return new java.sql.Date(Long.valueOf((String)dataMap.get(paramString)).longValue());
  }
  
  public String getString(String paramString)
  {
    return (String)dataMap.get(paramString);
  }
  
  public boolean isEmpty(String paramString)
  {
    return TextUtils.isEmpty((CharSequence)dataMap.get(paramString));
  }
}
