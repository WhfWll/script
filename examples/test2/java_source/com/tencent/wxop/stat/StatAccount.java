package com.tencent.wxop.stat;

import com.tencent.wxop.stat.common.k;
import com.tencent.wxop.stat.common.q;
import org.json.JSONException;
import org.json.JSONObject;

public class StatAccount
{
  public static final int CUSTOM_TYPE = 7;
  public static final int DEFAULT_TYPE = 0;
  public static final int EMAIL_TYPE = 6;
  public static final int PHONE_NUM_TYPE = 5;
  public static final int QQ_NUM_TYPE = 1;
  public static final int QQ_OPENID_TYPE = 3;
  public static final int WECHAT_ID_TYPE = 2;
  public static final int WECHAT_OPENID_TYPE = 4;
  private String a = "";
  private int b = 0;
  private String c = "";
  private String d = "";
  
  public StatAccount(String paramString)
  {
    a = paramString;
  }
  
  public StatAccount(String paramString, int paramInt)
  {
    a = paramString;
    b = paramInt;
  }
  
  public String getAccount()
  {
    return a;
  }
  
  public int getAccountType()
  {
    return b;
  }
  
  public String getExt()
  {
    return c;
  }
  
  public String getExt1()
  {
    return d;
  }
  
  public void setAccount(String paramString)
  {
    a = paramString;
  }
  
  public void setAccountType(int paramInt)
  {
    b = paramInt;
  }
  
  public void setExt(String paramString)
  {
    c = paramString;
  }
  
  public void setExt1(String paramString)
  {
    d = paramString;
  }
  
  public String toJsonString()
  {
    JSONObject localJSONObject = new JSONObject();
    if (k.c(a)) {}
    try
    {
      q.a(localJSONObject, "a", a);
      localJSONObject.put("t", b);
      q.a(localJSONObject, "e", c);
      q.a(localJSONObject, "e1", d);
      return localJSONObject.toString();
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  public String toString()
  {
    return "StatAccount [account=" + a + ", accountType=" + b + ", ext=" + c + ", ext1=" + d + "]";
  }
}
