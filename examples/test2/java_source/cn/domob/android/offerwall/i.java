package cn.domob.android.offerwall;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

public class i
{
  static final String a = "http://duomeng.cn/api/12306/rp";
  private static m b = new m(i.class.getSimpleName());
  private static final String c = "ua";
  private static final String d = "ipb";
  private static final String e = "jstr";
  private static final String f = "type";
  private static final String g = "id";
  private static final String h = "idtype";
  private static final String i = "ts";
  
  public i() {}
  
  static void a(Context paramContext, a paramA)
  {
    try
    {
      String str = b(paramContext, paramA);
      b.b("Report params: " + str);
      if (l.e(str))
      {
        b.e("Report params is null or empty.");
        return;
      }
      new e(paramContext, c, str, new e.a()
      {
        public void a(e paramAnonymousE)
        {
          if ((paramAnonymousE != null) && (paramAnonymousE.f() == 200))
          {
            i.a().b("Report finish: " + a.a);
            return;
          }
          i.a().e("Report failed: " + a.a);
        }
      }).b();
      return;
    }
    catch (Exception paramContext)
    {
      b.e("Error happened while reporting.");
      b.a(paramContext);
    }
  }
  
  private static String b(Context paramContext, a paramA)
  {
    String str1;
    String str2;
    JSONArray localJSONArray;
    JSONObject localJSONObject;
    try
    {
      str1 = f.e(paramContext);
      str2 = DomobOfferWallSetting.a();
      localJSONArray = new JSONArray();
      localJSONObject = new JSONObject();
      localJSONObject.put("type", a);
      paramContext = new JSONArray();
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext()) {
        paramContext.put((String)localIterator.next());
      }
      localJSONObject.put("id", paramContext);
    }
    catch (Exception paramContext)
    {
      b.e("Error happened while building report params.");
      b.a(paramContext);
      return null;
    }
    paramContext = "app";
    if (a == "installed") {
      paramContext = "pkg";
    }
    localJSONObject.put("idtype", paramContext);
    localJSONObject.put("ts", String.valueOf(System.currentTimeMillis()));
    localJSONArray.put(localJSONObject);
    paramContext = localJSONArray.toString();
    paramA = new HashMap();
    paramA.put("ua", str1);
    paramA.put("ipb", str2);
    paramA.put("jstr", paramContext);
    paramContext = l.a(paramA);
    return paramContext;
  }
  
  static class a
  {
    String a;
    ArrayList<String> b = new ArrayList();
    String c;
    
    a() {}
  }
  
  class b
  {
    static final String a = "show_list";
    static final String b = "show_detail";
    static final String c = "download";
    static final String d = "download_finish";
    static final String e = "close_list";
    static final String f = "installed";
    static final String g = "run";
    
    b() {}
  }
}
