package cn.domob.android.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import cn.domob.android.ads.a.c;
import cn.domob.android.i.f;
import cn.domob.android.i.h;
import cn.domob.android.j.a.a;
import cn.domob.android.j.a.b;
import cn.domob.android.j.a.c;
import cn.domob.android.j.b;
import java.util.HashMap;

public class E
  implements a.a, a.b, a.c
{
  private static f a = new f(E.class.getSimpleName());
  private HashMap<String, String[]> b;
  private int c;
  private int d;
  private String e;
  private String f;
  private String g;
  private cn.domob.android.j.a h;
  private Context i;
  private j j;
  private g k;
  private c l;
  private b m = null;
  private boolean n = false;
  private boolean o = false;
  private Handler p = new Handler(Looper.getMainLooper());
  
  public E(c paramC, String paramString)
  {
    l = paramC;
    k = d;
    i = a;
    j = c;
    g = paramString;
  }
  
  private void c()
  {
    if ((m != null) && (!o))
    {
      o = true;
      String str = m.c();
      if (!h.e(str)) {
        l.a(null, str, true);
      }
    }
  }
  
  public void a()
  {
    m = new b(j.d().F());
    b = j.d().G();
    if ((g == null) || (g.length() == 0))
    {
      a.e("action url is null.");
      c();
      return;
    }
    Object localObject = Uri.parse(g);
    String str1 = ((Uri)localObject).getScheme();
    String str2 = ((Uri)localObject).getHost();
    if ((str1 != null) && ("domob".equals(str1)) && (str2 != null) && ("video".equals(str2)))
    {
      localObject = ((Uri)localObject).getQueryParameter("url");
      localObject = l.a(i, (String)localObject, "cache");
      e = ((String)((HashMap)localObject).get("groupID"));
      f = ((String)((HashMap)localObject).get("resourceID"));
      localObject = a.a.a.a.a.a.a(i, e, f);
      if (localObject != null)
      {
        localObject = ((a.a.a.a.a.g)localObject).a();
        c = 320;
        d = 240;
        if (localObject != null)
        {
          p.post(new Runnable()
          {
            public void run()
            {
              cn.domob.android.j.a localA = new cn.domob.android.j.a(E.a(E.this), a, E.b(E.this), E.c(E.this), E.d(E.this), E.this);
              localA.a(F.a().a(E.e(E.this)), E.this);
              localA.a(E.this);
            }
          });
          return;
        }
        c();
        a.e("resource local path is null.");
        return;
      }
      c();
      a.e("can not find video source");
      return;
    }
    c();
  }
  
  public void a(long paramLong)
  {
    F.a().a(i, paramLong, k, j, b, null);
  }
  
  public void a(cn.domob.android.j.a paramA)
  {
    h = paramA;
    if (h != null)
    {
      h.c();
      h.f();
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (!n) {
      c();
    }
  }
  
  public void b()
  {
    if (h != null) {
      h.g();
    }
  }
  
  public void b(long paramLong) {}
  
  public void b(String paramString)
  {
    if (!h.e(paramString))
    {
      n = true;
      if ((!o) || (h.e(m.c()))) {
        break label72;
      }
      if (!paramString.equals(m.c())) {
        l.a(null, paramString, true);
      }
    }
    for (;;)
    {
      if (h != null) {
        h.g();
      }
      return;
      label72:
      l.a(null, paramString, true);
    }
  }
  
  public void c(long paramLong)
  {
    l.k();
  }
  
  public void c(String paramString)
  {
    new w(i, null).a(paramString, "action button tracker url: " + paramString);
  }
  
  public void n()
  {
    l.j();
  }
  
  public void o()
  {
    c();
    k.a(j, "cached_reso_invalid", e, f);
  }
  
  public void p() {}
  
  public void q() {}
}
