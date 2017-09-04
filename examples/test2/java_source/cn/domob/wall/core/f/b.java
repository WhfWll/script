package cn.domob.wall.core.f;

import android.content.Context;
import cn.domob.wall.core.DService;
import cn.domob.wall.core.DService.EWallReportType;
import cn.domob.wall.core.DService.ReportDownLoadType;
import cn.domob.wall.core.DService.ReportUserActionType;
import cn.domob.wall.core.b.a;
import cn.domob.wall.core.bean.AdExtend;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.h.d;
import cn.domob.wall.core.h.e;
import cn.domob.wall.core.h.f;
import java.util.HashMap;
import java.util.Map;

public class b
{
  static b a;
  private static d b = new d(b.class.getSimpleName());
  
  public b() {}
  
  static b a()
  {
    try
    {
      if (a == null) {
        a = new b();
      }
      b localB = a;
      return localB;
    }
    finally {}
  }
  
  class a
  {
    HashMap<String, String> a = new HashMap();
    AdInfo b;
    cn.domob.wall.core.b c;
    
    a(cn.domob.wall.core.b paramB, AdInfo paramAdInfo, b.n paramN)
    {
      c = paramB;
      b = paramAdInfo;
      a.put("sid", paramAdInfo.getSearchId());
      a.put("id", paramAdInfo.getAdId());
      a(a, paramAdInfo.getAdTracker());
      a(paramB.g(), paramN);
    }
    
    a(cn.domob.wall.core.b paramB, b.n paramN)
    {
      c = paramB;
      a(paramB.g(), paramN);
    }
    
    private void a(Context paramContext, b.n paramN)
    {
      try
      {
        a.put("sdk", String.valueOf(30));
        a.put("rt", String.valueOf(paramN.ordinal()));
        a.put("v", String.format("%s-%s-%s", new Object[] { "20140217", "android", "20131101" }));
        a.put("sv", "020100");
        a.put("idv", e.h(paramContext));
        a.put("ua", e.f(paramContext));
        a.put("ipb", c.d());
        a.put("ppid", c.e());
        paramContext = e.y(paramContext);
        if (paramContext != null) {
          a.put("dma", f.a("d!j@d#g$r%s^j&h*", paramContext.toUpperCase()));
        }
        return;
      }
      catch (Exception paramContext)
      {
        b.b().a(paramContext);
      }
    }
    
    protected void a()
    {
      b.l localL = new b.l(b.this);
      if (DService.getEndpoint().equals("online"))
      {
        localL.a(c.g(), a, f.f(a.j));
        return;
      }
      localL.a(c.g(), a, f.f(a.n));
    }
    
    protected void a(Map<String, String> paramMap, String paramString)
    {
      String str1 = c.d();
      String str2 = e.f(c.g());
      cn.domob.wall.core.h.c.a localA = cn.domob.wall.core.h.c.a(str1, str2, paramString);
      paramMap.put("tr", paramString);
      paramMap.put("ts", localA.a());
      paramMap.put("rnd", localA.b());
      paramMap.put("vcode", localA.c());
      paramMap.put("ipb", str1);
      paramMap.put("ua", str2);
    }
  }
  
  class b
    extends b.a
  {
    b(cn.domob.wall.core.b paramB, AdInfo paramAdInfo)
    {
      super(paramB, paramAdInfo, b.n.c);
    }
    
    public void a(b.j paramJ)
    {
      String str = "";
      switch (b.1.c[paramJ.ordinal()])
      {
      default: 
        paramJ = str;
      }
      for (;;)
      {
        a.put("type", paramJ);
        return;
        paramJ = "load_success";
        continue;
        paramJ = "load_failed";
        continue;
        paramJ = "load_cancel";
        continue;
        paramJ = "close_lp";
        continue;
        paramJ = "lp_url";
      }
    }
  }
  
  class c
    extends b.a
  {
    c(cn.domob.wall.core.b paramB, AdInfo paramAdInfo)
    {
      super(paramB, paramAdInfo, b.n.d);
    }
    
    protected void a()
    {
      b.l localL = new b.l(b.this);
      if (DService.getEndpoint().equals("online")) {
        localL.a(c.g(), a, f.f(a.k));
      }
      for (;;)
      {
        if ((b.getClickTrackerUrl() != null) && (!((String)a.get("type")).equals("details_down"))) {
          localL.a(c.g(), a, b.getClickTrackerUrl());
        }
        return;
        localL.a(c.g(), a, f.f(a.o));
      }
    }
    
    public void a(int paramInt)
    {
      a.put("order", String.valueOf(paramInt));
    }
    
    public void a(b.k paramK)
    {
      String str = "";
      switch (b.1.e[paramK.ordinal()])
      {
      default: 
        paramK = str;
      }
      for (;;)
      {
        a.put("type", paramK);
        return;
        paramK = "banner_ad";
        continue;
        paramK = "list_ad";
        continue;
        paramK = "listad_down";
        continue;
        paramK = "details_down";
      }
    }
    
    public void b(int paramInt)
    {
      a.put("posit", String.valueOf(paramInt));
    }
  }
  
  class d
    extends b.a
  {
    d(cn.domob.wall.core.b paramB, AdInfo paramAdInfo)
    {
      super(paramB, paramAdInfo, b.n.b);
      a.put("vc", String.valueOf(paramAdInfo.getAdVersionCode()));
      a.put("vn", String.valueOf(paramAdInfo.getAdVersionName()));
      a.put("pkg", paramAdInfo.getAdPackageName());
      a.put("id", paramAdInfo.getAdId());
    }
    
    void a(DService.ReportDownLoadType paramReportDownLoadType)
    {
      String str = "";
      switch (b.1.b[paramReportDownLoadType.ordinal()])
      {
      default: 
        paramReportDownLoadType = str;
      }
      for (;;)
      {
        a.put("type", paramReportDownLoadType);
        return;
        paramReportDownLoadType = "download_start";
        continue;
        paramReportDownLoadType = "download_repeat";
        continue;
        paramReportDownLoadType = "download_finish";
        continue;
        paramReportDownLoadType = "download_failed";
        continue;
        paramReportDownLoadType = "download_cancel";
        continue;
        paramReportDownLoadType = "install_success";
        continue;
        paramReportDownLoadType = "run";
      }
    }
  }
  
  class e
    extends b.a
  {
    e(cn.domob.wall.core.b paramB)
    {
      super(paramB, b.n.h);
      a.put("sid", paramB.f());
      if (paramB.i() != null)
      {
        a.put("id", paramB.i().getmId());
        a(a, paramB.i().getmTr());
      }
    }
    
    void a(DService.EWallReportType paramEWallReportType)
    {
      String str = "";
      switch (b.1.f[paramEWallReportType.ordinal()])
      {
      default: 
        paramEWallReportType = str;
      }
      for (;;)
      {
        a.put("type", paramEWallReportType);
        return;
        paramEWallReportType = "e_entry_show";
        continue;
        paramEWallReportType = "e_entry_click";
        continue;
        paramEWallReportType = "e_page_req";
        continue;
        paramEWallReportType = "e_page_show";
        continue;
        paramEWallReportType = "e_page_click";
      }
    }
    
    public void a(String paramString)
    {
      if (paramString != null) {
        a.put("e_page_url", paramString);
      }
    }
  }
  
  protected class f
  {
    protected static final String A = "e_page_show";
    protected static final String B = "e_page_click";
    protected static final String a = "load_success";
    protected static final String b = "load_failed";
    protected static final String c = "load_cancel";
    protected static final String d = "lp_url";
    protected static final String e = "close_lp";
    protected static final String f = "download_start";
    protected static final String g = "download_finish";
    protected static final String h = "download_cancel";
    protected static final String i = "download_failed";
    protected static final String j = "download_repeat";
    protected static final String k = "install_success";
    protected static final String l = "run";
    protected static final String m = "la_success";
    protected static final String n = "la_failed";
    protected static final String o = "la_failsafe_success";
    protected static final String p = "la_failsafe_failed";
    protected static final String q = "entry";
    protected static final String r = "exit";
    protected static final String s = "pgdn";
    protected static final String t = "banner_ad";
    protected static final String u = "list_ad";
    protected static final String v = "listad_down";
    protected static final String w = "details_down";
    protected static final String x = "e_entry_show";
    protected static final String y = "e_entry_click";
    protected static final String z = "e_page_req";
    
    protected f() {}
  }
  
  class g
    extends b.a
  {
    g(cn.domob.wall.core.b paramB)
    {
      super(paramB, b.n.e);
    }
    
    protected void a()
    {
      b.h localH = new b.h(b.this, c.g());
      if (DService.getEndpoint().equals("online"))
      {
        localH.a(a, String.valueOf(b.n.e.ordinal()), f.f(a.l));
        return;
      }
      localH.a(a, String.valueOf(b.n.e.ordinal()), f.f(a.p));
    }
    
    void a(String paramString)
    {
      a.put("tr", paramString);
      a(a, paramString);
    }
    
    void b(String paramString)
    {
      a.put("sid", paramString);
    }
  }
  
  class h
    implements cn.domob.wall.core.c.c.a
  {
    private Context b;
    private cn.domob.wall.core.c.c c;
    
    protected h(Context paramContext)
    {
      b = paramContext;
    }
    
    public void a(cn.domob.wall.core.c.c paramC)
    {
      int i = paramC.f();
      b.b().b("imp repoet response: " + i);
      if (i == 200)
      {
        b.b().b("Imp report finish.");
        return;
      }
      b.b().e("onConnectionFinished:respCode=" + i);
    }
    
    protected void a(HashMap<String, String> paramHashMap, String paramString1, String paramString2)
    {
      paramHashMap = f.a(paramHashMap);
      b.b().b("imp report: " + paramHashMap);
      c = new cn.domob.wall.core.c.c(b, paramString2, "", null, "POST", paramHashMap, 20000, this);
      c.run();
    }
  }
  
  class i
    extends b.a
  {
    i(cn.domob.wall.core.b paramB, AdInfo paramAdInfo)
    {
      super(paramB, paramAdInfo, b.n.g);
    }
    
    public void a(b.m paramM)
    {
      String str = "";
      switch (b.1.d[paramM.ordinal()])
      {
      default: 
        paramM = str;
      }
      for (;;)
      {
        a.put("type", paramM);
        return;
        paramM = "la_success";
        continue;
        paramM = "la_failed";
        continue;
        paramM = "la_failsafe_success";
        continue;
        paramM = "la_failsafe_failed";
      }
    }
    
    public void a(String paramString)
    {
      if (paramString != null) {
        a.put("failsafe", paramString);
      }
    }
  }
  
  public static enum j
  {
    private j() {}
  }
  
  public static enum k
  {
    private k() {}
  }
  
  class l
    implements cn.domob.wall.core.c.c.a
  {
    l() {}
    
    protected void a(Context paramContext, HashMap<String, String> paramHashMap, String paramString)
    {
      b.b().b("report type: " + (String)paramHashMap.get("type"));
      b.b().b("report params: " + paramHashMap.toString());
      paramContext = new cn.domob.wall.core.c.c(paramContext, paramString, "", null, "POST", f.a(paramHashMap), 20000, this);
      paramContext.a((String)paramHashMap.get("type"));
      paramContext.b();
    }
    
    public void a(cn.domob.wall.core.c.c paramC)
    {
      int i = paramC.f();
      b.b().b("report response: " + i);
      if (i == 200)
      {
        b.b().b("Report " + paramC.a() + " finish.");
        return;
      }
      b.b().b("onConnectionFinished:respCode = " + i);
    }
  }
  
  public static enum m
  {
    private m() {}
  }
  
  public static enum n
  {
    private n() {}
  }
  
  class o
    extends b.a
  {
    o(cn.domob.wall.core.b paramB)
    {
      super(paramB, b.n.f);
      a.put("sid", paramB.f());
      a(a, "-1");
    }
    
    void a(DService.ReportUserActionType paramReportUserActionType)
    {
      String str = "";
      switch (b.1.a[paramReportUserActionType.ordinal()])
      {
      default: 
        paramReportUserActionType = str;
      }
      for (;;)
      {
        a.put("type", paramReportUserActionType);
        return;
        paramReportUserActionType = "entry";
        continue;
        paramReportUserActionType = "exit";
        continue;
        paramReportUserActionType = "pgdn";
      }
    }
  }
}
