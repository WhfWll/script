package cn.dbox.core.c;

import android.content.Context;
import cn.dbox.core.bean.a;
import cn.dbox.core.bean.c;
import cn.dbox.core.bean.d.a;
import cn.dbox.core.bean.g;
import cn.dbox.core.bean.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class e
{
  private static cn.dbox.core.h.d a = new cn.dbox.core.h.d(e.class.getSimpleName());
  private String b;
  private String c;
  private String d;
  private h e;
  private g f;
  private ArrayList<c> g;
  private ArrayList<a> h;
  private HashMap<String, a> i = new HashMap();
  private ArrayList<cn.dbox.core.bean.d> j = new ArrayList();
  private HashMap<String, cn.dbox.core.bean.d> k = new HashMap();
  
  public e() {}
  
  private boolean b(Context paramContext, String paramString)
  {
    int m;
    int n;
    try
    {
      Object localObject1 = new JSONObject(new JSONTokener(paramString));
      b = ((JSONObject)localObject1).optString("sid");
      c = ((JSONObject)localObject1).optString("cid");
      d = ((JSONObject)localObject1).optString("dmid");
      if ((c != null) && (!c.equals(""))) {
        f.a().a(paramContext, c);
      }
      paramString = ((JSONObject)localObject1).optJSONObject("error");
      JSONObject localJSONObject = ((JSONObject)localObject1).optJSONObject("control");
      if (paramString != null)
      {
        e = new h(paramString);
        break label443;
      }
      if (localJSONObject != null) {
        f = new g(localJSONObject);
      }
      paramString = ((JSONObject)localObject1).optJSONArray("channels");
      h = new ArrayList();
      localObject1 = ((JSONObject)localObject1).optJSONArray("ads");
      if (localObject1 != null)
      {
        m = 0;
        for (;;)
        {
          n = ((JSONArray)localObject1).length();
          if (m < n) {
            try
            {
              h.add(new a(((JSONArray)localObject1).getJSONObject(m)));
              m += 1;
            }
            catch (JSONException localJSONException2)
            {
              for (;;)
              {
                a.a(localJSONException2);
              }
            }
          }
        }
      }
      g = new ArrayList();
    }
    catch (Exception paramContext)
    {
      a.a(paramContext);
      return false;
    }
    if (paramString != null)
    {
      m = 0;
      for (;;)
      {
        n = paramString.length();
        if (m < n) {
          try
          {
            g.add(new c(paramString.getJSONObject(m)));
            m += 1;
          }
          catch (JSONException localJSONException1)
          {
            for (;;)
            {
              a.a(localJSONException1);
            }
          }
        }
      }
    }
    paramString = h.iterator();
    Object localObject2;
    while (paramString.hasNext())
    {
      localObject2 = (a)paramString.next();
      i.put(((a)localObject2).i(), localObject2);
    }
    paramString = g.iterator();
    while (paramString.hasNext())
    {
      localObject2 = ((c)paramString.next()).d().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        cn.dbox.core.bean.d localD = (cn.dbox.core.bean.d)((Iterator)localObject2).next();
        j.add(localD);
        k.put(localD.c(), localD);
      }
    }
    j();
    f.a().b(paramContext);
    label443:
    return true;
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
  
  public String b()
  {
    return c;
  }
  
  public String c()
  {
    return d;
  }
  
  public h d()
  {
    return e;
  }
  
  public g e()
  {
    return f;
  }
  
  public ArrayList<c> f()
  {
    return g;
  }
  
  public ArrayList<a> g()
  {
    return h;
  }
  
  public HashMap<String, a> h()
  {
    return i;
  }
  
  public HashMap<String, cn.dbox.core.bean.d> i()
  {
    return k;
  }
  
  public void j()
  {
    Iterator localIterator = j.iterator();
    while (localIterator.hasNext())
    {
      cn.dbox.core.bean.d localD = (cn.dbox.core.bean.d)localIterator.next();
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      ArrayList localArrayList3 = localD.i();
      ArrayList localArrayList4 = localD.k().b();
      int m = 0;
      int n;
      while (m < localArrayList3.size())
      {
        n = 0;
        while (n < h.size())
        {
          if ((((a)h.get(n)).i().equals(localArrayList3.get(m))) && (localArrayList1.size() < localD.h())) {
            localArrayList1.add(h.get(n));
          }
          n += 1;
        }
        m += 1;
      }
      if (localArrayList4 != null)
      {
        m = 0;
        while (m < localArrayList4.size())
        {
          n = 0;
          while (n < h.size())
          {
            if (((a)h.get(n)).i().equals(localArrayList4.get(m))) {
              localArrayList2.add(h.get(n));
            }
            n += 1;
          }
          m += 1;
        }
      }
      localD.a(localArrayList1);
      localD.k().a(localArrayList2);
    }
  }
}
