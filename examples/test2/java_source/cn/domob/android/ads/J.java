package cn.domob.android.ads;

import android.content.Context;
import cn.domob.android.f.c;
import cn.domob.android.f.e;
import cn.domob.android.i.f;
import cn.domob.android.i.i;
import cn.domob.android.i.i.a;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

class J
{
  private static f a = new f(J.class.getSimpleName());
  private static final String b = "method";
  private static final String c = "ua";
  private static final String d = "cid";
  private static final String e = "ipb";
  private static final String f = "sv";
  private static final String g = "network";
  private static final String h = "idv";
  private static final String i = "get_task_list";
  private static final String j = "report_result";
  private static final String k = "3rd";
  private static final String l = "tasks";
  private static final String m = "det_interval";
  private static final String n = "pb[version_code]";
  private static final String o = "pb[identifier]";
  private static final String p = "result";
  private static final String q = "visit";
  private static final String r = "seqid";
  private static final String s = "vcode";
  private static final String t = "s";
  private static final String u = "c";
  private static final long v = 3600000L;
  private static final long w = 604800000L;
  private static final long x = 600000L;
  private static J z = null;
  private boolean A = false;
  private g B = null;
  private Context y;
  
  private J() {}
  
  protected static J a()
  {
    if (z == null) {
      z = new J();
    }
    return z;
  }
  
  private String a(HashMap<String, String> paramHashMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramHashMap = paramHashMap.entrySet().iterator();
    boolean bool = true;
    if (paramHashMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramHashMap.next();
      a(localStringBuilder, (String)localEntry.getKey(), (String)localEntry.getValue(), bool);
      if (!bool) {
        break label107;
      }
      bool = false;
    }
    label107:
    for (;;)
    {
      break;
      paramHashMap = localStringBuilder.toString();
      a.b(this, "post params string:" + paramHashMap);
      return paramHashMap;
    }
  }
  
  private static HashMap<String, String> a(Context paramContext, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("method", paramString);
    String str1 = cn.domob.android.b.a.f(paramContext);
    paramString = str1;
    if (str1 == null) {
      paramString = "Android,,,,,,,,";
    }
    localHashMap.put("ua", paramString);
    str1 = new cn.domob.android.ads.c.a(paramContext, "domob_config").a("cookie_id", null);
    if (str1 != null)
    {
      a.b(J.class.getSimpleName(), "CID:" + str1);
      localHashMap.put("cid", str1);
    }
    String str2 = h.a().a(paramContext);
    if ((str2 != null) && (str2.length() > 0)) {
      localHashMap.put("ipb", str2);
    }
    for (;;)
    {
      String str3 = String.valueOf(cn.domob.android.b.a.b(paramContext));
      if ((str3 != null) && (str3.length() > 0)) {
        localHashMap.put("pb[version_code]", str3);
      }
      str3 = String.valueOf(cn.domob.android.b.a.a(paramContext));
      if ((str3 != null) && (str3.length() > 0)) {
        localHashMap.put("pb[identifier]", str3);
      }
      localHashMap.put("sv", "040602");
      localHashMap.put("network", cn.domob.android.b.a.o(paramContext));
      localHashMap.put("idv", cn.domob.android.b.a.g(paramContext));
      localHashMap.put("vcode", i.a(str2, paramString, str1).c());
      return localHashMap;
      a.e(f.b(), "publisher id is null or empty!");
    }
  }
  
  private void a(Context paramContext, long paramLong)
  {
    try
    {
      paramContext = new cn.domob.android.ads.c.a(paramContext, "domob_config");
      HashMap localHashMap = new HashMap();
      localHashMap.put("next_time", Long.valueOf(System.currentTimeMillis() + paramLong));
      paramContext.a(localHashMap);
      return;
    }
    catch (Exception paramContext)
    {
      a.e(this, "updateDetectTime error:" + paramContext.getMessage());
    }
  }
  
  private static void a(StringBuilder paramStringBuilder, String paramString1, String paramString2, boolean paramBoolean)
  {
    if ((paramString1 != null) && (paramString1.length() > 0) && (paramString2 != null))
    {
      if (paramBoolean) {}
      try
      {
        paramStringBuilder.append(URLEncoder.encode(paramString1, "UTF-8")).append("=").append(URLEncoder.encode(paramString2, "UTF-8"));
        return;
      }
      catch (Exception paramStringBuilder)
      {
        a.a(paramStringBuilder);
      }
      paramStringBuilder.append("&").append(URLEncoder.encode(paramString1, "UTF-8")).append("=").append(URLEncoder.encode(paramString2, "UTF-8"));
      return;
    }
  }
  
  private void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    b(paramJSONObject1, paramJSONObject2);
    c(paramJSONObject1, paramJSONObject2);
    a.a(this, "taskResult" + paramJSONObject2.toString());
  }
  
  private boolean a(Context paramContext)
  {
    if (cn.domob.android.b.a.i(paramContext)) {
      a.b(this, "is emulator ignore request");
    }
    for (;;)
    {
      return false;
      try
      {
        long l1 = new cn.domob.android.ads.c.a(paramContext, "domob_config").a("next_time", -1L);
        if (l1 < 0L) {
          return true;
        }
        paramContext = Long.valueOf(System.currentTimeMillis() - l1);
        l1 = paramContext.longValue() / 60000L;
        a.b(this, "Exceed detInterval:" + paramContext + "ms    " + Long.valueOf(l1) + " min");
        l1 = paramContext.longValue();
        if (l1 >= 0L) {
          return true;
        }
      }
      catch (Exception paramContext)
      {
        a.e(this, "checkIsNeedDetect error:" + paramContext.getMessage());
      }
    }
    return false;
  }
  
  private void b()
  {
    if (A) {
      return;
    }
    A = true;
    try
    {
      if (a(y))
      {
        a.b(this, "need to detect");
        b(y);
      }
      for (;;)
      {
        A = false;
        return;
        a.b(this, "no need to detect");
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        a.e(this, "info detect has Throwable " + localThrowable.getMessage());
        a.a(localThrowable);
      }
    }
  }
  
  private void b(Context paramContext)
  {
    a(paramContext, 600000L);
    Object localObject1 = a(a(paramContext, "get_task_list"));
    t localT = new t(paramContext);
    a.b(this, "Https req:" + (String)localObject1);
    localObject1 = localT.a((String)localObject1, B);
    a.b(this, "Https rsp:" + (String)localObject1);
    if ((localObject1 == null) || (((String)localObject1).trim().equals(""))) {}
    label308:
    do
    {
      for (;;)
      {
        return;
        localObject1 = new JSONTokener((String)localObject1);
        try
        {
          localObject2 = new JSONObject((JSONTokener)localObject1);
          if ((localObject2 == null) || (((JSONObject)localObject2).length() == 0))
          {
            a.e(this, "Https rsp jsonobject is error");
            return;
          }
        }
        catch (Exception paramContext)
        {
          a.e(this, "startDetectInfo has a exception msg:" + paramContext.getMessage());
          a.a(paramContext);
          return;
        }
        localObject1 = ((JSONObject)localObject2).optString("det_interval", null);
        if (localObject1 == null) {
          a(paramContext, 3600000L);
        }
        while (!((JSONObject)localObject2).isNull("tasks"))
        {
          localObject1 = ((JSONObject)localObject2).getJSONObject("tasks");
          if ((localObject1 != null) && (((JSONObject)localObject1).length() != 0)) {
            break label308;
          }
          a.e(this, "Can't find a tag name of task");
          return;
          long l1 = Long.parseLong((String)localObject1) * 1000L;
          if (l1 > 604800000L) {
            a(paramContext, 604800000L);
          } else {
            a(paramContext, l1);
          }
        }
      }
      paramContext = a(paramContext, "report_result");
      Object localObject2 = ((JSONObject)localObject2).optString("seqid");
      if (localObject2 != null) {
        paramContext.put("seqid", localObject2);
      }
      localObject2 = new JSONObject();
      a((JSONObject)localObject1, (JSONObject)localObject2);
      localObject1 = new JSONObject();
      ((JSONObject)localObject1).put("result", localObject2);
      paramContext.put("result", URLEncoder.encode(((JSONObject)localObject1).toString(), "UTF-8"));
    } while (paramContext == null);
    paramContext = a(paramContext);
    localT.a(paramContext, B);
    a.b(this, "Https send:" + paramContext);
  }
  
  private void b(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    try
    {
      if (paramJSONObject1.isNull("3rd")) {
        return;
      }
      paramJSONObject1 = paramJSONObject1.getJSONArray("3rd");
      if (paramJSONObject1 == null)
      {
        a.e(this, "Https rsp JSONArray is error");
        return;
      }
    }
    catch (Exception paramJSONObject1)
    {
      a.e(this, "checkThirdPartyExist has exception " + paramJSONObject1.getMessage());
      return;
    }
    JSONObject localJSONObject = new JSONObject();
    int i1 = 0;
    for (;;)
    {
      if (i1 < paramJSONObject1.length())
      {
        String str = paramJSONObject1.getString(i1);
        try
        {
          Class.forName(str);
          localJSONObject.put(str, "1");
          i1 += 1;
        }
        catch (ClassNotFoundException localClassNotFoundException)
        {
          for (;;)
          {
            localJSONObject.put(str, "0");
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            a.e(this, "check package has exception");
          }
        }
      }
    }
    paramJSONObject2.put("3rd", localJSONObject);
  }
  
  private void c(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    paramJSONObject1 = paramJSONObject1.optString("visit", null);
    JSONObject localJSONObject = new JSONObject();
    if (paramJSONObject1 != null) {}
    try
    {
      Object localObject = new e();
      ((e)localObject).a(paramJSONObject1).c("GET").a(true).a(y).d(cn.domob.android.b.a.f(y));
      localObject = c.a().a((e)localObject).e();
      paramJSONObject1 = (JSONObject)localObject;
      if (localObject == null) {
        paramJSONObject1 = "";
      }
      localJSONObject.put("c", paramJSONObject1);
      paramJSONObject2.put("visit", localJSONObject);
      return;
    }
    catch (Exception paramJSONObject1)
    {
      a.e(this, "visit url has a Exception " + paramJSONObject1.getMessage());
      try
      {
        localJSONObject.put("c", "" + paramJSONObject1.getMessage());
        localJSONObject.put("s", -1);
        paramJSONObject2.put("visit", localJSONObject);
        return;
      }
      catch (JSONException paramJSONObject1)
      {
        a.a(paramJSONObject1);
      }
    }
  }
  
  protected void a(Context paramContext, g paramG)
  {
    try
    {
      y = paramContext;
      B = paramG;
      new Thread()
      {
        public void run()
        {
          J.a(J.this);
        }
      }.start();
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  static abstract interface a
  {
    public abstract void g(String paramString);
  }
}
