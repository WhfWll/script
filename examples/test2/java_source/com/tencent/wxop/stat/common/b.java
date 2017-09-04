package com.tencent.wxop.stat.common;

import android.content.Context;
import com.tencent.wxop.stat.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class b
{
  static d a;
  private static StatLogger d = ;
  private static JSONObject e = new JSONObject();
  Integer b = null;
  String c = null;
  
  public b(Context paramContext)
  {
    try
    {
      a(paramContext);
      b = k.m(paramContext.getApplicationContext());
      c = a.a(paramContext).b();
      return;
    }
    catch (Throwable paramContext)
    {
      d.e(paramContext);
    }
  }
  
  static d a(Context paramContext)
  {
    try
    {
      if (a == null) {
        a = new d(paramContext.getApplicationContext(), null);
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  public static void a(Context paramContext, Map<String, String> paramMap)
  {
    if (paramMap == null) {}
    for (;;)
    {
      return;
      paramContext = new HashMap(paramMap).entrySet().iterator();
      while (paramContext.hasNext())
      {
        paramMap = (Map.Entry)paramContext.next();
        e.put((String)paramMap.getKey(), paramMap.getValue());
      }
    }
  }
  
  public void a(JSONObject paramJSONObject, Thread paramThread)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      if (a != null) {
        a.a(localJSONObject, paramThread);
      }
      q.a(localJSONObject, "cn", c);
      if (b != null) {
        localJSONObject.put("tn", b);
      }
      if (paramThread == null) {
        paramJSONObject.put("ev", localJSONObject);
      }
      while ((e != null) && (e.length() > 0))
      {
        paramJSONObject.put("eva", e);
        return;
        paramJSONObject.put("errkv", localJSONObject.toString());
      }
      return;
    }
    catch (Throwable paramJSONObject)
    {
      d.e(paramJSONObject);
    }
  }
}
