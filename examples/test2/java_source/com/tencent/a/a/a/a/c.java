package com.tencent.a.a.a.a;

import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

public final class c
{
  long T = 0L;
  String a = null;
  String b = null;
  String c = "0";
  
  public c() {}
  
  static c e(String paramString)
  {
    c localC = new c();
    if (h.b(paramString)) {}
    try
    {
      paramString = new JSONObject(paramString);
      if (!paramString.isNull("ui")) {
        a = paramString.getString("ui");
      }
      if (!paramString.isNull("mc")) {
        b = paramString.getString("mc");
      }
      if (!paramString.isNull("mid")) {
        c = paramString.getString("mid");
      }
      if (!paramString.isNull("ts")) {
        T = paramString.getLong("ts");
      }
      return localC;
    }
    catch (JSONException paramString)
    {
      Log.w("MID", paramString);
    }
    return localC;
  }
  
  private JSONObject n()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      h.a(localJSONObject, "ui", a);
      h.a(localJSONObject, "mc", b);
      h.a(localJSONObject, "mid", c);
      localJSONObject.put("ts", T);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      Log.w("MID", localJSONException);
    }
    return localJSONObject;
  }
  
  public final String a()
  {
    return c;
  }
  
  public final String toString()
  {
    return n().toString();
  }
}
