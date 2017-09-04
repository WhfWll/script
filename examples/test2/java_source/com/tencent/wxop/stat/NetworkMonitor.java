package com.tencent.wxop.stat;

import org.json.JSONException;
import org.json.JSONObject;

public class NetworkMonitor
{
  private long a = 0L;
  private int b = 0;
  private String c = "";
  private int d = 0;
  private String e = "";
  
  public NetworkMonitor() {}
  
  public String getDomain()
  {
    return c;
  }
  
  public long getMillisecondsConsume()
  {
    return a;
  }
  
  public int getPort()
  {
    return d;
  }
  
  public String getRemoteIp()
  {
    return e;
  }
  
  public int getStatusCode()
  {
    return b;
  }
  
  public void setDomain(String paramString)
  {
    c = paramString;
  }
  
  public void setMillisecondsConsume(long paramLong)
  {
    a = paramLong;
  }
  
  public void setPort(int paramInt)
  {
    d = paramInt;
  }
  
  public void setRemoteIp(String paramString)
  {
    e = paramString;
  }
  
  public void setStatusCode(int paramInt)
  {
    b = paramInt;
  }
  
  public JSONObject toJSONObject()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("tm", a);
      localJSONObject.put("st", b);
      if (c != null) {
        localJSONObject.put("dm", c);
      }
      localJSONObject.put("pt", d);
      if (e != null) {
        localJSONObject.put("rip", e);
      }
      localJSONObject.put("ts", System.currentTimeMillis() / 1000L);
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return localJSONObject;
  }
}
