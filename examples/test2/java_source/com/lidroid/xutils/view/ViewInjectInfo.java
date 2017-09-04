package com.lidroid.xutils.view;

public class ViewInjectInfo
{
  public int parentId;
  public Object value;
  
  public ViewInjectInfo() {}
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof ViewInjectInfo)) {
        return false;
      }
      paramObject = (ViewInjectInfo)paramObject;
      if (parentId != parentId) {
        return false;
      }
      if (value != null) {
        break;
      }
    } while (value == null);
    return false;
    return value.equals(value);
  }
  
  public int hashCode()
  {
    return value.hashCode() * 31 + parentId;
  }
}
