package com.sdu.didi.openapi.ss;

import android.text.TextUtils;
import com.sdu.didi.openapi.DiDiWebActivity;
import com.sdu.didi.openapi.Methods;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.json.JSONException;
import org.json.JSONObject;

public class d
{
  private static String a;
  private static Methods b;
  
  public static String a(String paramString, DiDiWebActivity paramDiDiWebActivity)
  {
    try
    {
      Object localObject = new JSONObject(paramString);
      paramString = ((JSONObject)localObject).optString("cmd");
      a = ((JSONObject)localObject).optString("id");
      localObject = ((JSONObject)localObject).optString("params");
      b = new Methods(paramDiDiWebActivity);
      paramString = (String)b.getClass().getDeclaredMethod(paramString, new Class[] { String.class }).invoke(b, new Object[] { localObject });
      if (paramString.equals("success")) {
        return "success";
      }
      paramString = a(a, paramString);
      return paramString;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
      return a(a, "");
    }
    catch (InvocationTargetException paramString)
    {
      paramString.printStackTrace();
      return a(a, "");
    }
    catch (NoSuchMethodException paramString)
    {
      paramString.printStackTrace();
      return a(a, null);
    }
    catch (IllegalAccessException paramString)
    {
      paramString.printStackTrace();
    }
    return a(a, "");
  }
  
  private static String a(String paramString1, String paramString2)
  {
    JSONObject localJSONObject = new JSONObject();
    String str;
    if (paramString2 == null) {
      str = "404";
    }
    for (;;)
    {
      try
      {
        localJSONObject.put("id", paramString1);
        localJSONObject.put("result", paramString2);
        localJSONObject.put("errorcode", str);
        paramString1 = localJSONObject.toString();
        return paramString1;
      }
      catch (JSONException paramString1)
      {
        paramString1.printStackTrace();
      }
      if (TextUtils.isEmpty(paramString2)) {
        str = "500";
      } else {
        str = "200";
      }
    }
    return "";
  }
}
