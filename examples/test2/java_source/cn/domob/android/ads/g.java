package cn.domob.android.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import cn.domob.android.i.c;
import cn.domob.android.i.f;
import java.util.Date;
import java.util.HashMap;

public class g
  implements C.a, J.a, e.a, i.a
{
  protected static final String A = "visit";
  protected static final String B = "url";
  protected static final String C = "phase";
  protected static final String D = "wtai://wp/mc;";
  protected static final int E = 1;
  protected static final int F = 2;
  protected static final int G = 3;
  protected static final int H = 4;
  protected static final int I = 5;
  private static f J = new f(g.class.getSimpleName());
  protected static final String o = "domob";
  protected static final String p = "mraid";
  protected static final String q = "inapp";
  protected static final String r = "download";
  protected static final String s = "report";
  protected static final String t = "launch";
  protected static final String u = "custom";
  protected static final String v = "expand";
  protected static final String w = "close";
  protected static final String x = "clk";
  protected static final String y = "imp";
  protected static final String z = "event";
  private String K = null;
  private String L = null;
  private String M;
  private String N = null;
  private String O = null;
  private String P = null;
  private String Q = "";
  private String R = "";
  private boolean S = false;
  private boolean T = true;
  private boolean U = true;
  private boolean V = false;
  private int W;
  private Handler X = new Handler(Looper.getMainLooper());
  private long Y = 0L;
  private long Z = 0L;
  protected Context a;
  private l aa;
  private int ab = 0;
  protected Context b;
  protected String c = null;
  protected DomobAdView d = null;
  protected j e = null;
  protected b f = new b();
  protected n g;
  protected cn.domob.android.h.a h;
  protected boolean i = false;
  protected boolean j = false;
  protected boolean k = false;
  protected a l = a.a;
  protected c m = c.c;
  protected d n = d.c;
  
  public g(DomobAdView paramDomobAdView, String paramString1, String paramString2)
  {
    J.a("Init DomobAdController.");
    Log.i(f.b(), "Current SDK version is " + cn.domob.android.ads.c.e.a() + " built at " + cn.domob.android.ads.c.e.b());
    if (paramDomobAdView != null)
    {
      d = paramDomobAdView;
      a = paramDomobAdView.b();
      b = a;
    }
    K = paramString1;
    c = paramString2;
    if (paramString1 == null) {
      K = h.a().a(a);
    }
    h.a().b(K);
    Log.i(f.b(), "Current placementID is " + c);
    J();
    K();
    e.a(a, this);
    aa = new l(this, paramDomobAdView);
    h = new cn.domob.android.h.a(a, c);
  }
  
  public g(String paramString)
  {
    J.a("Init DomobAdController.");
    K = paramString;
    if (paramString == null) {
      K = h.a().a(a);
    }
    h.a().b(K);
  }
  
  private void J()
  {
    if (!h.a().e())
    {
      Object localObject = new cn.domob.android.ads.c.a(a, "domob_config");
      String str = ((cn.domob.android.ads.c.a)localObject).a("version", "1");
      localObject = ((cn.domob.android.ads.c.a)localObject).a("config", "{\"com.admogo.AdMogoLayout\":\"1\",\"com.guohead.sdk.GHView\":\"2\",\"com.adview.AdViewLayout\":\"3\",\"appfactory.cn.adplatform.AdSageLayout\":\"4\"}");
      h.a().a(str, (String)localObject);
    }
  }
  
  private void K()
  {
    cn.domob.android.ads.c.a localA = new cn.domob.android.ads.c.a(a, "domob_config");
    h.a().c(localA.a("cookie_id", null));
    h.a().a(localA.a("disable", false), localA.a("timestamp", 0L), localA.a("time", 0));
    W = localA.a("interval", 20000);
  }
  
  private void L()
  {
    HashMap localHashMap = new HashMap();
    String str1 = e.c();
    if (str1 != null)
    {
      localHashMap.put("cookie_id", str1);
      h.a().c(str1);
    }
    int i1;
    if (e.f() != null) {
      if (e.f().d())
      {
        i1 = e.f().a() * 1000;
        if (i1 > 0) {
          break label344;
        }
        W = 0;
      }
    }
    for (;;)
    {
      localHashMap.put("interval", Integer.valueOf(W));
      boolean bool = e.f().b();
      long l1 = System.currentTimeMillis();
      i1 = e.f().c();
      localHashMap.put("timestamp", Long.valueOf(l1));
      localHashMap.put("disable", Boolean.valueOf(bool));
      localHashMap.put("time", Integer.valueOf(i1));
      J.a(this, "disable time stamp:" + l1);
      J.a(this, "disable time:" + i1);
      h.a().a(bool, l1, i1);
      str1 = e.f().e();
      String str2 = e.f().f();
      if (h.a().e(str1))
      {
        localHashMap.put("version", e.f().e());
        localHashMap.put("config", e.f().f());
        h.a().a(str1, str2);
      }
      if (!localHashMap.isEmpty()) {
        new cn.domob.android.ads.c.a(a, "domob_config").a(localHashMap);
      }
      return;
      label344:
      if ((i1 > 0) && (i1 < 5000)) {
        W = 5000;
      } else if (i1 >= 5000) {
        W = i1;
      }
    }
  }
  
  private void M()
  {
    String str = e.d().C();
    if (cn.domob.android.b.a.a(a, str)) {
      h.a().d(e.d().a());
    }
  }
  
  private boolean N()
  {
    return (o() == DomobAdView.a.d.ordinal()) || (o() == DomobAdView.a.e.ordinal());
  }
  
  private void O()
  {
    if (c.l(a))
    {
      localA = new cn.domob.android.g.a.a(P());
      localA.a(true);
      if (o() == DomobAdView.a.e.ordinal()) {
        localA.b(false);
      }
      localA.a(b.x, a, new cn.domob.android.g.a.a.b()
      {
        public void a(cn.domob.android.g.a.a.a paramAnonymousA)
        {
          if (g.b(g.this)) {
            a(DomobAdManager.ErrorCode.NETWORK_ERROR);
          }
        }
        
        public void a(String paramAnonymousString)
        {
          h.a().a(paramAnonymousString);
          if (g.b(g.this))
          {
            c(false);
            C();
          }
        }
      });
    }
    while (!N())
    {
      cn.domob.android.g.a.a localA;
      return;
    }
    a(DomobAdManager.ErrorCode.NETWORK_ERROR);
  }
  
  private cn.domob.android.g.a.e P()
  {
    String str3 = null;
    String str4 = String.format("%s-%s-%s", new Object[] { "20141125", "android", "20140529" });
    String str1 = cn.domob.android.b.a.z(a);
    if (str1 != null) {}
    for (str1 = cn.domob.android.i.h.a("d!j@d#g$r%s^j&h*", str1.toUpperCase());; str1 = null)
    {
      String str2 = cn.domob.android.b.a.A(a);
      if (str2 != null) {}
      for (str2 = cn.domob.android.i.h.a("d!j@d#g$r%s^j&h*", str2.toUpperCase());; str2 = null)
      {
        String str5 = cn.domob.android.b.a.B(a);
        if (str5 != null) {
          str3 = cn.domob.android.i.h.a("d!j@d#g$r%s^j&h*", str5);
        }
        str5 = cn.domob.android.b.a.g(a);
        String str6 = m();
        String str7 = n();
        cn.domob.android.g.a.e localE = new cn.domob.android.g.a.e();
        localE.e(str2);
        localE.d(str1);
        localE.f(str3);
        localE.g(str5);
        localE.h(str6);
        localE.i(str7);
        localE.b(str4);
        localE.a(String.valueOf(1));
        localE.c("040602");
        return localE;
      }
    }
  }
  
  private void a(String paramString, q paramQ)
  {
    w localW = new w(a, c);
    localW.getClass();
    w.c localC = new w.c(localW);
    a = paramQ.a().d().r();
    d = paramQ.c();
    e = paramQ.d();
    f = paramQ.e();
    localW.a(paramQ.a().d().q(), w.h.b, paramString, localC, null);
  }
  
  private void a(String paramString1, String paramString2, int paramInt, String paramString3)
  {
    w localW = new w(a, c);
    localW.getClass();
    w.c localC = new w.c(localW);
    d = paramString2;
    e = paramInt;
    f = paramString3;
    localW.a("http://e.domob.cn/event_report", w.h.e, paramString1, localC, null);
  }
  
  private void b(j paramJ, int paramInt)
  {
    if (paramJ != null)
    {
      e = paramJ;
      L();
      if (paramJ.d() != null)
      {
        aa.a(a, e);
        M();
        J.b("Get ad response successfully.");
      }
    }
    do
    {
      do
      {
        return;
        if (paramJ.e() != null)
        {
          String str = paramJ.e().b();
          paramInt = paramJ.e().a();
          Log.e("DomobSDK", String.format("Response contains error info. Error code is [%d-%s] and error content is [%s]", new Object[] { Integer.valueOf(paramInt), paramJ.b(), str }));
          switch (paramInt / 1000)
          {
          }
          for (;;)
          {
            a(DomobAdManager.ErrorCode.INTERNAL_ERROR);
            return;
            a(DomobAdManager.ErrorCode.INTERNAL_ERROR);
            return;
            a(DomobAdManager.ErrorCode.INTERNAL_ERROR);
            return;
            a(DomobAdManager.ErrorCode.INVALID_REQUEST);
            return;
            a(DomobAdManager.ErrorCode.NO_FILL);
            return;
            a(DomobAdManager.ErrorCode.INTERNAL_ERROR);
          }
        }
        O();
      } while (N());
      J.e("Unexpected resp, Try to request again after refresh interval.");
      a(DomobAdManager.ErrorCode.INTERNAL_ERROR);
      return;
      O();
    } while (N());
    Log.w(f.b(), "Connection Error. Please make sure that your network is available.");
    J.e("AdResponse instance is null. Try to request again after refresh interval.");
    a(DomobAdManager.ErrorCode.NETWORK_ERROR);
  }
  
  private void k(String paramString)
  {
    new w(a, c).a(e.d().q(), w.h.g, paramString, null, null);
  }
  
  protected boolean A()
  {
    return S;
  }
  
  protected j B()
  {
    return e;
  }
  
  protected void C()
  {
    try
    {
      if (!o.a)
      {
        J.b("Start to load config request");
        new o(this).a();
        return;
      }
      a(this);
      return;
    }
    catch (cn.domob.android.d.a localA)
    {
      J.b("Config request is ongoing, ignore this time");
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  protected void D()
  {
    J.a().a(a, this);
    E();
  }
  
  protected void E()
  {
    S = true;
    V = false;
    m = c.c;
    a();
  }
  
  public void F()
  {
    if ((Q != null) && (!Q.equals("")))
    {
      if ((R != null) && (R.equals("mraid"))) {}
      for (String str = "mraid";; str = "domob")
      {
        J.b("gen fake ad response:" + str);
        a(j.a(String.format("{\"sid\":\"search_id\",\"cid\":\"cookie_id\",\"ad\":{\"id\":\"12345\",\"format\":\"%s\",\"ct\":\"url\",\"width\":320,\"height\":50,\"url\":\"%s\",\"content\":\"\",\"base_url\":\"\",\"click_tracker\":\"\",\"imp_tracker\":\"h\",\"event_tracker\":\"\",\"tracker\":\"8ewfqd8ffqwer1325effff342f3444\",\"animation\":1,\"o\":\"h\",\"cls_btn\":0,\"imp_min\":5,\"imp_cls\":8,\"cache\":1440,\"pkg\":\"cn.domob.android.rm.demo\",\"mz_click_tracker\":\"\",\"mz_imp_tracker\":\"\"},\"control\":{\"refresh\":20,\"disable\":false,\"dis_time\":30,\"location\":true,\"ors\":{\"version\":\"2\",\"config\":{\"com.admogo.AdMogoLayout\":\"1\",\"com.guohead.sdk.GHView\":\"2\",\"com.adview.AdViewLayout\":\"3\",\"appfactory.cn.adplatform.AdSageLayout\":\"4\",\"cn.domob.test\":\"5\"}}}}", new Object[] { str, Q })), 200);
        return;
      }
    }
    C();
  }
  
  public boolean G()
  {
    return o() == DomobAdView.a.c.ordinal();
  }
  
  protected void H()
  {
    a.a.a.a.a.a.a(new a.a.a.a.a.a.b()
    {
      public void a(a.a.a.a.a.e paramAnonymousE)
      {
        a("reso_dl_succ", paramAnonymousE);
      }
      
      public void a(String paramAnonymousString1, String paramAnonymousString2)
      {
        a(e, "cached_reso_not_exist", paramAnonymousString1, paramAnonymousString2);
      }
      
      public void b(a.a.a.a.a.e paramAnonymousE)
      {
        a("resog_dl_succ", paramAnonymousE);
      }
      
      public void c(a.a.a.a.a.e paramAnonymousE)
      {
        a("reso_dl_failed_process_error", paramAnonymousE);
      }
      
      public void d(a.a.a.a.a.e paramAnonymousE)
      {
        a("reso_dl_failed_space_not_enough", paramAnonymousE);
      }
      
      public void e(a.a.a.a.a.e paramAnonymousE)
      {
        a("reso_dl_failed_no_sd", paramAnonymousE);
      }
      
      public void f(a.a.a.a.a.e paramAnonymousE)
      {
        a("reso_dl_failed_conn_error", paramAnonymousE);
      }
    });
  }
  
  protected int I()
  {
    return ab;
  }
  
  protected void a()
  {
    if (m == c.a) {}
    do
    {
      do
      {
        return;
        if (l != a.a) {
          break;
        }
      } while (!T);
      J.b("Start schedule new request. Refresh interval is " + W);
      if (W == 0)
      {
        J.a("AdView is auto refreshable but interval from ad response is 0. DON'T SCHEDULE.");
        return;
      }
      X.removeCallbacks(f);
      X.postDelayed(f, W);
      m = c.a;
      return;
    } while (l != a.b);
    J.a("AdView is expanding, cancel current 'start()'.");
  }
  
  protected void a(int paramInt)
  {
    W = paramInt;
  }
  
  protected void a(long paramLong)
  {
    n = d.a;
    Y = paramLong;
    Z = 0L;
    J.b("init timing");
  }
  
  protected void a(Context paramContext)
  {
    a.a.a.a.a.a.a(paramContext, new a.a.a.a.a.a.a()
    {
      public void a() {}
      
      public void a(Context paramAnonymousContext, Object paramAnonymousObject, String paramAnonymousString1, String paramAnonymousString2)
      {
        new cn.domob.android.c.e(paramAnonymousContext, paramAnonymousObject, paramAnonymousString1, paramAnonymousString2, new cn.domob.android.c.e.a()
        {
          public void a(Context paramAnonymous2Context, Object paramAnonymous2Object)
          {
            a.a.a.a.a.a.a(paramAnonymous2Context, paramAnonymous2Object, 1);
          }
          
          public void a(Context paramAnonymous2Context, Object paramAnonymous2Object, String paramAnonymous2String, long paramAnonymous2Long)
          {
            a.a.a.a.a.a.a(paramAnonymous2Context, paramAnonymous2Object, paramAnonymous2String, paramAnonymous2Long);
          }
          
          public void b(Context paramAnonymous2Context, Object paramAnonymous2Object)
          {
            a.a.a.a.a.a.a(paramAnonymous2Context, paramAnonymous2Object, 2);
          }
          
          public void b(Context paramAnonymous2Context, Object paramAnonymous2Object, String paramAnonymous2String, long paramAnonymous2Long)
          {
            a.a.a.a.a.a.b(paramAnonymous2Context, paramAnonymous2Object, paramAnonymous2String, paramAnonymous2Long);
          }
          
          public void c(Context paramAnonymous2Context, Object paramAnonymous2Object)
          {
            a.a.a.a.a.a.a(paramAnonymous2Context, paramAnonymous2Object, 3);
          }
          
          public void d(Context paramAnonymous2Context, Object paramAnonymous2Object)
          {
            a.a.a.a.a.a.a(paramAnonymous2Context, paramAnonymous2Object, 4);
          }
        }).a();
      }
    });
  }
  
  protected void a(final DomobAdManager.ErrorCode paramErrorCode)
  {
    J.b("FAILED to load AD.");
    V = false;
    a();
    ((Activity)a).runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (d.f() != null) {
          d.f().onFailedToReceiveFreshAd(d);
        }
        if (d.g() != null) {
          d.g().onDomobAdFailed(d, paramErrorCode);
        }
      }
    });
  }
  
  protected void a(a paramA)
  {
    l = paramA;
  }
  
  public void a(g paramG)
  {
    if (!h.a().c(a))
    {
      if (!V)
      {
        paramG.b();
        J.b("Load after schedule request.");
        V = true;
        new i(paramG).a();
        return;
      }
      J.d("An ad is requesting.");
      return;
    }
    J.d("Ad has been disabled currently. Disable expire time = " + new Date(h.a().c()));
  }
  
  public void a(j paramJ)
  {
    a(paramJ, null, null);
  }
  
  public void a(j paramJ, int paramInt)
  {
    b(paramJ, paramInt);
  }
  
  protected void a(j paramJ, String paramString)
  {
    if ((paramJ != null) && (paramJ.d() != null))
    {
      w localW = new w(a, c);
      localW.getClass();
      w.c localC = new w.c(localW);
      a = paramJ.d().r();
      localW.a(paramJ.d().q(), w.h.q, paramString, localC, null);
    }
  }
  
  public void a(j paramJ, String paramString1, String paramString2, long paramLong)
  {
    a(paramJ, null, paramString1, paramString2, paramLong, null);
  }
  
  protected void a(j paramJ, String paramString1, String paramString2, String paramString3)
  {
    if ((paramJ != null) && (paramJ.d() != null))
    {
      w localW = new w(a, c);
      localW.getClass();
      w.c localC = new w.c(localW);
      a = paramJ.d().r();
      i = paramString2;
      j = paramString3;
      localW.a(paramJ.d().q(), w.h.p, paramString1, localC, null);
    }
  }
  
  public void a(j paramJ, HashMap<String, String> paramHashMap, String paramString)
  {
    String str1 = paramJ.d().o();
    String str2 = paramJ.d().r();
    w localW = new w(a, c);
    localW.getClass();
    w.b localB = new w.b(localW);
    a = str2;
    if (paramString != null) {
      b = paramString;
    }
    localW.a(str1, localB, paramHashMap);
    cn.domob.android.e.a.c(a, paramJ.d().E());
  }
  
  public void a(j paramJ, HashMap<String, String> paramHashMap, String paramString1, String paramString2, long paramLong, String paramString3)
  {
    a(paramJ, paramHashMap, paramString1, paramString2, paramLong, paramString3, d);
  }
  
  public void a(j paramJ, HashMap<String, String> paramHashMap, String paramString1, String paramString2, long paramLong, String paramString3, View paramView)
  {
    w localW = new w(a, c);
    localW.getClass();
    w.f localF = new w.f(localW);
    String str = paramString3;
    if (paramString3 == null) {
      str = paramJ.d().p();
    }
    a = paramJ.d().r();
    if (paramView != null)
    {
      paramString3 = new int[2];
      paramView.getLocationOnScreen(paramString3);
      d = String.format("%d,%d,%d,%d", new Object[] { Integer.valueOf(paramString3[0]), Integer.valueOf(paramString3[1]), Integer.valueOf(paramView.getWidth()), Integer.valueOf(paramView.getHeight()) });
    }
    e = cn.domob.android.b.a.u(a);
    f = cn.domob.android.b.a.v(a);
    g = cn.domob.android.b.a.r(a);
    h = paramString1;
    b = paramString2;
    i = paramLong;
    localW.a(str, localF, paramHashMap);
    boolean bool = paramJ.d().b().equals("video");
    if (((bool) && (paramString1.equals("m"))) || ((!bool) && (paramString1.equals("s")))) {
      cn.domob.android.e.a.b(a, paramJ.d().E());
    }
  }
  
  public void a(q paramQ)
  {
    a("install_success", paramQ);
  }
  
  protected void a(String paramString)
  {
    K = paramString;
  }
  
  public void a(String paramString1, int paramInt, String paramString2)
  {
    a("up_alert", paramString1, paramInt, paramString2);
  }
  
  public void a(String paramString1, int paramInt, String paramString2, boolean paramBoolean, String paramString3) {}
  
  protected void a(String paramString, a.a.a.a.a.e paramE)
  {
    w localW = new w(a, d);
    localW.getClass();
    w.c localC = new w.c(localW);
    a = c;
    i = a;
    j = b;
    localW.a(e, w.h.p, paramString, localC, null);
  }
  
  protected void a(boolean paramBoolean)
  {
    J.a("Auto refresh is set to " + paramBoolean);
    T = paramBoolean;
  }
  
  protected void b()
  {
    X.removeCallbacks(f);
    m = c.c;
  }
  
  protected void b(int paramInt)
  {
    ab = paramInt;
  }
  
  public void b(q paramQ)
  {
    a("run", paramQ);
  }
  
  protected void b(String paramString)
  {
    L = paramString;
  }
  
  public void b(String paramString1, int paramInt, String paramString2)
  {
    a("up_ok", paramString1, paramInt, paramString2);
  }
  
  protected void b(boolean paramBoolean)
  {
    J.a("Transition animation is set to " + paramBoolean);
    U = paramBoolean;
  }
  
  protected void c()
  {
    if (m == c.b) {}
    do
    {
      do
      {
        return;
        if (l != a.a) {
          break;
        }
      } while (!T);
      X.removeCallbacks(f);
      d();
      J.a("Pause schedule and the ad has shown " + Z + "ms");
      m = c.b;
      return;
    } while (l != a.b);
    J.a("AdView is expanding, pause() has been called. Cancel current 'pause()'.");
  }
  
  protected void c(String paramString)
  {
    M = paramString;
  }
  
  public void c(String paramString1, int paramInt, String paramString2)
  {
    a("up_cancel", paramString1, paramInt, paramString2);
  }
  
  protected void c(boolean paramBoolean)
  {
    V = paramBoolean;
  }
  
  protected void d()
  {
    if (n == d.a)
    {
      long l1 = System.currentTimeMillis();
      long l2 = Z;
      Z = (l1 - Y + l2);
      n = d.b;
      J.b("pause timing current ad has shown seconds:" + g() / 1000L);
    }
  }
  
  protected void d(String paramString)
  {
    N = paramString;
  }
  
  public void d(String paramString1, int paramInt, String paramString2)
  {
    a("up_skip", paramString1, paramInt, paramString2);
  }
  
  protected void d(boolean paramBoolean)
  {
    S = paramBoolean;
  }
  
  protected void e()
  {
    if (m == c.a) {}
    do
    {
      do
      {
        return;
        if (l != a.a) {
          break;
        }
      } while ((!T) || (W == 0));
      f();
      long l1 = W - Z;
      if (l1 <= 0L)
      {
        J.a("Maybe there is no ad, request no.");
        l();
        return;
      }
      J.a("Resume with remaining time:" + l1);
      X.postDelayed(f, l1);
      m = c.a;
      return;
    } while (l != a.b);
    J.a("AdView is expanding, cancel current 'resume()'.");
  }
  
  protected void e(String paramString)
  {
    O = paramString;
  }
  
  public void e(String paramString1, int paramInt, String paramString2)
  {
    a("download_finish", paramString1, paramInt, paramString2);
  }
  
  protected void f()
  {
    if (n == d.b)
    {
      Y = System.currentTimeMillis();
      n = d.a;
      J.b("resume timing current ad has shown seconds:" + g() / 1000L);
      return;
    }
    J.d("call resume timing, but current state is not pause");
  }
  
  protected void f(String paramString)
  {
    P = paramString;
  }
  
  public void f(String paramString1, int paramInt, String paramString2)
  {
    a("download_failed", paramString1, paramInt, paramString2);
  }
  
  protected long g()
  {
    long l1;
    if (n == d.a)
    {
      l1 = System.currentTimeMillis();
      long l2 = Z;
      l1 = l1 - Y + l2;
    }
    for (;;)
    {
      J.b(String.format("get ad shown time: %d s", new Object[] { Long.valueOf(l1 / 1000L) }));
      return l1;
      if (n == d.b) {
        l1 = Z;
      } else {
        l1 = 0L;
      }
    }
  }
  
  public void g(String paramString)
  {
    k(paramString);
  }
  
  public void g(String paramString1, int paramInt, String paramString2)
  {
    a("download_start", paramString1, paramInt, paramString2);
  }
  
  protected void h(String paramString)
  {
    Q = paramString;
  }
  
  public void h(String paramString1, int paramInt, String paramString2)
  {
    a("download_cancel", paramString1, paramInt, paramString2);
  }
  
  protected boolean h()
  {
    return T;
  }
  
  protected void i(String paramString)
  {
    R = paramString;
  }
  
  public void i(String paramString1, int paramInt, String paramString2)
  {
    a("download_repeat", paramString1, paramInt, paramString2);
  }
  
  protected boolean i()
  {
    return U;
  }
  
  public void j(String paramString)
  {
    if (h != null) {
      h.a(paramString, e);
    }
  }
  
  public void j(String paramString1, int paramInt, String paramString2) {}
  
  protected boolean j()
  {
    J.a("Check settings and permissions.");
    if ((K != null) && (K.length() != 0))
    {
      if (cn.domob.android.i.a.a(a, b.U, true))
      {
        J.a("All permissions are ok.");
        return true;
      }
      Log.w(f.b(), "Permission denied.");
    }
    for (;;)
    {
      return false;
      Log.w(f.b(), "Please set your PlacementID first.");
    }
  }
  
  /* Error */
  protected void k()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 174	cn/domob/android/ads/g:S	Z
    //   6: ifne +17 -> 23
    //   9: aload_0
    //   10: getfield 180	cn/domob/android/ads/g:V	Z
    //   13: ifne +10 -> 23
    //   16: aload_0
    //   17: invokevirtual 910	cn/domob/android/ads/g:l	()V
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: getstatic 150	cn/domob/android/ads/g:J	Lcn/domob/android/i/f;
    //   26: ldc_w 955
    //   29: invokevirtual 230	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   32: goto -12 -> 20
    //   35: astore_1
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_1
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	this	g
    //   35	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	20	35	finally
    //   23	32	35	finally
  }
  
  public void k(String paramString1, int paramInt, String paramString2)
  {
    a("download_md5_failed", paramString1, paramInt, paramString2);
  }
  
  protected void l()
  {
    for (;;)
    {
      try
      {
        if (d.a())
        {
          if (!V)
          {
            C();
            return;
          }
          J.d("DomobAdView is requesting.");
          continue;
        }
        X.removeCallbacks(f);
      }
      finally {}
      X.postDelayed(f, W);
    }
  }
  
  protected String m()
  {
    return K;
  }
  
  public String n()
  {
    return c;
  }
  
  public int o()
  {
    return d.e();
  }
  
  protected a p()
  {
    return l;
  }
  
  protected String q()
  {
    return d.i();
  }
  
  public RelativeLayout r()
  {
    return d;
  }
  
  protected String s()
  {
    return L;
  }
  
  protected String t()
  {
    return M;
  }
  
  protected String u()
  {
    return N;
  }
  
  protected String v()
  {
    return O;
  }
  
  protected String w()
  {
    return P;
  }
  
  protected Context x()
  {
    return a;
  }
  
  public int y()
  {
    return W;
  }
  
  protected DomobAdListener z()
  {
    return d.f();
  }
  
  static enum a
  {
    private a() {}
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      l();
    }
  }
  
  static enum c
  {
    private c() {}
  }
  
  static enum d
  {
    private d() {}
  }
}
