package cn.dbox.core.c;

import android.content.Context;
import android.util.Log;
import cn.dbox.core.b.h;
import cn.dbox.core.bean.h;
import java.util.HashMap;

public class d
{
  private static cn.dbox.core.h.d a = new cn.dbox.core.h.d(d.class.getSimpleName());
  private static final int e = 2;
  private static final int f = 1;
  private static final int g = 2;
  private static final int h = 3;
  private static final int i = 4;
  private static final int j = 5;
  private c b;
  private cn.dbox.core.c c;
  private Context d;
  private a k;
  
  public d(cn.dbox.core.c paramC)
  {
    c = paramC;
    d = paramC.f();
  }
  
  private String a(int paramInt, HashMap<String, String> paramHashMap)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("cid", f.a().c(d));
    long l = f.a().a(d);
    if (l != 0L) {
      localHashMap.put("last_time_req", String.valueOf(l));
    }
    localHashMap.put("ratio", c.q());
    localHashMap.put("sdk", String.valueOf(31));
    localHashMap.put("rt", String.valueOf(paramInt));
    localHashMap.put("ts", String.valueOf(System.currentTimeMillis()));
    localHashMap.put("ua", cn.dbox.core.h.e.f(d));
    localHashMap.put("ipb", c.a());
    localHashMap.put("ppid", c.b());
    localHashMap.put("idv", cn.dbox.core.h.e.h(d));
    localHashMap.put("v", String.format("%s-%s-%s", new Object[] { "20140918", "android", "20140711" }));
    localHashMap.put("sv", "000900");
    localHashMap.put("l", cn.dbox.core.h.e.g());
    if (cn.dbox.core.h.f.a(c))
    {
      localHashMap.put("c", String.format("%s,%s,%s", new Object[] { "la", "iad", "aw" }));
      localHashMap.put("so", cn.dbox.core.h.e.q(d));
      localHashMap.put("sw", String.valueOf(cn.dbox.core.h.e.t(d)));
      localHashMap.put("sh", String.valueOf(cn.dbox.core.h.e.u(d)));
      localHashMap.put("sd", String.valueOf(cn.dbox.core.h.e.s(d)));
      localHashMap.put("pb[identifier]", cn.dbox.core.h.e.a(d));
      localHashMap.put("pb[name]", cn.dbox.core.h.e.d(d));
      localHashMap.put("pb[version]", cn.dbox.core.h.e.c(d));
      if (paramHashMap != null)
      {
        paramInt = paramHashMap.size();
        a.b("param size:" + paramInt);
        if (paramHashMap.containsKey("ids")) {
          localHashMap.put("ids", paramHashMap.get("ids"));
        }
        if (paramHashMap.containsKey("acid")) {
          localHashMap.put("acid", paramHashMap.get("acid"));
        }
        if (paramHashMap.containsKey("q")) {
          localHashMap.put("q", paramHashMap.get("q"));
        }
        if (paramHashMap.containsKey("details")) {
          localHashMap.put("details", paramHashMap.get("details"));
        }
      }
      localHashMap.put("network", cn.dbox.core.h.e.n(d));
      paramHashMap = cn.dbox.core.h.e.y(d);
      if (paramHashMap != null)
      {
        a.b("des encode dma:" + paramHashMap.toUpperCase() + "-->" + cn.dbox.core.h.f.a("d!j@d#g$r%s^j&h*", paramHashMap.toUpperCase()));
        if (!paramHashMap.equals("")) {
          break label1030;
        }
        localHashMap.put("dma", "");
      }
      label599:
      paramHashMap = cn.dbox.core.h.e.z(d);
      if (!paramHashMap.equals("")) {
        break label1051;
      }
      localHashMap.put("odin1", "");
      label629:
      paramHashMap = cn.dbox.core.h.e.x(d);
      if (paramHashMap == null) {
        break label1064;
      }
      localHashMap.put("d[coord_timestamp]", String.valueOf(cn.dbox.core.h.e.f()));
      localHashMap.put("d[coord]", paramHashMap);
      localHashMap.put("d[coord_acc]", String.valueOf(cn.dbox.core.h.e.d()));
      localHashMap.put("d[coord_accuracy]", String.valueOf(cn.dbox.core.h.e.h()));
    }
    for (;;)
    {
      paramHashMap = cn.dbox.core.h.e.E(d);
      a.b(String.format("Base info: cid=%s, lac=%s, mcc=%s, mnc=%s", new Object[] { paramHashMap[0], paramHashMap[1], paramHashMap[2], paramHashMap[3] }));
      localHashMap.put("cell", paramHashMap[0]);
      localHashMap.put("lac", paramHashMap[1]);
      localHashMap.put("mcc", paramHashMap[2]);
      localHashMap.put("mnc", paramHashMap[3]);
      paramHashMap = cn.dbox.core.h.e.B(d);
      if (paramHashMap != null)
      {
        a.b("des encode ama:" + paramHashMap.toUpperCase() + "-->" + cn.dbox.core.h.f.a("d!j@d#g$r%s^j&h*", paramHashMap.toUpperCase()));
        localHashMap.put("ama", cn.dbox.core.h.f.a("d!j@d#g$r%s^j&h*", paramHashMap.toUpperCase()));
      }
      paramHashMap = cn.dbox.core.h.e.C(d);
      if (paramHashMap != null)
      {
        a.b("des encode apSSID:" + paramHashMap.toUpperCase() + "-->" + cn.dbox.core.h.f.a("d!j@d#g$r%s^j&h*", paramHashMap));
        localHashMap.put("an", cn.dbox.core.h.f.a("d!j@d#g$r%s^j&h*", paramHashMap));
      }
      paramHashMap = cn.dbox.core.h.e.F(d);
      if (!cn.dbox.core.h.f.a(paramHashMap)) {
        localHashMap.put("aaid", paramHashMap);
      }
      a.b("ad request params:" + localHashMap.toString());
      return cn.dbox.core.h.f.a(localHashMap);
      localHashMap.put("c", String.format("%s,%s", new Object[] { "la", "iad" }));
      break;
      label1030:
      localHashMap.put("dma", cn.dbox.core.h.f.a("d!j@d#g$r%s^j&h*", paramHashMap.toUpperCase()));
      break label599;
      label1051:
      localHashMap.put("odin1", paramHashMap);
      break label629;
      label1064:
      localHashMap.put("d[coord_status]", String.valueOf(cn.dbox.core.h.e.e()));
    }
  }
  
  public b.h a(int paramInt)
  {
    b.h localH = b.h.a;
    switch (paramInt / 1000)
    {
    }
    for (;;)
    {
      return b.h.b;
      return b.h.b;
      return b.h.b;
      return b.h.c;
      return b.h.e;
      localH = b.h.b;
    }
  }
  
  public void a(a paramA, HashMap<String, String> paramHashMap)
  {
    a.b("Start to request ad.");
    k = paramA;
    try
    {
      paramA = a(2, paramHashMap);
      b = new c(d, c.i(), "", null, "POST", paramA, 20000, new c.a()
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
            if (paramAnonymousC.d() == null) {
              break label165;
            }
            str = paramAnonymousC.d().b();
            i = paramAnonymousC.d().a();
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
          d.b(d.this).a(b.h.b, "");
        }
      });
      b.b();
      return;
    }
    catch (Exception paramA)
    {
      a.e("Error happens when sending ad request");
      a.a(paramA);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(b.h paramH, String paramString);
    
    public abstract void a(e paramE);
  }
}
