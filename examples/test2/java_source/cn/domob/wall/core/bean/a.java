package cn.domob.wall.core.bean;

import org.json.JSONObject;

public class a
{
  private int a;
  private String b;
  
  public a(JSONObject paramJSONObject)
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
