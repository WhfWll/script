package cn.domob.wall.core.c;

import android.content.Context;
import android.util.Log;
import cn.domob.wall.core.DService;
import cn.domob.wall.core.DService.ErrorCode;
import cn.domob.wall.core.b;
import java.util.HashMap;

public class d
{
  private static cn.domob.wall.core.h.d a = new cn.domob.wall.core.h.d(d.class.getSimpleName());
  private static final int e = 2;
  private static final int f = 3;
  private static final int g = 4;
  private static final int h = 5;
  private static final int i = 1;
  private static final int j = 2;
  private static final int k = 3;
  private static final int l = 4;
  private static final int m = 5;
  private c b;
  private b c;
  private Context d;
  private a n;
  private d o;
  private e p;
  private b q;
  private c r;
  
  public d(b paramB)
  {
    c = paramB;
    d = paramB.g();
  }
  
  private String a(int paramInt, HashMap<String, String> paramHashMap)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("cid", h.a().c(d));
    localHashMap.put("sdk", String.valueOf(30));
    localHashMap.put("rt", String.valueOf(paramInt));
    localHashMap.put("ts", String.valueOf(System.currentTimeMillis()));
    localHashMap.put("ua", cn.domob.wall.core.h.e.f(d));
    localHashMap.put("ipb", c.d());
    localHashMap.put("ppid", c.e());
    localHashMap.put("idv", cn.domob.wall.core.h.e.h(d));
    localHashMap.put("v", String.format("%s-%s-%s", new Object[] { "20140217", "android", "20131101" }));
    localHashMap.put("sv", "020100");
    localHashMap.put("l", cn.domob.wall.core.h.e.g());
    localHashMap.put("c", String.format("%s,%s,%s", new Object[] { "ltx", "la", "iad" }));
    localHashMap.put("so", cn.domob.wall.core.h.e.q(d));
    localHashMap.put("sw", String.valueOf(cn.domob.wall.core.h.e.t(d)));
    localHashMap.put("sh", String.valueOf(cn.domob.wall.core.h.e.u(d)));
    localHashMap.put("sd", String.valueOf(cn.domob.wall.core.h.e.s(d)));
    localHashMap.put("pb[identifier]", cn.domob.wall.core.h.e.a(d));
    localHashMap.put("pb[name]", cn.domob.wall.core.h.e.d(d));
    localHashMap.put("pb[version]", cn.domob.wall.core.h.e.c(d));
    if (paramHashMap != null)
    {
      paramInt = paramHashMap.size();
      a.b("param size:" + paramInt);
      if (paramHashMap.containsKey("ids")) {
        localHashMap.put("ids", paramHashMap.get("ids"));
      }
      if (paramHashMap.containsKey("q")) {
        localHashMap.put("q", paramHashMap.get("q"));
      }
      if (paramHashMap.containsKey("details")) {
        localHashMap.put("details", paramHashMap.get("details"));
      }
    }
    localHashMap.put("network", cn.domob.wall.core.h.e.n(d));
    paramHashMap = cn.domob.wall.core.h.e.y(d);
    if (paramHashMap != null)
    {
      a.b("des encode dma:" + paramHashMap.toUpperCase() + "-->" + cn.domob.wall.core.h.f.a("d!j@d#g$r%s^j&h*", paramHashMap.toUpperCase()));
      if (paramHashMap.equals("")) {
        localHashMap.put("dma", "");
      }
    }
    else
    {
      paramHashMap = cn.domob.wall.core.h.e.z(d);
      if (!paramHashMap.equals("")) {
        break label912;
      }
      localHashMap.put("odin1", "");
      label528:
      paramHashMap = cn.domob.wall.core.h.e.x(d);
      if (paramHashMap == null) {
        break label924;
      }
      localHashMap.put("d[coord_timestamp]", String.valueOf(cn.domob.wall.core.h.e.f()));
      localHashMap.put("d[coord]", paramHashMap);
      localHashMap.put("d[coord_acc]", String.valueOf(cn.domob.wall.core.h.e.d()));
      localHashMap.put("d[coord_accuracy]", String.valueOf(cn.domob.wall.core.h.e.h()));
    }
    for (;;)
    {
      paramHashMap = cn.domob.wall.core.h.e.E(d);
      a.b(String.format("Base info: cid=%s, lac=%s, mcc=%s, mnc=%s", new Object[] { paramHashMap[0], paramHashMap[1], paramHashMap[2], paramHashMap[3] }));
      localHashMap.put("cell", paramHashMap[0]);
      localHashMap.put("lac", paramHashMap[1]);
      localHashMap.put("mcc", paramHashMap[2]);
      localHashMap.put("mnc", paramHashMap[3]);
      paramHashMap = cn.domob.wall.core.h.e.B(d);
      if (paramHashMap != null)
      {
        a.b("des encode ama:" + paramHashMap.toUpperCase() + "-->" + cn.domob.wall.core.h.f.a("d!j@d#g$r%s^j&h*", paramHashMap.toUpperCase()));
        localHashMap.put("ama", cn.domob.wall.core.h.f.a("d!j@d#g$r%s^j&h*", paramHashMap.toUpperCase()));
      }
      paramHashMap = cn.domob.wall.core.h.e.C(d);
      if (paramHashMap != null)
      {
        a.b("des encode apSSID:" + paramHashMap.toUpperCase() + "-->" + cn.domob.wall.core.h.f.a("d!j@d#g$r%s^j&h*", paramHashMap));
        localHashMap.put("an", cn.domob.wall.core.h.f.a("d!j@d#g$r%s^j&h*", paramHashMap));
      }
      paramHashMap = cn.domob.wall.core.h.e.F(d);
      if (!cn.domob.wall.core.h.f.a(paramHashMap)) {
        localHashMap.put("aaid", paramHashMap);
      }
      a.b("ad request params:" + localHashMap.toString());
      return cn.domob.wall.core.h.f.a(localHashMap);
      localHashMap.put("dma", cn.domob.wall.core.h.f.a("d!j@d#g$r%s^j&h*", paramHashMap.toUpperCase()));
      break;
      label912:
      localHashMap.put("odin1", paramHashMap);
      break label528;
      label924:
      localHashMap.put("d[coord_status]", String.valueOf(cn.domob.wall.core.h.e.e()));
    }
  }
  
  public DService.ErrorCode a(int paramInt)
  {
    DService.ErrorCode localErrorCode = DService.ErrorCode.NONE;
    switch (paramInt / 1000)
    {
    }
    for (;;)
    {
      return DService.ErrorCode.INTERNAL_ERROR;
      return DService.ErrorCode.INTERNAL_ERROR;
      return DService.ErrorCode.INTERNAL_ERROR;
      return DService.ErrorCode.INVALID_REQUEST;
      return DService.ErrorCode.NO_FILL;
      localErrorCode = DService.ErrorCode.INTERNAL_ERROR;
    }
  }
  
  public void a(a paramA, HashMap<String, String> paramHashMap)
  {
    a.b("Start to request ad.");
    n = paramA;
    try
    {
      paramHashMap = a(2, paramHashMap);
      if (DService.getEndpoint().equals("online")) {}
      for (paramA = cn.domob.wall.core.h.f.f(cn.domob.wall.core.b.a.i);; paramA = cn.domob.wall.core.b.a.m)
      {
        b = new c(d, paramA, "", null, "POST", paramHashMap, 20000, new c.a()
        {
          public void a(c paramAnonymousC)
          {
            String str = paramAnonymousC.e();
            paramAnonymousC = null;
            d.a().b("request ad response:" + str);
            if ((str != null) && (str.length() != 0))
            {
              paramAnonymousC = new e().a(d.a(d.this), str);
              if (paramAnonymousC == null) {
                break label189;
              }
              if (paramAnonymousC.b() == null) {
                break label165;
              }
              str = paramAnonymousC.b().b();
              i = paramAnonymousC.b().a();
              Log.e("error", String.format("Response contains error info. Error code is [%d-%s] and error content is [%s]", new Object[] { Integer.valueOf(i), paramAnonymousC.a(), str }));
              if (d.b(d.this) != null) {
                d.b(d.this).a(a(i), str);
              }
            }
            label165:
            label189:
            while (d.b(d.this) == null)
            {
              do
              {
                int i;
                return;
                d.a().e("Ad respStr is null.");
                break;
              } while (d.b(d.this) == null);
              d.b(d.this).a(paramAnonymousC);
              return;
            }
            d.b(d.this).a(DService.ErrorCode.INTERNAL_ERROR, "");
          }
        });
        b.b();
        return;
      }
      return;
    }
    catch (Exception paramA)
    {
      a.e("Error happens when sending ad request");
      a.a(paramA);
    }
  }
  
  public void a(b paramB, HashMap<String, String> paramHashMap)
  {
    a.b("Start to request ad.");
    q = paramB;
    try
    {
      paramHashMap = a(4, paramHashMap);
      if (DService.getEndpoint().equals("online")) {}
      for (paramB = cn.domob.wall.core.h.f.f(cn.domob.wall.core.b.a.i);; paramB = cn.domob.wall.core.b.a.m)
      {
        b = new c(d, paramB, "", null, "POST", paramHashMap, 20000, new c.a()
        {
          public void a(c paramAnonymousC)
          {
            String str = paramAnonymousC.e();
            paramAnonymousC = null;
            d.a().b("request ad response:" + str);
            if ((str != null) && (str.length() != 0))
            {
              paramAnonymousC = new e().a(d.a(d.this), str);
              if (paramAnonymousC == null) {
                break label189;
              }
              if (paramAnonymousC.b() == null) {
                break label165;
              }
              str = paramAnonymousC.b().b();
              i = paramAnonymousC.b().a();
              Log.e("error", String.format("Response contains error info. Error code is [%d-%s] and error content is [%s]", new Object[] { Integer.valueOf(i), paramAnonymousC.a(), str }));
              if (d.e(d.this) != null) {
                d.e(d.this).a(a(i), str);
              }
            }
            label165:
            label189:
            while (d.e(d.this) == null)
            {
              do
              {
                int i;
                return;
                d.a().e("Ad respStr is null.");
                break;
              } while (d.e(d.this) == null);
              d.e(d.this).a(paramAnonymousC);
              return;
            }
            d.e(d.this).a(DService.ErrorCode.INTERNAL_ERROR, "");
          }
        });
        b.b();
        return;
      }
      return;
    }
    catch (Exception paramB)
    {
      a.e("Error happens when sending ad request");
      a.a(paramB);
    }
  }
  
  public void a(c paramC, HashMap<String, String> paramHashMap)
  {
    a.b("Start to request ad.");
    r = paramC;
    try
    {
      paramHashMap = a(5, paramHashMap);
      if (DService.getEndpoint().equals("online")) {}
      for (paramC = cn.domob.wall.core.h.f.f(cn.domob.wall.core.b.a.i);; paramC = cn.domob.wall.core.b.a.m)
      {
        b = new c(d, paramC, "", null, "POST", paramHashMap, 20000, new c.a()
        {
          public void a(c paramAnonymousC)
          {
            String str = paramAnonymousC.e();
            paramAnonymousC = null;
            d.a().b("request ad response:" + str);
            if ((str != null) && (str.length() != 0))
            {
              paramAnonymousC = new f().a(d.a(d.this), str);
              if (paramAnonymousC == null) {
                break label189;
              }
              if (paramAnonymousC.b() == null) {
                break label165;
              }
              str = paramAnonymousC.b().b();
              i = paramAnonymousC.b().a();
              Log.e("error", String.format("Response contains error info. Error code is [%d-%s] and error content is [%s]", new Object[] { Integer.valueOf(i), paramAnonymousC.a(), str }));
              if (d.f(d.this) != null) {
                d.f(d.this).a(a(i), str);
              }
            }
            label165:
            label189:
            while (d.f(d.this) == null)
            {
              do
              {
                int i;
                return;
                d.a().e("Ad respStr is null.");
                break;
              } while (d.f(d.this) == null);
              d.f(d.this).a(paramAnonymousC);
              return;
            }
            d.f(d.this).a(DService.ErrorCode.INTERNAL_ERROR, "");
          }
        });
        b.b();
        return;
      }
      return;
    }
    catch (Exception paramC)
    {
      a.e("Error happens when sending ad request");
      a.a(paramC);
    }
  }
  
  public void a(d paramD, HashMap<String, String> paramHashMap)
  {
    a.b("Start to request ad.");
    o = paramD;
    try
    {
      paramHashMap = a(2, paramHashMap);
      if (DService.getEndpoint().equals("online")) {}
      for (paramD = cn.domob.wall.core.h.f.f(cn.domob.wall.core.b.a.i);; paramD = cn.domob.wall.core.b.a.m)
      {
        b = new c(d, paramD, "", null, "POST", paramHashMap, 20000, new c.a()
        {
          public void a(c paramAnonymousC)
          {
            String str = paramAnonymousC.e();
            paramAnonymousC = null;
            d.a().b("request ad response:" + str);
            if ((str != null) && (str.length() != 0))
            {
              paramAnonymousC = new e().a(d.a(d.this), str);
              if (paramAnonymousC == null) {
                break label189;
              }
              if (paramAnonymousC.b() == null) {
                break label165;
              }
              str = paramAnonymousC.b().b();
              i = paramAnonymousC.b().a();
              Log.e("error", String.format("Response contains error info. Error code is [%d-%s] and error content is [%s]", new Object[] { Integer.valueOf(i), paramAnonymousC.a(), str }));
              if (d.c(d.this) != null) {
                d.c(d.this).a(a(i), str);
              }
            }
            label165:
            label189:
            while (d.c(d.this) == null)
            {
              do
              {
                int i;
                return;
                d.a().e("Ad respStr is null.");
                break;
              } while (d.c(d.this) == null);
              d.c(d.this).a(paramAnonymousC);
              return;
            }
            d.c(d.this).a(DService.ErrorCode.INTERNAL_ERROR, "");
          }
        });
        b.b();
        return;
      }
      return;
    }
    catch (Exception paramD)
    {
      a.e("Error happens when sending ad request");
      a.a(paramD);
    }
  }
  
  public void a(e paramE, HashMap<String, String> paramHashMap)
  {
    a.b("Start to request ad.");
    p = paramE;
    try
    {
      paramHashMap = a(3, paramHashMap);
      if (DService.getEndpoint().equals("online")) {}
      for (paramE = cn.domob.wall.core.h.f.f(cn.domob.wall.core.b.a.i);; paramE = cn.domob.wall.core.b.a.m)
      {
        b = new c(d, paramE, "", null, "POST", paramHashMap, 20000, new c.a()
        {
          public void a(c paramAnonymousC)
          {
            String str = paramAnonymousC.e();
            paramAnonymousC = null;
            d.a().b("request ad response:" + str);
            if ((str != null) && (str.length() != 0))
            {
              paramAnonymousC = new g().a(d.a(d.this), str);
              if (paramAnonymousC == null) {
                break label189;
              }
              if (paramAnonymousC.b() == null) {
                break label165;
              }
              str = paramAnonymousC.b().b();
              i = paramAnonymousC.b().a();
              Log.e("error", String.format("Response contains error info. Error code is [%d-%s] and error content is [%s]", new Object[] { Integer.valueOf(i), paramAnonymousC.a(), str }));
              if (d.d(d.this) != null) {
                d.d(d.this).a(a(i), str);
              }
            }
            label165:
            label189:
            while (d.d(d.this) == null)
            {
              do
              {
                int i;
                return;
                d.a().e("Ad respStr is null.");
                break;
              } while (d.d(d.this) == null);
              d.d(d.this).a(paramAnonymousC);
              return;
            }
            d.d(d.this).a(DService.ErrorCode.INTERNAL_ERROR, "");
          }
        });
        b.b();
        return;
      }
      return;
    }
    catch (Exception paramE)
    {
      a.e("Error happens when sending ad request");
      a.a(paramE);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(DService.ErrorCode paramErrorCode, String paramString);
    
    public abstract void a(e paramE);
  }
  
  public static abstract interface b
  {
    public abstract void a(DService.ErrorCode paramErrorCode, String paramString);
    
    public abstract void a(e paramE);
  }
  
  public static abstract interface c
  {
    public abstract void a(DService.ErrorCode paramErrorCode, String paramString);
    
    public abstract void a(f paramF);
  }
  
  public static abstract interface d
  {
    public abstract void a(DService.ErrorCode paramErrorCode, String paramString);
    
    public abstract void a(e paramE);
  }
  
  public static abstract interface e
  {
    public abstract void a(DService.ErrorCode paramErrorCode, String paramString);
    
    public abstract void a(g paramG);
  }
}
