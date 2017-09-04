package cn.dbox.core.f;

import android.content.Context;
import cn.dbox.core.b.a;
import cn.dbox.core.b.c;
import cn.dbox.core.bean.Entrance.EntryReportType;
import cn.dbox.core.c.c.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import org.json.JSONArray;
import org.json.JSONObject;

public class a
{
  public static final String a = "1";
  public static final int b = 0;
  public static final int c = 1;
  private static cn.dbox.core.h.d d = new cn.dbox.core.h.d(a.class.getSimpleName());
  private static a e;
  
  public a() {}
  
  public static a a()
  {
    try
    {
      if (e == null) {
        e = new a();
      }
      a localA = e;
      return localA;
    }
    finally {}
  }
  
  public void a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = new cn.dbox.core.c.c(paramContext, paramString1, null, null, "GET", null, 20000, new c.a()
    {
      public void a(cn.dbox.core.c.c paramAnonymousC)
      {
        if ((paramAnonymousC != null) && (paramAnonymousC.f() == 200)) {
          a.b().b("Report finish: ");
        }
      }
    });
    d.b("The third party incident report:" + paramString1);
    paramContext.a(paramString2);
    paramContext.b();
  }
  
  public void a(cn.dbox.core.c paramC, b.c paramC1, cn.dbox.core.bean.c paramC2)
  {
    Object localObject = b.a();
    localObject.getClass();
    localObject = new b.e((b)localObject, paramC);
    ((b.e)localObject).a(paramC1);
    ((b.e)localObject).a(paramC2.a());
    ((b.e)localObject).b(paramC.n());
  }
  
  public void a(cn.dbox.core.c paramC, cn.dbox.core.b.f paramF, cn.dbox.core.bean.d paramD, cn.dbox.core.b.e paramE)
  {
    paramF = b.a();
    paramF.getClass();
    paramF = new b.i(paramF, paramC);
    paramF.a(paramD.a());
    paramF.c(paramD.c());
    paramF.a(paramE);
    paramF.a(cn.dbox.core.b.f.b);
    paramF.b(paramC.n());
  }
  
  public void a(cn.dbox.core.c paramC, cn.dbox.core.b.o paramO, String paramString1, String paramString2)
  {
    Object localObject = b.a();
    localObject.getClass();
    localObject = new b.r((b)localObject, paramC);
    ((b.r)localObject).a(paramO);
    ((b.r)localObject).a(paramString1);
    ((b.r)localObject).c(paramString2);
    ((b.r)localObject).b(paramC.p());
  }
  
  public void a(cn.dbox.core.c paramC, Entrance.EntryReportType paramEntryReportType)
  {
    paramEntryReportType = b.a();
    paramEntryReportType.getClass();
    new b.l(paramEntryReportType, paramC).b("http://arp.12306.domob.cn/aw/event/");
  }
  
  public void a(cn.dbox.core.c paramC, cn.dbox.core.bean.a paramA, b.a paramA1, cn.dbox.core.b.d paramD)
  {
    paramA1 = b.a();
    paramA1.getClass();
    paramA1 = new b.f(paramA1, paramC, paramA);
    paramA1.a(paramD);
    paramA1.a(paramA.d());
    paramA1.c(paramA.c());
    paramA1.a(paramA.b());
    paramA1.b(paramC.j());
  }
  
  public void a(cn.dbox.core.c paramC, cn.dbox.core.bean.a paramA, cn.dbox.core.b.b paramB)
  {
    b localB = b.a();
    localB.getClass();
    paramA = new b.d(localB, paramC, paramA);
    paramA.a(paramB);
    paramA.b(paramC.n());
  }
  
  public void a(cn.dbox.core.c paramC, cn.dbox.core.bean.a paramA, cn.dbox.core.b.g paramG)
  {
    b localB = b.a();
    localB.getClass();
    paramA = new b.j(localB, paramC, paramA);
    paramA.a(paramG);
    paramA.b(paramC.n());
  }
  
  public void a(cn.dbox.core.c paramC, cn.dbox.core.bean.a paramA, cn.dbox.core.b.i paramI, String paramString)
  {
    b localB = b.a();
    localB.getClass();
    paramA = new b.o(localB, paramC, paramA);
    paramA.a(paramI);
    paramA.a(paramString);
    paramA.b(paramC.n());
  }
  
  public void a(cn.dbox.core.c paramC, cn.dbox.core.bean.a paramA, HashMap<String, String> paramHashMap, String paramString1, String paramString2)
  {
    b localB = b.a();
    localB.getClass();
    paramC = new b.b(localB, paramC, paramA);
    paramC.a(paramHashMap);
    paramC.a(paramString1);
    paramC.b(paramString2);
  }
  
  public void a(cn.dbox.core.c paramC, cn.dbox.core.bean.d paramD, cn.dbox.core.b.b paramB)
  {
    Object localObject = b.a();
    localObject.getClass();
    localObject = new b.g((b)localObject, paramC);
    ((b.g)localObject).a(paramD.a());
    ((b.g)localObject).c(paramD.c());
    ((b.g)localObject).a(cn.dbox.core.b.f.c);
    ((b.g)localObject).a(paramB);
    ((b.g)localObject).b(paramC.n());
  }
  
  public void a(cn.dbox.core.c paramC, String paramString)
  {
    try
    {
      Object localObject = b.a();
      localObject.getClass();
      localObject = new b.q((b)localObject, paramC);
      ((b.q)localObject).a(paramString);
      ((b.q)localObject).b(paramC.m());
      return;
    }
    catch (Exception paramC)
    {
      d.a(paramC);
      return;
    }
    catch (Error paramC)
    {
      d.a(paramC);
    }
  }
  
  public void a(cn.dbox.core.c paramC, String paramString1, cn.dbox.core.b.b paramB, String paramString2)
  {
    paramString1 = b.a();
    paramString1.getClass();
    paramC = new b.h(paramString1, paramC);
    paramC.a(cn.dbox.core.b.f.c);
    paramC.a(paramB);
    paramC.b(paramString2);
  }
  
  public void a(final cn.dbox.core.c paramC, final ArrayList<cn.dbox.core.bean.a> paramArrayList, final String paramString)
  {
    paramC.g().execute(new Runnable()
    {
      public void run()
      {
        try
        {
          JSONArray localJSONArray = new JSONArray();
          if (paramArrayList != null)
          {
            localObject = paramArrayList.iterator();
            while (((Iterator)localObject).hasNext())
            {
              cn.dbox.core.bean.a localA = (cn.dbox.core.bean.a)((Iterator)localObject).next();
              JSONObject localJSONObject = new JSONObject();
              localJSONObject.put("id", localA.i());
              localJSONObject.put("acid", paramString);
              localJSONObject.put("tr", localA.h());
              localJSONObject.put("position", localA.d());
              localJSONArray.put(localJSONObject);
            }
          }
          return;
        }
        catch (Exception localException)
        {
          a.b().a(localException);
        }
        Object localObject = b.a();
        localObject.getClass();
        localObject = new b.m((b)localObject, paramC);
        ((b.m)localObject).a(localException.toString());
        ((b.m)localObject).b(paramC.l());
      }
    });
  }
  
  public void b(cn.dbox.core.c paramC, Entrance.EntryReportType paramEntryReportType)
  {
    Object localObject = b.a();
    localObject.getClass();
    localObject = new b.k((b)localObject, paramC);
    ((b.k)localObject).a(paramEntryReportType);
    ((b.k)localObject).b(paramC.n());
  }
}
