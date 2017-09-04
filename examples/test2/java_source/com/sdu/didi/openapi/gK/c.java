package com.sdu.didi.openapi.gK;

import org.json.JSONObject;

public class c
  extends a
{
  private long a;
  private String b;
  
  public c() {}
  
  protected void a(JSONObject paramJSONObject)
  {
    a = paramJSONObject.optLong("timestamp");
    b = paramJSONObject.optString("homepage");
  }
  
  public String d()
  {
    return b;
  }
  
  public String toString()
  {
    return "ServerConfig{serverTime=" + a + ", ur='" + b + '\'' + '}';
  }
}
