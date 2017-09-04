package cn.domob.android.ads;

import android.text.TextUtils;
import android.util.Log;
import cn.domob.android.c.b;
import cn.domob.android.i.f;

class x
  extends g
{
  private static f J = new f(x.class.getSimpleName());
  
  public x(DomobAdView paramDomobAdView, String paramString1, String paramString2)
  {
    super(paramDomobAdView, paramString1, paramString2);
    J.b("Init Splash controller.");
  }
  
  private void a(final String paramString1, final c paramC, final String paramString2)
  {
    cn.domob.android.c.a.a(paramString1, "", "", a, new b()
    {
      public void a() {}
      
      public void a(int paramAnonymousInt, String paramAnonymousString) {}
      
      public void a(String paramAnonymousString) {}
      
      public void a(String paramAnonymousString, long paramAnonymousLong)
      {
        if (paramAnonymousLong > 0L)
        {
          if (paramC.c(a, paramString2))
          {
            paramC.a(a, paramString2, paramAnonymousString, System.currentTimeMillis());
            return;
          }
          paramC.b(a, paramString2, paramAnonymousString);
          return;
        }
        a(e, "sp_load_img_fail", paramString1);
      }
      
      public void b() {}
      
      public void b(String paramAnonymousString, long paramAnonymousLong) {}
    }, "", false, paramString2, -1);
  }
  
  public void a(j paramJ, int paramInt)
  {
    J.a("An ad response is received by splash controller.");
    if ((paramJ != null) && (((y)d).l())) {
      if (paramInt == -1)
      {
        J.a("There is a cached ad witch is about to be show.");
        super.a(paramJ, paramInt);
      }
    }
    for (;;)
    {
      c(false);
      return;
      if (paramJ.d() != null)
      {
        String str1 = paramJ.d().e();
        if (TextUtils.isEmpty(str1))
        {
          J.b("adResponse image_url is null !");
          return;
        }
        J.a("There is a new ad witch is about to be inserted into DB.");
        Object localObject = new K();
        String str2 = paramJ.d().a();
        ((K)localObject).b(str2);
        ((K)localObject).d(paramJ.d().c() + "*" + paramJ.d().d());
        ((K)localObject).c(paramJ.a());
        ((K)localObject).a(paramJ.d().A());
        ((K)localObject).b(System.currentTimeMillis());
        ((K)localObject).a(cn.domob.android.b.a.r(a));
        paramJ = new c();
        if (paramJ.a(a, (K)localObject))
        {
          localObject = cn.domob.android.c.a.b(str1);
          if ((!TextUtils.isEmpty((CharSequence)localObject)) && (!TextUtils.isEmpty(str2)) && (paramJ.d(a, str2, (String)localObject)) && (TextUtils.isEmpty(paramJ.d(x(), (String)localObject)))) {
            a(str1, paramJ, (String)localObject);
          }
        }
      }
      else if (paramJ.e() != null)
      {
        J.e("There is a error info response.");
        Log.e("DomobSDK", String.format("Response contains error info. Error code is [%d-%s] and error content is [%s]", new Object[] { Integer.valueOf(paramJ.e().a()), paramJ.b(), paramJ.e().b() }));
        continue;
        super.a(paramJ, paramInt);
      }
    }
  }
  
  protected void a(j paramJ, String paramString1, String paramString2)
  {
    J.b("Failed to splash.Report fail event type " + paramString1);
    w localW = new w(a, c);
    localW.getClass();
    w.c localC = new w.c(localW);
    h = paramString2;
    if ((paramJ != null) && (paramJ.d() != null))
    {
      paramString2 = paramJ.d().q();
      a = paramJ.d().r();
    }
    for (paramJ = paramString2;; paramJ = null)
    {
      if (paramJ != null)
      {
        paramString2 = paramJ;
        if (paramJ.length() != 0) {}
      }
      else
      {
        paramString2 = "http://e.domob.cn/event_report";
      }
      localW.a(paramString2, w.h.i, paramString1, localC, null);
      return;
    }
  }
  
  protected void b(j paramJ, String paramString)
  {
    a(paramJ, paramString, null);
  }
}
