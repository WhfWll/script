package com.lidroid.xutils.http.client.multipart;

class MinimalField
{
  private final String name;
  private final String value;
  
  MinimalField(String paramString1, String paramString2)
  {
    name = paramString1;
    value = paramString2;
  }
  
  public String getBody()
  {
    return value;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(name);
    localStringBuilder.append(": ");
    localStringBuilder.append(value);
    return localStringBuilder.toString();
  }
}
