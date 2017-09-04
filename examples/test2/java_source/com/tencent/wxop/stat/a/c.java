package com.tencent.wxop.stat.a;

import java.util.Properties;
import org.json.JSONArray;
import org.json.JSONObject;

public class c
{
  public String a;
  public JSONArray b;
  public JSONObject c = null;
  
  public c() {}
  
  public c(String paramString, String[] paramArrayOfString, Properties paramProperties)
  {
    a = paramString;
    if (paramProperties != null) {
      c = new JSONObject(paramProperties);
    }
    for (;;)
    {
      return;
      if (paramArrayOfString == null) {
        break;
      }
      b = new JSONArray();
      int j = paramArrayOfString.length;
      int i = 0;
      while (i < j)
      {
        paramString = paramArrayOfString[i];
        b.put(paramString);
        i += 1;
      }
    }
    c = new JSONObject();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      return false;
      if (this == paramObject) {
        return true;
      }
    } while (!(paramObject instanceof c));
    paramObject = (c)paramObject;
    return toString().equals(paramObject.toString());
  }
  
  public int hashCode()
  {
    return toString().hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append(a).append(",");
    if (b != null) {
      localStringBuilder.append(b.toString());
    }
    if (c != null) {
      localStringBuilder.append(c.toString());
    }
    return localStringBuilder.toString();
  }
}
