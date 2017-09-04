package cn.domob.wall.core;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import cn.domob.wall.core.bean.AdExtend;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.bean.ControlInfo;
import cn.domob.wall.core.c.d.a;
import cn.domob.wall.core.c.d.b;
import cn.domob.wall.core.c.d.c;
import cn.domob.wall.core.c.d.d;
import cn.domob.wall.core.c.d.e;
import cn.domob.wall.core.c.e;
import cn.domob.wall.core.c.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class b
{
  private static cn.domob.wall.core.h.d a = new cn.domob.wall.core.h.d(b.class.getSimpleName());
  private static final String r = "details";
  private static final String s = "0";
  private static final String t = "1";
  private static final String u = "q";
  private static final String v = "ids";
  private Context b;
  private DService.ReceiveDataListener c;
  private DService.ReceiveListDataListener d;
  private DService.ReceiveSearchDataListener e;
  private DService.ReceiveDetailsDataListener f;
  private DService.ReceiveHotSearchDataListener g;
  private boolean h = false;
  private boolean i = false;
  private boolean j = false;
  private boolean k = false;
  private boolean l = false;
  private String m = null;
  private String n = null;
  private String o = null;
  private boolean p = false;
  private ExecutorService q;
  private AdExtend w;
  private cn.domob.wall.core.d.d x;
  
  b(Context paramContext, String paramString1, String paramString2)
  {
    b = paramContext;
    n = paramString2;
    m = paramString1;
    q = Executors.newSingleThreadExecutor();
  }
  
  private boolean k()
  {
    if (!p)
    {
      if ((cn.domob.wall.core.h.f.g(m)) || (cn.domob.wall.core.h.f.g(n))) {
        break label54;
      }
      if (cn.domob.wall.core.h.f.a(b)) {
        p = true;
      }
    }
    else
    {
      return true;
    }
    Log.w("DrwSDK", "Permission denied.");
    for (;;)
    {
      return false;
      label54:
      Log.w("DrwSDK", "Please set your publisherID and placementID first.");
    }
  }
  
  public View a(Context paramContext)
  {
    if (x == null) {
      x = new cn.domob.wall.core.d.d(this, paramContext, w);
    }
    return x;
  }
  
  public void a()
  {
    if (!k()) {
      return;
    }
    if (h)
    {
      a.d("requestDataAsynting....");
      return;
    }
    h = true;
    new Thread()
    {
      public void run()
      {
        try
        {
          if (!cn.domob.wall.core.c.a.a) {
            new cn.domob.wall.core.c.a(b.this).a();
          }
          HashMap localHashMap = new HashMap();
          localHashMap.put("details", "0");
          new cn.domob.wall.core.c.d(b.this).a(new d.a()
          {
            public void a(DService.ErrorCode paramAnonymous2ErrorCode, String paramAnonymous2String)
            {
              b.a(b.this, false);
              if (b.a(b.this) != null) {
                b.a(b.this).onFailReceiveData(paramAnonymous2ErrorCode, paramAnonymous2String);
              }
            }
            
            public void a(e paramAnonymous2E)
            {
              b.a(b.this, false);
              if (paramAnonymous2E != null)
              {
                if (b.a(b.this) != null)
                {
                  a(paramAnonymous2E.g());
                  b.a(b.this, paramAnonymous2E.a());
                  b.a(b.this).onSuccessReceiveData(paramAnonymous2E.f(), paramAnonymous2E.d(), paramAnonymous2E.c(), paramAnonymous2E.g());
                }
                Iterator localIterator;
                AdInfo localAdInfo;
                if (paramAnonymous2E.f() != null)
                {
                  localIterator = paramAnonymous2E.f().iterator();
                  while (localIterator.hasNext())
                  {
                    localAdInfo = (AdInfo)localIterator.next();
                    b.j().b("BannerList:" + localAdInfo.toString());
                  }
                }
                if (paramAnonymous2E.d() != null)
                {
                  localIterator = paramAnonymous2E.d().iterator();
                  while (localIterator.hasNext())
                  {
                    localAdInfo = (AdInfo)localIterator.next();
                    b.j().b("AdItemList:" + localAdInfo.toString());
                  }
                }
                if (paramAnonymous2E.c() != null) {
                  b.j().b("ControlInfo:" + paramAnonymous2E.c().toString());
                }
              }
            }
          }, localHashMap);
          return;
        }
        catch (cn.domob.wall.core.e.a localA)
        {
          b.j().d("Config request is ongoing, Thread will sleep 1 seconds, and then restart to request");
          return;
        }
        catch (Exception localException)
        {
          b.j().a(localException);
          b.a(b.this, false);
        }
      }
    }.start();
  }
  
  public void a(DService.ReceiveDataListener paramReceiveDataListener)
  {
    c = paramReceiveDataListener;
  }
  
  public void a(DService.ReceiveDetailsDataListener paramReceiveDetailsDataListener)
  {
    f = paramReceiveDetailsDataListener;
  }
  
  public void a(DService.ReceiveHotSearchDataListener paramReceiveHotSearchDataListener)
  {
    g = paramReceiveHotSearchDataListener;
  }
  
  public void a(DService.ReceiveListDataListener paramReceiveListDataListener)
  {
    d = paramReceiveListDataListener;
  }
  
  public void a(DService.ReceiveSearchDataListener paramReceiveSearchDataListener)
  {
    e = paramReceiveSearchDataListener;
  }
  
  public void a(final String paramString)
  {
    if (!k()) {
      return;
    }
    if (j)
    {
      a.d("requestSearchDataAsyning....");
      return;
    }
    j = true;
    new Thread()
    {
      public void run()
      {
        try
        {
          if (!cn.domob.wall.core.c.a.a) {
            new cn.domob.wall.core.c.a(b.this).a();
          }
          HashMap localHashMap = new HashMap();
          localHashMap.put("q", paramString);
          new cn.domob.wall.core.c.d(b.this).a(new d.e()
          {
            public void a(DService.ErrorCode paramAnonymous2ErrorCode, String paramAnonymous2String)
            {
              b.c(b.this, false);
              if (b.c(b.this) != null) {
                b.c(b.this).onFailReceiveData(paramAnonymous2ErrorCode, paramAnonymous2String);
              }
            }
            
            public void a(g paramAnonymous2G)
            {
              b.c(b.this, false);
              if (paramAnonymous2G != null)
              {
                if (b.c(b.this) != null)
                {
                  b.c(b.this).onSuccessReceiveData(paramAnonymous2G.c(), paramAnonymous2G.d());
                  b.a(b.this, paramAnonymous2G.a());
                }
                if (paramAnonymous2G.c() != null)
                {
                  int i = 0;
                  while (i < paramAnonymous2G.c().size())
                  {
                    b.j().b("searchad::", ((AdInfo)paramAnonymous2G.c().get(i)).toString());
                    i += 1;
                  }
                }
              }
            }
          }, localHashMap);
          return;
        }
        catch (cn.domob.wall.core.e.a localA)
        {
          b.j().d("Config request is ongoing, Thread will sleep 1 seconds, and then restart to request");
          return;
        }
        catch (Exception localException)
        {
          b.j().a(localException);
          b.c(b.this, false);
        }
      }
    }.start();
  }
  
  public void a(List<AdExtend> paramList)
  {
    w = null;
    x = null;
    if ((paramList != null) && (paramList.size() >= 1) && (paramList.get(0) != null))
    {
      w = ((AdExtend)paramList.get(0));
      a.b("eWallInfo:" + ((AdExtend)paramList.get(0)).toString());
      if (w.ismPreload()) {
        ((Activity)b).runOnUiThread(new Runnable()
        {
          public void run()
          {
            b.a(b.this, new cn.domob.wall.core.d.d(b.this, b.f(b.this), b.g(b.this)));
          }
        });
      }
    }
  }
  
  public void b()
  {
    if (!k()) {
      return;
    }
    if (i)
    {
      a.d("requestListsDataAsynting....");
      return;
    }
    i = true;
    new Thread()
    {
      public void run()
      {
        try
        {
          if (!cn.domob.wall.core.c.a.a) {
            new cn.domob.wall.core.c.a(b.this).a();
          }
          HashMap localHashMap = new HashMap();
          localHashMap.put("details", "1");
          new cn.domob.wall.core.c.d(b.this).a(new d.d()
          {
            public void a(DService.ErrorCode paramAnonymous2ErrorCode, String paramAnonymous2String)
            {
              b.b(b.this, false);
              if (b.b(b.this) != null) {
                b.b(b.this).onFailReceiveData(paramAnonymous2ErrorCode, paramAnonymous2String);
              }
            }
            
            public void a(e paramAnonymous2E)
            {
              b.b(b.this, false);
              if (paramAnonymous2E != null)
              {
                Iterator localIterator;
                AdInfo localAdInfo;
                if (paramAnonymous2E.f() != null)
                {
                  localIterator = paramAnonymous2E.f().iterator();
                  while (localIterator.hasNext())
                  {
                    localAdInfo = (AdInfo)localIterator.next();
                    b.j().b("banner:" + localAdInfo.toString());
                  }
                }
                if (paramAnonymous2E.d() != null)
                {
                  localIterator = paramAnonymous2E.d().iterator();
                  while (localIterator.hasNext())
                  {
                    localAdInfo = (AdInfo)localIterator.next();
                    b.j().b("itemlist:" + localAdInfo.toString());
                  }
                }
                if (paramAnonymous2E.c() != null) {
                  b.j().b("Control:" + paramAnonymous2E.c().toString());
                }
                if (b.b(b.this) != null)
                {
                  a(paramAnonymous2E.g());
                  b.a(b.this, paramAnonymous2E.a());
                  b.b(b.this).onSuccessReceiveData(paramAnonymous2E.f(), paramAnonymous2E.d(), paramAnonymous2E.c(), paramAnonymous2E.g());
                }
              }
            }
          }, localHashMap);
          return;
        }
        catch (cn.domob.wall.core.e.a localA)
        {
          b.j().d("Config request is ongoing, Thread will sleep 1 seconds, and then restart to request");
          return;
        }
        catch (Exception localException)
        {
          b.j().a(localException);
          b.b(b.this, false);
        }
      }
    }.start();
  }
  
  public void b(final String paramString)
  {
    if (!k()) {
      return;
    }
    if (k)
    {
      a.d("requestDetailsDataAsyning....");
      return;
    }
    k = true;
    new Thread()
    {
      public void run()
      {
        try
        {
          if (!cn.domob.wall.core.c.a.a) {
            new cn.domob.wall.core.c.a(b.this).a();
          }
          HashMap localHashMap = new HashMap();
          localHashMap.put("ids", paramString);
          new cn.domob.wall.core.c.d(b.this).a(new d.b()
          {
            public void a(DService.ErrorCode paramAnonymous2ErrorCode, String paramAnonymous2String)
            {
              b.d(b.this, false);
              if (b.d(b.this) != null) {
                b.d(b.this).onFailReceiveData(paramAnonymous2ErrorCode, paramAnonymous2String);
              }
            }
            
            public void a(e paramAnonymous2E)
            {
              int j = 0;
              b.d(b.this, false);
              if (paramAnonymous2E != null)
              {
                if (b.d(b.this) != null)
                {
                  b.d(b.this).onSuccessReceiveData(paramAnonymous2E.e());
                  b.a(b.this, paramAnonymous2E.a());
                }
                ArrayList localArrayList = new ArrayList();
                if (localArrayList != null)
                {
                  if (paramAnonymous2E.d() != null)
                  {
                    Iterator localIterator = paramAnonymous2E.d().iterator();
                    while (localIterator.hasNext()) {
                      localArrayList.add((AdInfo)localIterator.next());
                    }
                  }
                  int i = j;
                  if (paramAnonymous2E.f() != null)
                  {
                    paramAnonymous2E = paramAnonymous2E.f().iterator();
                    for (;;)
                    {
                      i = j;
                      if (!paramAnonymous2E.hasNext()) {
                        break;
                      }
                      localArrayList.add((AdInfo)paramAnonymous2E.next());
                    }
                  }
                  while (i < localArrayList.size())
                  {
                    b.j().b("details:" + ((AdInfo)localArrayList.get(i)).toString());
                    i += 1;
                  }
                }
              }
            }
          }, localHashMap);
          return;
        }
        catch (cn.domob.wall.core.e.a localA)
        {
          b.j().d("Config request is ongoing, Thread will sleep 1 seconds, and then restart to request");
          return;
        }
        catch (Exception localException)
        {
          b.j().a(localException);
          b.d(b.this, false);
        }
      }
    }.start();
  }
  
  public void c()
  {
    if (!k()) {
      return;
    }
    if (l)
    {
      a.d("requestHotStringDataAsyning....");
      return;
    }
    l = true;
    new Thread()
    {
      public void run()
      {
        try
        {
          if (!cn.domob.wall.core.c.a.a) {
            new cn.domob.wall.core.c.a(b.this).a();
          }
          new cn.domob.wall.core.c.d(b.this).a(new d.c()
          {
            public void a(DService.ErrorCode paramAnonymous2ErrorCode, String paramAnonymous2String)
            {
              b.e(b.this, false);
              if (b.e(b.this) != null) {
                b.e(b.this).onFailReceiveData(paramAnonymous2ErrorCode, paramAnonymous2String);
              }
            }
            
            public void a(cn.domob.wall.core.c.f paramAnonymous2F)
            {
              b.e(b.this, false);
              if (paramAnonymous2F != null)
              {
                if (b.e(b.this) != null) {
                  b.e(b.this).onSuccessReceiveData(paramAnonymous2F.c());
                }
                if (paramAnonymous2F.c() != null)
                {
                  int i = 0;
                  while (i < paramAnonymous2F.c().size())
                  {
                    b.j().b("hotword:" + (String)paramAnonymous2F.c().get(i));
                    i += 1;
                  }
                }
              }
            }
          }, null);
          return;
        }
        catch (cn.domob.wall.core.e.a localA)
        {
          b.j().d("Config request is ongoing, Thread will sleep 1 seconds, and then restart to request");
          return;
        }
        catch (Exception localException)
        {
          b.j().a(localException);
          b.e(b.this, false);
        }
      }
    }.start();
  }
  
  public String d()
  {
    return m;
  }
  
  public String e()
  {
    return n;
  }
  
  public String f()
  {
    return o;
  }
  
  public Context g()
  {
    return b;
  }
  
  public ExecutorService h()
  {
    return q;
  }
  
  public AdExtend i()
  {
    return w;
  }
}
