package cn.domob.android.ads;

import android.content.Context;
import android.text.TextUtils;
import cn.domob.android.f.c;
import cn.domob.android.i.d;
import java.util.HashMap;

class i
{
  private static final String A = "pb[version]";
  private static final String B = "d[coord_timestamp]";
  private static final String C = "d[coord]";
  private static final String D = "d[coord_acc]";
  private static final String E = "d[coord_status]";
  private static final String F = "d[coord_accuracy]";
  private static final String G = "d[pc]";
  private static final String H = "d[dob]";
  private static final String I = "d[gender]";
  private static final String J = "spot";
  private static final String K = "network";
  private static final String L = "lpkg";
  private static final String M = "or";
  private static final String N = "orv";
  private static final String O = "dma";
  private static final String P = "ama";
  private static final String Q = "an";
  private static final String R = "lac";
  private static final String S = "cell";
  private static final String T = "mcc";
  private static final String U = "mnc";
  private static final String V = "ar";
  private static final String W = "ppid";
  private static final String X = "scan";
  private static final String Y = "iffd";
  private static final String Z = "cffd";
  protected static final int a = 1;
  private static final String aa = "cd";
  private static final String ab = "dmid";
  private static final String ac = "aaid";
  private static final String ad = "act";
  private static cn.domob.android.i.f b = new cn.domob.android.i.f(i.class.getSimpleName());
  private static final String e = "sdk";
  private static final String f = "rt";
  private static final String g = "pt";
  private static final String h = "ts";
  private static final String i = "ua";
  private static final String j = "ipb";
  private static final String k = "idv";
  private static final String l = "v";
  private static final String m = "sv";
  private static final String n = "l";
  private static final String o = "f";
  private static final String p = "e";
  private static final String q = "cid";
  private static final String r = "dim";
  private static final String s = "so";
  private static final String t = "sw";
  private static final String u = "sh";
  private static final String v = "sd";
  private static final String w = "c";
  private static final String x = "k";
  private static final String y = "pb[identifier]";
  private static final String z = "pb[name]";
  private cn.domob.android.f.g ae;
  private g c;
  private Context d;
  
  public i(g paramG)
  {
    b.b("New instance of DomobAdRequest.");
    c = paramG;
    d = paramG.x();
  }
  
  private cn.domob.android.f.f c()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("sdk", String.valueOf(1));
    localHashMap.put("rt", String.valueOf(1));
    localHashMap.put("ts", String.valueOf(System.currentTimeMillis()));
    localHashMap.put("ua", cn.domob.android.b.a.f(d));
    localHashMap.put("ipb", c.m());
    localHashMap.put("ppid", c.n());
    localHashMap.put("idv", cn.domob.android.b.a.g(d));
    localHashMap.put("v", String.format("%s-%s-%s", new Object[] { "20141125", "android", "20140529" }));
    localHashMap.put("sv", "040602");
    localHashMap.put("l", cn.domob.android.b.a.h());
    localHashMap.put("f", "jsonp");
    localHashMap.put("e", "UTF-8");
    localHashMap.put("cid", h.a().b(d));
    if (c.o() != 0) {
      localHashMap.put("pt", String.valueOf(c.o()));
    }
    if (c.q() != null) {
      localHashMap.put("dim", c.q());
    }
    localHashMap.put("so", cn.domob.android.b.a.r(d));
    localHashMap.put("sw", String.valueOf(cn.domob.android.b.a.u(d)));
    localHashMap.put("sh", String.valueOf(cn.domob.android.b.a.v(d)));
    localHashMap.put("sd", String.valueOf(cn.domob.android.b.a.t(d)));
    String str = String.format("%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s", new Object[] { "gif", "ltx", "la", "hv", "expd", "iad", "spi", "mraid1", "wvl", "tpup", "gd" });
    Object localObject = str;
    if (cn.domob.android.b.a.F(d)) {
      localObject = str + ",vib\t";
    }
    localHashMap.put("c", localObject);
    localHashMap.put("pb[identifier]", cn.domob.android.b.a.a(d));
    localHashMap.put("pb[name]", cn.domob.android.b.a.d(d));
    localHashMap.put("pb[version]", cn.domob.android.b.a.c(d));
    localHashMap.put("network", cn.domob.android.b.a.o(d));
    if (c.h() == true)
    {
      localObject = "1";
      localHashMap.put("ar", localObject);
      if (c.s() != null) {
        localHashMap.put("k", c.s());
      }
      localObject = cn.domob.android.b.a.y(d);
      if (localObject == null) {
        break label1272;
      }
      localHashMap.put("d[coord_timestamp]", String.valueOf(cn.domob.android.b.a.g()));
      localHashMap.put("d[coord]", localObject);
      localHashMap.put("d[coord_acc]", String.valueOf(cn.domob.android.b.a.d()));
      localHashMap.put("d[coord_accuracy]", String.valueOf(cn.domob.android.b.a.e()));
    }
    for (;;)
    {
      localObject = cn.domob.android.b.a.D(d);
      b.b(String.format("Base info: cid=%s, lac=%s, mcc=%s, mnc=%s", new Object[] { localObject[0], localObject[1], localObject[2], localObject[3] }));
      localHashMap.put("cell", localObject[0]);
      localHashMap.put("lac", localObject[1]);
      localHashMap.put("mcc", localObject[2]);
      localHashMap.put("mnc", localObject[3]);
      if (c.t() != null) {
        localHashMap.put("d[pc]", c.t());
      }
      if (c.v() != null) {
        localHashMap.put("d[dob]", c.v());
      }
      if (c.u() != null) {
        localHashMap.put("d[gender]", c.u());
      }
      if (c.w() != null) {
        localHashMap.put("spot", c.w());
      }
      if (h.a().d() != null)
      {
        localHashMap.put("lpkg", h.a().d());
        h.a().d(null);
      }
      if (h.a().f() != null) {
        localHashMap.put("or", h.a().f());
      }
      if (h.a().g() != null) {
        localHashMap.put("orv", h.a().g());
      }
      localObject = cn.domob.android.b.a.z(d);
      if (localObject != null)
      {
        b.b("des encode dma:" + ((String)localObject).toUpperCase() + "-->" + cn.domob.android.i.h.a("d!j@d#g$r%s^j&h*", ((String)localObject).toUpperCase()));
        localHashMap.put("dma", cn.domob.android.i.h.a("d!j@d#g$r%s^j&h*", ((String)localObject).toUpperCase()));
      }
      localObject = cn.domob.android.b.a.A(d);
      if (localObject != null)
      {
        b.b("des encode ama:" + ((String)localObject).toUpperCase() + "-->" + cn.domob.android.i.h.a("d!j@d#g$r%s^j&h*", ((String)localObject).toUpperCase()));
        localHashMap.put("ama", cn.domob.android.i.h.a("d!j@d#g$r%s^j&h*", ((String)localObject).toUpperCase()));
      }
      localObject = cn.domob.android.b.a.B(d);
      if (localObject != null)
      {
        b.b("des encode apSSID:" + ((String)localObject).toUpperCase() + "-->" + cn.domob.android.i.h.a("d!j@d#g$r%s^j&h*", (String)localObject));
        localHashMap.put("an", cn.domob.android.i.h.a("d!j@d#g$r%s^j&h*", (String)localObject));
      }
      localObject = cn.domob.android.b.a.C(d);
      if (!cn.domob.android.i.h.e((String)localObject))
      {
        b.b("Scaned AP mac and name: " + (String)localObject);
        localHashMap.put("scan", localObject);
      }
      localObject = cn.domob.android.e.a.a(d);
      if (!cn.domob.android.i.h.e(localObject[0])) {
        localHashMap.put("iffd", localObject[0]);
      }
      if (!cn.domob.android.i.h.e(localObject[1])) {
        localHashMap.put("cffd", localObject[1]);
      }
      localHashMap.put("cd", a.a.a.a.a.a.a(d));
      localObject = d.a(d, "/.dm/dm.file");
      if ((!cn.domob.android.i.h.e((String)localObject)) && (((String)localObject).getBytes().length <= 256)) {
        localHashMap.put("dmid", localObject);
      }
      localObject = cn.domob.android.b.a.G(d);
      if (!cn.domob.android.i.h.e((String)localObject)) {
        localHashMap.put("aaid", localObject);
      }
      localHashMap.put("act", String.valueOf(c.I()));
      return new cn.domob.android.f.f(localHashMap);
      localObject = "0";
      break;
      label1272:
      localHashMap.put("d[coord_status]", String.valueOf(cn.domob.android.b.a.f()));
    }
  }
  
  protected void a()
  {
    ae = new cn.domob.android.f.g()
    {
      public void a(String paramAnonymousString1, String paramAnonymousString2)
      {
        String str = null;
        paramAnonymousString2 = null;
        if (!TextUtils.isEmpty(paramAnonymousString1))
        {
          i.b().a("Ad resp string:" + paramAnonymousString1);
          paramAnonymousString1 = j.a(i.a(i.this), paramAnonymousString1);
          if (paramAnonymousString1 == null) {
            break label144;
          }
          j.c localC = paramAnonymousString1.d();
          if (localC == null) {
            break label139;
          }
          str = localC.r();
          paramAnonymousString2 = localC.q();
          a.a.a.a.a.a.a(i.a(i.this), paramAnonymousString1.g(), str, i.b(i.this).n(), paramAnonymousString2);
        }
        label139:
        label144:
        for (;;)
        {
          i.b(i.this).a(paramAnonymousString1, i.c(i.this).a().d());
          return;
          i.b().e("Ad respStr is null.");
          paramAnonymousString1 = str;
          continue;
          str = null;
          break;
        }
      }
    };
    c.a().b(d, h.a().b(), c(), ae);
  }
  
  static abstract interface a
  {
    public abstract void a(j paramJ, int paramInt);
  }
}
