package cn.domob.android.ads;

import android.content.Context;
import cn.domob.android.b.a;
import cn.domob.android.f.c;
import cn.domob.android.f.g;
import cn.domob.android.i.i;
import cn.domob.android.i.i.a;
import java.util.HashMap;
import java.util.Map;

public class w
{
  private static final String A = "sw";
  private static final String B = "sh";
  private static final String C = "so";
  private static final String D = "phase";
  private static final String E = "origin";
  private static final String F = "data";
  public static final String a = "eid";
  public static final String b = "gdim";
  public static final String c = "adim";
  private static cn.domob.android.i.f d = new cn.domob.android.i.f(w.class.getSimpleName());
  private static final String g = "click_report";
  private static final String h = "impression_report";
  private static final String i = "v";
  private static final String j = "sv";
  private static final String k = "rt";
  private static final String l = "ua";
  private static final String m = "ipb";
  private static final String n = "ppid";
  private static final String o = "idv";
  private static final String p = "ts";
  private static final String q = "rnd";
  private static final String r = "vcode";
  private static final String s = "tr";
  private static final String t = "type";
  private static final String u = "pkg";
  private static final String v = "vc";
  private static final String w = "vn";
  private static final String x = "total";
  private static final String y = "failsafe";
  private static final String z = "frame";
  private g G;
  private Context e;
  private String f;
  
  public w(Context paramContext, String paramString)
  {
    e = paramContext;
    f = paramString;
  }
  
  private void a(String paramString1, cn.domob.android.f.f paramF, String paramString2)
  {
    G = new g()
    {
      public void a(String paramAnonymousString1, String paramAnonymousString2)
      {
        super.a(paramAnonymousString1, paramAnonymousString2);
      }
    };
    c.a().b(e, paramString1, paramF, G);
  }
  
  private void a(HashMap<String, String> paramHashMap)
  {
    Object localObject = paramHashMap;
    if (paramHashMap == null) {
      localObject = new HashMap();
    }
    ((HashMap)localObject).put("v", "20140529");
    ((HashMap)localObject).put("sv", "040602");
    ((HashMap)localObject).put("idv", a.g(e));
  }
  
  private void a(HashMap<String, String> paramHashMap, a paramA)
  {
    if (paramHashMap == null)
    {
      d.e("Build Report Common Params Error, paramsMap is null.");
      return;
    }
    String str1 = "";
    if (paramA != null) {
      if (a == null) {
        break label145;
      }
    }
    label145:
    for (str1 = a;; str1 = "")
    {
      paramHashMap.put("origin", b);
      paramA = h.a().a(e);
      String str2 = a.f(e);
      i.a localA = i.a(paramA, str2, str1);
      paramHashMap.put("tr", str1);
      paramHashMap.put("ts", localA.a());
      paramHashMap.put("rnd", localA.b());
      paramHashMap.put("vcode", localA.c());
      paramHashMap.put("ipb", paramA);
      paramHashMap.put("ppid", f);
      paramHashMap.put("ua", str2);
      return;
    }
  }
  
  public void a(String paramString, b paramB, HashMap<String, String> paramHashMap)
  {
    d.a("Prepare to report:click_report");
    if (!cn.domob.android.i.h.e(paramString))
    {
      Object localObject = paramHashMap;
      if (paramHashMap == null) {
        localObject = new HashMap();
      }
      a((HashMap)localObject, paramB);
      d.a("Click report url:" + paramString);
      a(paramString, new cn.domob.android.f.f((Map)localObject), "click_report");
      return;
    }
    d.e("Click report URL is null or empty.");
  }
  
  public void a(String paramString, f paramF, HashMap<String, String> paramHashMap)
  {
    d.a("Prepare to report:impression_report");
    if (!cn.domob.android.i.h.e(paramString))
    {
      Object localObject = paramHashMap;
      if (paramHashMap == null) {
        localObject = new HashMap();
      }
      a((HashMap)localObject, paramF);
      ((HashMap)localObject).put("frame", d);
      ((HashMap)localObject).put("sw", String.valueOf(e));
      ((HashMap)localObject).put("sh", String.valueOf(f));
      ((HashMap)localObject).put("so", a.r(e));
      ((HashMap)localObject).put("phase", h);
      if (i != 0L) {
        ((HashMap)localObject).put("total", String.valueOf(i));
      }
      d.a("Impression report urls:" + paramString);
      a(paramString, new cn.domob.android.f.f((Map)localObject), "impression_report-" + h);
      return;
    }
    d.e("Impression report URL is null or empty.");
  }
  
  public void a(String paramString1, h paramH, String paramString2, c paramC, HashMap<String, String> paramHashMap)
  {
    d.a("Prepare to report:" + paramString2);
    if (!cn.domob.android.i.h.e(paramString1))
    {
      Object localObject = paramHashMap;
      if (paramHashMap == null) {
        localObject = new HashMap();
      }
      a((HashMap)localObject, paramC);
      a((HashMap)localObject);
      if (paramH != null) {
        ((HashMap)localObject).put("rt", String.valueOf(paramH.ordinal()));
      }
      if (paramString2 != null) {
        ((HashMap)localObject).put("type", paramString2);
      }
      if (paramC != null)
      {
        if (d != null) {
          ((HashMap)localObject).put("pkg", d);
        }
        if (e != -1) {
          ((HashMap)localObject).put("vc", String.valueOf(e));
        }
        if (f != null) {
          ((HashMap)localObject).put("vn", f);
        }
        if (g != null) {
          ((HashMap)localObject).put("failsafe", g);
        }
        if (h != null) {
          ((HashMap)localObject).put("data", h);
        }
        if (i != null) {
          ((HashMap)localObject).put("rgid", i);
        }
        if (j != null) {
          ((HashMap)localObject).put("rid", j);
        }
      }
      d.a("Event report urls: " + paramString1);
      a(paramString1, new cn.domob.android.f.f((Map)localObject), paramString2);
      return;
    }
    d.e("Event report URL is null or empty.");
  }
  
  protected void a(String paramString1, String paramString2)
  {
    G = new g()
    {
      public void a(String paramAnonymousString1, String paramAnonymousString2) {}
    };
    c.a().a(e, paramString1, G);
  }
  
  public class a
  {
    public String a;
    public String b = "s";
    
    public a() {}
  }
  
  public class b
    extends w.a
  {
    public b()
    {
      super();
    }
  }
  
  public class c
    extends w.a
  {
    public String d;
    public int e = -1;
    public String f;
    public String g;
    public String h;
    public String i;
    public String j;
    
    public c()
    {
      super();
    }
  }
  
  public class d
  {
    public static final String A = "sp_res_incomplete";
    public static final String B = "rt_sp_ad_timeout";
    public static final String C = "rt_sp_res_timeout";
    public static final String D = "sp_load_img_fail";
    public static final String E = "rgid";
    public static final String F = "rid";
    public static final String G = "cached_reso_not_exist";
    public static final String H = "cached_reso_invalid";
    public static final String I = "reso_dl_succ";
    public static final String J = "resog_dl_succ";
    public static final String K = "reso_dl_failed_space_not_enough";
    public static final String L = "reso_dl_failed_conn_error";
    public static final String M = "reso_dl_failed_process_error";
    public static final String N = "reso_dl_failed_no_sd";
    public static final String O = "detail_success";
    public static final String P = "detail_failed";
    public static final String a = "load_success";
    public static final String b = "load_failed";
    public static final String c = "load_cancel";
    public static final String d = "lp_url";
    public static final String e = "close_lp";
    public static final String f = "confirm_download";
    public static final String g = "download_start";
    public static final String h = "download_finish";
    public static final String i = "download_cancel";
    public static final String j = "download_failed";
    public static final String k = "download_repeat";
    public static final String l = "download_md5_failed";
    public static final String m = "install_success";
    public static final String n = "run";
    public static final String o = "dd_report_error_01";
    public static final String p = "la_success";
    public static final String q = "la_failed";
    public static final String r = "la_failsafe_success";
    public static final String s = "la_failsafe_failed";
    public static final String t = "up_notice";
    public static final String u = "up_alert";
    public static final String v = "up_ok";
    public static final String w = "up_cancel";
    public static final String x = "up_skip";
    public static final String y = "sp_no_creative";
    public static final String z = "sp_expire";
    
    public d() {}
  }
  
  public class e
  {
    public static final String a = "s";
    public static final String b = "m";
    public static final String c = "f";
    public static final String d = "p";
    
    public e() {}
  }
  
  public class f
    extends w.a
  {
    public String d;
    public int e;
    public int f;
    public String g;
    public String h = "s";
    public long i;
    
    public f()
    {
      super();
    }
  }
  
  public class g
  {
    public static final String a = "s";
    public static final String b = "ac";
    
    public g() {}
  }
  
  public static enum h
  {
    private h() {}
  }
}
