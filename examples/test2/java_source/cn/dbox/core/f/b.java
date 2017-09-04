package cn.dbox.core.f;

import android.content.Context;
import android.text.TextUtils;
import cn.dbox.core.bean.Entrance.EntryReportType;
import cn.dbox.core.bean.a;
import cn.dbox.core.h.d;
import cn.dbox.core.h.e;
import cn.dbox.core.h.f;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

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
  
  protected class a
  {
    protected static final String A = "e_page_show";
    protected static final String B = "e_page_click";
    protected static final String C = "entry_imp";
    protected static final String D = "entry_clk";
    protected static final String E = "presented";
    protected static final String F = "channel_entry_clk";
    protected static final String G = "container_entry_clk";
    protected static final String H = "landing";
    protected static final String I = "ad_imp";
    protected static final String J = "ad_clk";
    protected static final String K = "landing";
    protected static final String L = "setting_entry_clk";
    protected static final String M = "about_clk";
    protected static final String N = "feedback_submit";
    protected static final String O = "contact_clk";
    protected static final String P = "chanid";
    protected static final String Q = "acid";
    protected static final String R = "adid";
    protected static final String S = "action";
    protected static final String T = "trs";
    protected static final String U = "tr";
    protected static final String V = "position";
    protected static final String W = "element";
    protected static final String X = "phase";
    protected static final String Y = "data";
    protected static final String Z = "message";
    protected static final String a = "load_success";
    protected static final String aa = "contact";
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
    
    protected a() {}
  }
  
  class b
    extends b.c
  {
    b(cn.dbox.core.c paramC, a paramA)
    {
      super(paramC, paramA, null);
      b.put("sid", paramC.e());
    }
    
    public void a(String paramString)
    {
      b.put("origin", paramString);
    }
    
    public void a(HashMap<String, String> paramHashMap)
    {
      if (paramHashMap != null)
      {
        paramHashMap = paramHashMap.entrySet().iterator();
        while (paramHashMap.hasNext())
        {
          Object localObject = (Map.Entry)paramHashMap.next();
          String str = (String)((Map.Entry)localObject).getKey();
          localObject = (String)((Map.Entry)localObject).getValue();
          if ((str != null) && (localObject != null)) {
            b.put(str, localObject);
          }
        }
      }
    }
  }
  
  class c
  {
    HashMap<String, String> b = new HashMap();
    a c;
    cn.dbox.core.c d;
    
    c(cn.dbox.core.c paramC, cn.dbox.core.b.n paramN)
    {
      d = paramC;
      a(paramC.f(), paramN);
    }
    
    c(cn.dbox.core.c paramC, a paramA, cn.dbox.core.b.n paramN)
    {
      d = paramC;
      c = paramA;
      a(b, paramA.h());
      a(paramC.f(), paramN);
    }
    
    private void a(Context paramContext, cn.dbox.core.b.n paramN)
    {
      try
      {
        b.put("sdk", String.valueOf(31));
        if (paramN != null) {
          b.put("rt", String.valueOf(paramN.ordinal()));
        }
        b.put("v", String.format("%s-%s-%s", new Object[] { "20140918", "android", "20140711" }));
        b.put("sv", "000900");
        b.put("idv", e.h(paramContext));
        b.put("ua", e.f(paramContext));
        b.put("ipb", d.a());
        b.put("ppid", d.b());
        paramContext = e.y(paramContext);
        if (paramContext != null) {
          b.put("dma", f.a("d!j@d#g$r%s^j&h*", paramContext.toUpperCase()));
        }
        return;
      }
      catch (Exception paramContext)
      {
        b.b().a(paramContext);
      }
    }
    
    protected void a(Map<String, String> paramMap, String paramString)
    {
      String str1 = d.a();
      String str2 = e.f(d.f());
      cn.dbox.core.h.c.a localA = cn.dbox.core.h.c.a(str1, str2, paramString);
      paramMap.put("tr", paramString);
      paramMap.put("ts", localA.a());
      paramMap.put("rnd", localA.b());
      paramMap.put("vcode", localA.c());
      paramMap.put("ipb", str1);
      paramMap.put("ua", str2);
    }
    
    protected void b(String paramString)
    {
      new b.p(b.this).a(d.f(), b, paramString);
    }
  }
  
  class d
    extends b.c
  {
    d(cn.dbox.core.c paramC, a paramA)
    {
      super(paramC, paramA, cn.dbox.core.b.n.e);
      b.put("sid", paramC.e());
      b.put("type", "landing");
    }
    
    public void a(cn.dbox.core.b.b paramB)
    {
      String str = "";
      switch (b.1.e[paramB.ordinal()])
      {
      default: 
        paramB = str;
      }
      for (;;)
      {
        b.put("phase", paramB);
        return;
        paramB = "load_success";
        continue;
        paramB = "load_failed";
        continue;
        paramB = "load_cancel";
        continue;
        paramB = "close_lp";
        continue;
        paramB = "lp_url";
      }
    }
    
    public void a(String paramString)
    {
      b.put("data", paramString);
    }
  }
  
  class e
    extends b.c
  {
    e(cn.dbox.core.c paramC)
    {
      super(paramC, cn.dbox.core.b.n.b);
      b.put("sid", paramC.e());
      a(b, "-1");
    }
    
    void a(cn.dbox.core.b.c paramC)
    {
      String str = "";
      switch (b.1.b[paramC.ordinal()])
      {
      }
      for (paramC = str;; paramC = "channel_entry_clk")
      {
        b.put("type", paramC);
        return;
      }
    }
    
    void a(String paramString)
    {
      b.put("chanid", paramString);
    }
  }
  
  class f
    extends b.c
  {
    f(cn.dbox.core.c paramC, a paramA)
    {
      super(paramC, paramA, cn.dbox.core.b.n.e);
      b.put("type", "ad_clk");
      b.put("sid", paramC.e());
    }
    
    public void a(int paramInt)
    {
      b.put("position", String.valueOf(paramInt));
    }
    
    public void a(cn.dbox.core.b.d paramD)
    {
      String str = "";
      switch (b.1.f[paramD.ordinal()])
      {
      default: 
        paramD = str;
      }
      for (;;)
      {
        b.put("element", paramD);
        return;
        paramD = "banner_ad";
        continue;
        paramD = "list_ad";
        continue;
        paramD = "listad_down";
        continue;
        paramD = "details_down";
      }
    }
    
    public void a(String paramString)
    {
      b.put("chanid", String.valueOf(paramString));
    }
    
    protected void b(String paramString)
    {
      b.p localP = new b.p(b.this);
      localP.a(d.f(), b, paramString);
      if ((c.n() != null) && (!((String)b.get("type")).equals("details_down"))) {
        localP.a(d.f(), b, c.n());
      }
    }
    
    public void c(String paramString)
    {
      b.put("acid", String.valueOf(paramString));
    }
  }
  
  class g
    extends b.c
  {
    g(cn.dbox.core.c paramC)
    {
      super(paramC, cn.dbox.core.b.n.d);
      b.put("sid", paramC.e());
      a(b, "-1");
    }
    
    public void a(cn.dbox.core.b.b paramB)
    {
      String str = "";
      switch (b.1.e[paramB.ordinal()])
      {
      default: 
        paramB = str;
      }
      for (;;)
      {
        b.put("phase", paramB);
        return;
        paramB = "load_success";
        continue;
        paramB = "load_failed";
        continue;
        paramB = "load_cancel";
        continue;
        paramB = "close_lp";
        continue;
        paramB = "lp_url";
      }
    }
    
    void a(cn.dbox.core.b.f paramF)
    {
      String str = "";
      switch (b.1.c[paramF.ordinal()])
      {
      default: 
        paramF = str;
      }
      for (;;)
      {
        b.put("type", paramF);
        return;
        paramF = "container_entry_clk";
        continue;
        paramF = "landing";
      }
    }
    
    void a(String paramString)
    {
      b.put("chanid", paramString);
    }
    
    void c(String paramString)
    {
      b.put("acid", paramString);
    }
    
    public void d(String paramString)
    {
      b.put("data", paramString);
    }
  }
  
  class h
    extends b.c
  {
    h(cn.dbox.core.c paramC)
    {
      super(paramC, cn.dbox.core.b.n.d);
      b.put("sid", paramC.e());
      a(b, "-1");
    }
    
    public void a(cn.dbox.core.b.b paramB)
    {
      String str = "";
      switch (b.1.e[paramB.ordinal()])
      {
      default: 
        paramB = str;
      }
      for (;;)
      {
        b.put("phase", paramB);
        return;
        paramB = "load_success";
        continue;
        paramB = "load_failed";
        continue;
        paramB = "load_cancel";
        continue;
        paramB = "close_lp";
        continue;
        paramB = "lp_url";
      }
    }
    
    void a(cn.dbox.core.b.f paramF)
    {
      String str = "";
      switch (b.1.c[paramF.ordinal()])
      {
      default: 
        paramF = str;
      }
      for (;;)
      {
        b.put("type", paramF);
        return;
        paramF = "container_entry_clk";
        continue;
        paramF = "landing";
      }
    }
    
    void a(String paramString)
    {
      b.put("chanid", paramString);
    }
    
    void c(String paramString)
    {
      b.put("acid", paramString);
    }
    
    public void d(String paramString)
    {
      b.put("data", paramString);
    }
  }
  
  class i
    extends b.c
  {
    i(cn.dbox.core.c paramC)
    {
      super(paramC, cn.dbox.core.b.n.d);
      b.put("sid", paramC.e());
      a(b, "-1");
    }
    
    void a(cn.dbox.core.b.e paramE)
    {
      String str = "";
      switch (b.1.d[paramE.ordinal()])
      {
      default: 
        paramE = str;
      }
      for (;;)
      {
        b.put("action", paramE);
        return;
        paramE = "slide";
        continue;
        paramE = "click";
      }
    }
    
    void a(cn.dbox.core.b.f paramF)
    {
      String str = "";
      switch (b.1.c[paramF.ordinal()])
      {
      default: 
        paramF = str;
      }
      for (;;)
      {
        b.put("type", paramF);
        return;
        paramF = "container_entry_clk";
        continue;
        paramF = "landing";
      }
    }
    
    void a(String paramString)
    {
      b.put("chanid", paramString);
    }
    
    void c(String paramString)
    {
      b.put("acid", paramString);
    }
  }
  
  class j
    extends b.c
  {
    j(cn.dbox.core.c paramC, a paramA)
    {
      super(paramC, paramA, cn.dbox.core.b.n.h);
      b.put("id", paramA.i());
      b.put("sid", paramC.e());
    }
    
    void a(cn.dbox.core.b.g paramG)
    {
      String str = "";
      switch (b.1.g[paramG.ordinal()])
      {
      default: 
        paramG = str;
      }
      for (;;)
      {
        b.put("type", paramG);
        return;
        paramG = "download_start";
        continue;
        paramG = "download_repeat";
        continue;
        paramG = "download_finish";
        continue;
        paramG = "download_failed";
        continue;
        paramG = "download_cancel";
        continue;
        paramG = "install_success";
        continue;
        paramG = "run";
      }
    }
  }
  
  class k
    extends b.c
  {
    k(cn.dbox.core.c paramC)
    {
      super(paramC, cn.dbox.core.b.n.b);
      b.put("sid", paramC.e());
      if ((paramC.k() == null) || (paramC.k().equals("")))
      {
        a(b, "-1");
        return;
      }
      a(b, paramC.k());
    }
    
    void a(Entrance.EntryReportType paramEntryReportType)
    {
      String str = "";
      switch (b.1.a[paramEntryReportType.ordinal()])
      {
      default: 
        paramEntryReportType = str;
      }
      for (;;)
      {
        b.put("type", paramEntryReportType);
        return;
        paramEntryReportType = "entry_imp";
        continue;
        paramEntryReportType = "entry_clk";
        continue;
        paramEntryReportType = "presented";
      }
    }
  }
  
  class l
    extends b.c
  {
    l(cn.dbox.core.c paramC)
    {
      super(paramC, cn.dbox.core.b.n.f);
      a(b, "-1");
      b.put("sid", "");
      b.put("type", "start");
      b.put("network", e.n(paramC.f()));
      b.put("pb[name]", e.d(paramC.f()));
      b.put("pb[version]", e.c(paramC.f()));
    }
  }
  
  class m
    extends b.c
  {
    m(cn.dbox.core.c paramC)
    {
      super(paramC, cn.dbox.core.b.n.e);
      b.put("type", "ad_imp");
      b.put("sid", paramC.e());
    }
    
    void a(String paramString)
    {
      b.put("tr", paramString);
      a(b, paramString);
    }
    
    protected void b(String paramString)
    {
      new b.n(b.this, d.f()).a(b, String.valueOf(cn.dbox.core.b.n.e.ordinal()), paramString);
    }
  }
  
  class n
    implements cn.dbox.core.c.c.a
  {
    private Context b;
    private cn.dbox.core.c.c c;
    
    protected n(Context paramContext)
    {
      b = paramContext;
    }
    
    public void a(cn.dbox.core.c.c paramC)
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
      c = new cn.dbox.core.c.c(b, paramString2, "", null, "POST", paramHashMap, 20000, this);
      c.run();
    }
  }
  
  class o
    extends b.c
  {
    o(cn.dbox.core.c paramC, a paramA)
    {
      super(paramC, paramA, cn.dbox.core.b.n.i);
      b.put("sid", paramC.e());
    }
    
    public void a(cn.dbox.core.b.i paramI)
    {
      String str = "";
      switch (b.1.h[paramI.ordinal()])
      {
      default: 
        paramI = str;
      }
      for (;;)
      {
        b.put("type", paramI);
        return;
        paramI = "la_success";
        continue;
        paramI = "la_failed";
        continue;
        paramI = "la_failsafe_success";
        continue;
        paramI = "la_failsafe_failed";
      }
    }
    
    public void a(String paramString)
    {
      if (paramString != null) {
        b.put("failsafe", paramString);
      }
    }
  }
  
  class p
    implements cn.dbox.core.c.c.a
  {
    p() {}
    
    protected void a(Context paramContext, HashMap<String, String> paramHashMap, String paramString)
    {
      b.b().b("report type: " + (String)paramHashMap.get("type"));
      b.b().b("report params: " + paramHashMap.toString());
      paramContext = new cn.dbox.core.c.c(paramContext, paramString, "", null, "POST", f.a(paramHashMap), 20000, this);
      paramContext.a((String)paramHashMap.get("type"));
      paramContext.b();
    }
    
    public void a(cn.dbox.core.c.c paramC)
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
  
  class q
    extends b.c
  {
    q(cn.dbox.core.c paramC)
    {
      super(paramC, cn.dbox.core.b.n.j);
      a(b, "-1");
    }
    
    void a(String paramString)
    {
      if (!TextUtils.isEmpty(paramString)) {
        b.put("d_info", f.a("d!j@d#g$r%s^j&h*", paramString));
      }
    }
  }
  
  class r
    extends b.c
  {
    r(cn.dbox.core.c paramC)
    {
      super(paramC, cn.dbox.core.b.n.f);
      b.put("sid", paramC.e());
    }
    
    public void a(cn.dbox.core.b.o paramO)
    {
      String str = "";
      switch (b.1.i[paramO.ordinal()])
      {
      default: 
        paramO = str;
      }
      for (;;)
      {
        b.put("type", paramO);
        return;
        paramO = "setting_entry_clk";
        continue;
        paramO = "about_clk";
        continue;
        paramO = "feedback_submit";
        continue;
        paramO = "contact_clk";
      }
    }
    
    public void a(String paramString)
    {
      if (paramString != null) {
        b.put("message", paramString);
      }
    }
    
    public void c(String paramString)
    {
      if (paramString != null) {
        b.put("contact", paramString);
      }
    }
  }
}
