package com.tencent.wxop.stat.common;

import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  private String a = null;
  private String b = null;
  private String c = null;
  private String d = "0";
  private int e;
  private int f = 0;
  private long g = 0L;
  
  public a() {}
  
  public a(String paramString1, String paramString2, int paramInt)
  {
    a = paramString1;
    b = paramString2;
    e = paramInt;
  }
  
  JSONObject a()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      q.a(localJSONObject, "ui", a);
      q.a(localJSONObject, "mc", b);
      q.a(localJSONObject, "mid", d);
      q.a(localJSONObject, "aid", c);
      localJSONObject.put("ts", g);
      localJSONObject.put("ver", f);
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return localJSONObject;
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public String b()
  {
    return a;
  }
  
  public String c()
  {
    return b;
  }
  
  public int d()
  {
    return e;
  }
  
  public String toString()
  {
    return a().toString();
  }
}
