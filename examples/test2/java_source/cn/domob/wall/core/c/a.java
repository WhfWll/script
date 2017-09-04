package cn.domob.wall.core.c;

import android.content.Context;
import cn.domob.wall.core.DService;
import cn.domob.wall.core.h.d;
import cn.domob.wall.core.h.e;
import cn.domob.wall.core.h.f;
import java.util.HashMap;

public class a
{
  public static boolean a = false;
  private static d b = new d(a.class.getSimpleName());
  private static boolean c = false;
  private c d;
  private cn.domob.wall.core.b e;
  private Context f;
  
  public a(cn.domob.wall.core.b paramB)
  {
    e = paramB;
    f = paramB.g();
  }
  
  private String b()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("sdk", String.valueOf(30));
    localHashMap.put("rt", String.valueOf(1));
    localHashMap.put("ts", String.valueOf(System.currentTimeMillis()));
    localHashMap.put("ua", e.f(f));
    localHashMap.put("ipb", e.d());
    localHashMap.put("ppid", e.e());
    localHashMap.put("v", String.format("%s-%s-%s", new Object[] { "20140217", "android", "20131101" }));
    localHashMap.put("sv", "020100");
    return f.a(localHashMap);
  }
  
  public void a()
    throws cn.domob.wall.core.e.a
  {
    if (c) {
      throw new cn.domob.wall.core.e.a();
    }
    c = true;
    for (;;)
    {
      try
      {
        str = b();
        b.b("Config Request Params:" + str);
        if (!DService.getEndpoint().equals("online")) {
          continue;
        }
        d = new c(f, f.f(cn.domob.wall.core.b.a.i), "", null, "POST", str, 20000, null);
        d.c();
        str = d.e();
        b.b("config request response:" + str);
        if (str == null) {
          continue;
        }
        e.a(new b(str).a());
      }
      catch (Exception localException)
      {
        String str;
        b.a(localException);
        return;
        b.e("Config respStr is null.");
        continue;
      }
      finally
      {
        c = false;
      }
      c = false;
      return;
      d = new c(f, cn.domob.wall.core.b.a.m, "", null, "POST", str, 20000, null);
    }
  }
}
