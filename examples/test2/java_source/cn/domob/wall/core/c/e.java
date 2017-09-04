package cn.domob.wall.core.c;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import cn.domob.wall.core.bean.AdExtend;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.bean.AdInfo.ClickActionType;
import cn.domob.wall.core.bean.ControlInfo;
import cn.domob.wall.core.bean.ControlInfo.a;
import cn.domob.wall.core.bean.a;
import cn.domob.wall.core.e.b;
import cn.domob.wall.core.h.d;
import cn.domob.wall.core.h.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class e
{
  private static d a = new d(e.class.getSimpleName());
  private String b;
  private String c;
  private a d;
  private ControlInfo e;
  private List<AdInfo> f;
  private List<AdInfo> g;
  private List<AdInfo> h;
  private List<AdExtend> i;
  
  public e() {}
  
  private int a(List<AdInfo> paramList)
  {
    int k;
    if (paramList != null)
    {
      paramList = paramList.iterator();
      int j = 0;
      k = j;
      if (!paramList.hasNext()) {
        break label48;
      }
      if (!((AdInfo)paramList.next()).isNew()) {
        break label50;
      }
      j += 1;
    }
    label48:
    label50:
    for (;;)
    {
      break;
      k = 0;
      return k;
    }
  }
  
  private ArrayList<AdInfo> a(List<AdInfo> paramList1, List<AdInfo> paramList2)
  {
    ArrayList localArrayList = new ArrayList();
    paramList2 = b(paramList2);
    int k = 0;
    int m = -1;
    int j = 0;
    int n;
    for (;;)
    {
      n = j;
      if (k >= paramList2.size()) {
        break;
      }
      n = 0;
      while (n < ((AdInfo)paramList2.get(k)).getAdPosition() - 1 - m - 1)
      {
        if (j < paramList1.size()) {
          localArrayList.add(paramList1.get(j));
        }
        j += 1;
        n += 1;
      }
      localArrayList.add(paramList2.get(k));
      m = ((AdInfo)paramList2.get(k)).getAdPosition() - 1;
      k += 1;
    }
    while (n < paramList1.size())
    {
      localArrayList.add(paramList1.get(n));
      n += 1;
    }
    return localArrayList;
  }
  
  private List<AdInfo> a(long paramLong, String paramString1, JSONObject paramJSONObject, String paramString2)
  {
    paramJSONObject = paramJSONObject.optJSONArray(paramString1);
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject != null)
    {
      int j = 0;
      for (;;)
      {
        if (j < paramJSONObject.length()) {
          try
          {
            localArrayList.add(new AdInfo(paramLong, paramJSONObject.getJSONObject(j), paramString2, paramString1, e));
            j += 1;
          }
          catch (JSONException localJSONException)
          {
            for (;;)
            {
              a.a(localJSONException);
            }
          }
        }
      }
      return c(localArrayList);
    }
    return localArrayList;
  }
  
  private List<AdInfo> a(Context paramContext, List<AdInfo> paramList)
  {
    List localList = cn.domob.wall.core.h.e.g(paramContext);
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      AdInfo localAdInfo = (AdInfo)localIterator.next();
      if (localList.contains(localAdInfo.getAdPackageName()))
      {
        Object localObject;
        try
        {
          localObject = paramContext.getPackageManager().getPackageInfo(localAdInfo.getAdPackageName(), 0);
          a.b(localAdInfo.getAdPackageName() + "vc:" + localAdInfo.getAdVersionCode() + "vn:" + localAdInfo.getAdVersionName() + "vc:" + versionCode + "vn:" + versionName);
          if (localAdInfo.getAdVersionCode() <= versionCode) {
            break label314;
          }
          a.b(localAdInfo.getAdPackageName() + "vc:" + localAdInfo.getAdVersionCode() + "vn:" + localAdInfo.getAdVersionName() + "vc:" + versionCode + "vn:" + versionName);
          if ((localAdInfo.getAdActionType() == AdInfo.ClickActionType.LAUNCH) || (e == null)) {
            continue;
          }
          if (!e.isShowUpdate()) {
            break label281;
          }
          localAdInfo.setClickActionType(AdInfo.ClickActionType.UPDATE.ordinal());
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          localNameNotFoundException.printStackTrace();
        }
        continue;
        label281:
        localIterator.remove();
        a.d(String.format("This application %s has been installed and ClickActionType is not launch and controlInfo showUpdate is flase, so removed, and is no longer displayed", new Object[] { localNameNotFoundException.getAdPackageName() }));
        continue;
        label314:
        if ((localNameNotFoundException.getAdActionType() != AdInfo.ClickActionType.LAUNCH) && (e != null)) {
          if (e.isShowOpen())
          {
            localObject = String.format("domob://launch/?pkg=%s&failsafe=%s", new Object[] { localNameNotFoundException.getAdPackageName(), localNameNotFoundException.getAdActionURL() });
            localNameNotFoundException.setClickActionType(AdInfo.ClickActionType.LAUNCH.ordinal());
            localNameNotFoundException.setAdActionURL((String)localObject);
          }
          else
          {
            localIterator.remove();
            a.d(String.format("This application %s has been installed and ClickActionType is not launch and controlInfo showOpen is flase, so removed, and is no longer displayed", new Object[] { localNameNotFoundException.getAdPackageName() }));
          }
        }
      }
    }
    return paramList;
  }
  
  private List<AdInfo> a(ControlInfo paramControlInfo, List<AdInfo> paramList1, List<AdInfo> paramList2)
  {
    paramControlInfo = paramControlInfo.getAdOrder();
    if (paramControlInfo.equals(ControlInfo.a.a))
    {
      paramList2.addAll(paramList1);
      return paramList2;
    }
    if (paramControlInfo.equals(ControlInfo.a.b))
    {
      paramList1.addAll(paramList2);
      return paramList1;
    }
    if (paramControlInfo.equals(ControlInfo.a.c)) {
      return a(paramList1, paramList2);
    }
    return null;
  }
  
  private List<AdExtend> a(JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.optJSONArray("extend");
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject != null)
    {
      int j = 0;
      while (j < paramJSONObject.length())
      {
        try
        {
          AdExtend localAdExtend = new AdExtend(paramJSONObject.getJSONObject(j));
          if (localAdExtend != null) {
            localArrayList.add(localAdExtend);
          }
        }
        catch (b localB)
        {
          for (;;)
          {
            a.a(localB);
          }
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            a.a(localJSONException);
          }
        }
        j += 1;
      }
    }
    a.b("AdExtendList: " + localArrayList.toString());
    return localArrayList;
  }
  
  private List<AdInfo> b(List<AdInfo> paramList)
  {
    int j = 0;
    while (j < paramList.size() - 1)
    {
      int k = j + 1;
      while (k < paramList.size())
      {
        if (((AdInfo)paramList.get(j)).getAdPosition() > ((AdInfo)paramList.get(k)).getAdPosition())
        {
          AdInfo localAdInfo = (AdInfo)paramList.get(j);
          paramList.set(j, (AdInfo)paramList.get(k));
          paramList.set(k, localAdInfo);
        }
        k += 1;
      }
      j += 1;
    }
    return paramList;
  }
  
  private boolean b(Context paramContext, String paramString)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(new JSONTokener(paramString));
      b = localJSONObject.optString("sid", "");
      c = localJSONObject.optString("cid", "");
      if ((c != null) && (!c.equals(""))) {
        h.a().a(paramContext, c);
      }
      h = new ArrayList();
      paramString = localJSONObject.optJSONObject("ad");
      Object localObject = localJSONObject.optJSONObject("error");
      localJSONObject = localJSONObject.optJSONObject("control");
      if (localObject != null)
      {
        d = new a((JSONObject)localObject);
      }
      else
      {
        if (localJSONObject != null) {
          e = new ControlInfo(localJSONObject);
        }
        if (paramString != null)
        {
          long l = h.a().a(paramContext);
          a.b("lasttime request：" + l);
          g = a(l, "wheel", paramString, b);
          i = a(paramString);
          localObject = a(paramContext, a(l, f.a(), paramString, b));
          paramString = a(paramContext, a(l, "own", paramString, b));
          f = a(e, (List)localObject, paramString);
          e.setNumberOfNewAd(a(f));
          h.a().b(paramContext);
        }
      }
    }
    catch (Exception paramContext)
    {
      a.a(paramContext);
      return false;
    }
    a.e("There is no ad response or error response.");
    return true;
  }
  
  private List<AdInfo> c(List<AdInfo> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      AdInfo localAdInfo = (AdInfo)localIterator.next();
      if (localAdInfo.isNew())
      {
        localArrayList.add(localAdInfo);
        localIterator.remove();
      }
    }
    localArrayList.addAll(paramList);
    return localArrayList;
  }
  
  public e a(Context paramContext, String paramString)
  {
    e localE = new e();
    if (localE.b(paramContext, paramString))
    {
      a.a("Ad/Error response is ok.");
      return localE;
    }
    return null;
  }
  
  public String a()
  {
    return b;
  }
  
  public a b()
  {
    return d;
  }
  
  public ControlInfo c()
  {
    return e;
  }
  
  public List<AdInfo> d()
  {
    return f;
  }
  
  public List<AdInfo> e()
  {
    if (h != null)
    {
      Iterator localIterator = f.iterator();
      AdInfo localAdInfo;
      while (localIterator.hasNext())
      {
        localAdInfo = (AdInfo)localIterator.next();
        h.add(localAdInfo);
      }
      localIterator = g.iterator();
      while (localIterator.hasNext())
      {
        localAdInfo = (AdInfo)localIterator.next();
        h.add(localAdInfo);
      }
    }
    return h;
  }
  
  public List<AdInfo> f()
  {
    return g;
  }
  
  public List<AdExtend> g()
  {
    return i;
  }
}
