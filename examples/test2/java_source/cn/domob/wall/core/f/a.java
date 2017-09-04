package cn.domob.wall.core.f;

import cn.domob.wall.core.DService.EWallReportType;
import cn.domob.wall.core.DService.ReportDownLoadType;
import cn.domob.wall.core.DService.ReportUserActionType;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.h.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import org.json.JSONArray;
import org.json.JSONObject;

public class a
{
  public static final String a = "1";
  public static final int b = 0;
  public static final int c = 1;
  private static d d = new d(a.class.getSimpleName());
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
  
  public void a(cn.domob.wall.core.b paramB, DService.EWallReportType paramEWallReportType, String paramString)
  {
    b localB = b.a();
    localB.getClass();
    paramB = new b.e(localB, paramB);
    paramB.a(paramEWallReportType);
    if (paramString != null) {
      paramB.a(paramString);
    }
    paramB.a();
  }
  
  public void a(cn.domob.wall.core.b paramB, DService.ReportUserActionType paramReportUserActionType)
  {
    b localB = b.a();
    localB.getClass();
    paramB = new b.o(localB, paramB);
    paramB.a(paramReportUserActionType);
    paramB.a();
  }
  
  public void a(cn.domob.wall.core.b paramB, AdInfo paramAdInfo, DService.ReportDownLoadType paramReportDownLoadType)
  {
    b localB = b.a();
    localB.getClass();
    paramB = new b.d(localB, paramB, paramAdInfo);
    paramB.a(paramReportDownLoadType);
    paramB.a();
  }
  
  public void a(cn.domob.wall.core.b paramB, AdInfo paramAdInfo, b.j paramJ)
  {
    b localB = b.a();
    localB.getClass();
    paramB = new b.b(localB, paramB, paramAdInfo);
    paramB.a(paramJ);
    paramB.a();
  }
  
  public void a(cn.domob.wall.core.b paramB, AdInfo paramAdInfo, b.k paramK)
  {
    b localB = b.a();
    localB.getClass();
    paramB = new b.c(localB, paramB, paramAdInfo);
    paramB.a(paramK);
    if (paramK.name().equals(b.k.b.name()))
    {
      paramAdInfo.setAdActualPosition(0);
      paramB.b(0);
    }
    for (;;)
    {
      paramB.a(1);
      paramB.a();
      return;
      paramB.b(paramAdInfo.getAdActualPosition());
    }
  }
  
  public void a(cn.domob.wall.core.b paramB, AdInfo paramAdInfo, b.m paramM, String paramString)
  {
    b localB = b.a();
    localB.getClass();
    paramB = new b.i(localB, paramB, paramAdInfo);
    paramB.a(paramM);
    paramB.a(paramString);
    paramB.a();
  }
  
  public void a(final cn.domob.wall.core.b paramB, final ArrayList<AdInfo> paramArrayList)
  {
    paramB.h().execute(new Runnable()
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
              AdInfo localAdInfo = (AdInfo)((Iterator)localObject).next();
              JSONObject localJSONObject = new JSONObject();
              localJSONObject.put("id", localAdInfo.getAdId());
              localJSONObject.put("tr", localAdInfo.getAdTracker());
              localJSONObject.put("sn", "1");
              localJSONObject.put("position", localAdInfo.getAdActualPosition());
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
        localObject = new b.g((b)localObject, paramB);
        ((b.g)localObject).a(localException.toString());
        ((b.g)localObject).b(((AdInfo)paramArrayList.get(0)).getSearchId());
        ((b.g)localObject).a();
      }
    });
  }
}
