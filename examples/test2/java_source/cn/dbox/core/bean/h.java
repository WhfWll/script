package cn.dbox.core.bean;

import org.json.JSONObject;

public class h
{
  private int a;
  private String b;
  
  public h(JSONObject paramJSONObject)
  {
    a = paramJSONObject.optInt("code", 0);
    b = paramJSONObject.optString("text", null);
  }
  
  public int a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
}
