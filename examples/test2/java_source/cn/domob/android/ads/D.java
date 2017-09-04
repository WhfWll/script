package cn.domob.android.ads;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import cn.domob.android.ads.a.c;
import cn.domob.android.i.f;
import cn.domob.android.j.a.a;
import cn.domob.android.j.a.c;
import cn.domob.android.j.b;
import java.util.HashMap;

public class D
  extends c
  implements a.a, a.c
{
  private static f m = new f(D.class.getSimpleName());
  private HashMap<String, String[]> n;
  private int o;
  private int p;
  private String q;
  private String r;
  private HashMap<String, String> s;
  
  public D(Context paramContext, k paramK, j paramJ, g paramG)
  {
    super(paramContext, paramK, paramJ, paramG);
  }
  
  private void a(String paramString, long paramLong)
  {
    F.a().a(d, c(), s, paramString, paramLong, f);
  }
  
  private void w()
  {
    final j.c localC = c.d();
    n = c.d().G();
    Object localObject = a(a, c.d().j(), "cache");
    q = ((String)((HashMap)localObject).get("groupID"));
    r = ((String)((HashMap)localObject).get("resourceID"));
    localObject = a.a.a.a.a.a.a(a, q, r);
    if (localObject != null)
    {
      localObject = ((a.a.a.a.a.g)localObject).a();
      o = b.a();
      p = b.b();
      if (localObject != null)
      {
        g.post(new Runnable()
        {
          public void run()
          {
            new cn.domob.android.j.a(a, a, D.a(D.this), D.b(D.this), new b(localC.F()), D.this).a(F.a().a(D.c(D.this)), D.this);
          }
        });
        return;
      }
      a(DomobAdManager.ErrorCode.INTERNAL_ERROR, "resource local path is null.");
      return;
    }
    Log.w(f.b(), "Can not find video resources, if the current network status is wifi, resources in the download.");
    a(DomobAdManager.ErrorCode.INTERNAL_ERROR, "resource can not found.");
  }
  
  public void a()
  {
    w();
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if (f != null) {
      ((cn.domob.android.j.a)f).a(paramInt1, paramInt2);
    }
  }
  
  public void a(long paramLong)
  {
    F.a().a(a, paramLong, d, c, n, s);
  }
  
  public void a(cn.domob.android.j.a paramA)
  {
    f = paramA;
    g();
  }
  
  public void a(HashMap<String, String> paramHashMap, String paramString, long paramLong)
  {
    s = paramHashMap;
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      m();
      return;
    }
    a(DomobAdManager.ErrorCode.INTERNAL_ERROR, "");
  }
  
  public void b(long paramLong)
  {
    a("m", paramLong);
  }
  
  public void b(String paramString)
  {
    a(null, paramString, true);
  }
  
  public void c(long paramLong)
  {
    a("f", paramLong);
  }
  
  public void c(String paramString)
  {
    new w(a, null).a(paramString, "action button tracker url: " + paramString);
  }
  
  public void d()
  {
    if ((f != null) && ((f instanceof cn.domob.android.j.a))) {
      ((cn.domob.android.j.a)f).c();
    }
  }
  
  public void e()
  {
    if ((f != null) && ((f instanceof cn.domob.android.j.a))) {
      ((cn.domob.android.j.a)f).a(true);
    }
  }
  
  public void f() {}
  
  protected void j()
  {
    if (f != null) {
      ((cn.domob.android.j.a)f).d();
    }
    super.j();
  }
  
  protected void k()
  {
    if (f != null) {
      ((cn.domob.android.j.a)f).e();
    }
    super.k();
  }
  
  public void n()
  {
    a("s", 0L);
  }
  
  public void o()
  {
    d.a(c, "cached_reso_invalid", q, r);
  }
  
  public void p()
  {
    d.a(c, "detail_failed");
  }
  
  public void q()
  {
    d.a(c, "detail_success");
  }
}
