package cn.domob.wall.core.c;

import android.content.Context;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.bean.a;
import cn.domob.wall.core.h.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class g
{
  private static d a = new d(g.class.getSimpleName());
  private static final String g = "ad";
  private static final String h = "error";
  private String b;
  private String c;
  private a d;
  private List<AdInfo> e;
  private List<AdInfo> f;
  
  public g() {}
  
  private List<AdInfo> a(long paramLong, String paramString1, JSONObject paramJSONObject, String paramString2)
  {
    paramJSONObject = paramJSONObject.optJSONArray(paramString1);
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject != null)
    {
      int i = 0;
      for (;;)
      {
        if (i < paramJSONObject.length()) {
          try
          {
            localArrayList.add(new AdInfo(paramLong, paramJSONObject.getJSONObject(i), paramString2, paramString1, null));
            i += 1;
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
    }
    return localArrayList;
  }
  
  private boolean b(Context paramContext, String paramString)
  {
    Object localObject;
    try
    {
      localObject = new JSONObject(new JSONTokener(paramString));
      b = ((JSONObject)localObject).optString("sid", "");
      c = ((JSONObject)localObject).optString("cid", "");
      if ((c != null) && (!c.equals(""))) {
        h.a().a(paramContext, c);
      }
      paramString = ((JSONObject)localObject).optJSONObject("ad");
      localObject = ((JSONObject)localObject).optJSONObject("error");
      if (localObject != null)
      {
        d = new a((JSONObject)localObject);
        break label314;
      }
      if (paramString == null) {
        break label306;
      }
      long l = h.a().a(paramContext);
      a.b("lasttime request：" + l);
      e = a(l, "searchad", paramString, b);
      f = a(l, "recommend", paramString, b);
      if (e != null)
      {
        paramString = e.iterator();
        while (paramString.hasNext())
        {
          localObject = (AdInfo)paramString.next();
          a.b("searchad::", ((AdInfo)localObject).toString());
        }
      }
      if (f == null) {
        break label296;
      }
    }
    catch (Exception paramContext)
    {
      a.a(paramContext);
      return false;
    }
    paramString = f.iterator();
    while (paramString.hasNext())
    {
      localObject = (AdInfo)paramString.next();
      a.b("searchad::", ((AdInfo)localObject).toString());
    }
    label296:
    h.a().b(paramContext);
    break label314;
    label306:
    a.e("There is no ad response or error response.");
    label314:
    return true;
  }
  
  g a(Context paramContext, String paramString)
  {
    g localG = new g();
    if (localG.b(paramContext, paramString))
    {
      a.a("Ad/Error response is ok.");
      return localG;
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
  
  public List<AdInfo> c()
  {
    return e;
  }
  
  public List<AdInfo> d()
  {
    return f;
  }
}
