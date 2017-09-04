package com.sdu.didi.openapi.gK;

import org.json.JSONException;
import org.json.JSONObject;

public abstract class a
{
  private int a = -1;
  private String b = "data error";
  private JSONObject c;
  
  public a() {}
  
  public int a()
  {
    return a;
  }
  
  public void a(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      a = paramString.optInt("errno", -1);
      b = paramString.optString("errmsg", "data error");
      c = paramString.optJSONObject("data");
      if (c == null) {
        c = new JSONObject();
      }
      a(c);
      return;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  protected abstract void a(JSONObject paramJSONObject);
  
  public String b()
  {
    return b;
  }
  
  public boolean c()
  {
    return a == 0;
  }
}
