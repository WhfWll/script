package com.sdu.didi.openapi.gK;

import org.json.JSONObject;

public class b
  extends a
{
  private String a = "";
  private String b = "";
  
  public b() {}
  
  protected void a(JSONObject paramJSONObject)
  {
    a = paramJSONObject.optString("openid");
    b = paramJSONObject.optString("channel");
  }
  
  public String d()
  {
    return a;
  }
  
  public String e()
  {
    return b;
  }
  
  public String toString()
  {
    return "OpenId{openid='" + a + '\'' + ", channel='" + b + '\'' + '}';
  }
}
