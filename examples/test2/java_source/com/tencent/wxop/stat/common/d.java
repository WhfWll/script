package com.tencent.wxop.stat.common;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import com.tencent.wxop.stat.StatConfig;
import com.tencent.wxop.stat.au;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONObject;

class d
{
  String a;
  String b = "2.0.3";
  DisplayMetrics c;
  int d = Build.VERSION.SDK_INT;
  String e = Build.MODEL;
  String f = Build.MANUFACTURER;
  String g = Locale.getDefault().getLanguage();
  String h;
  String i;
  String j;
  String k;
  int l = 0;
  String m = null;
  String n = null;
  Context o = null;
  private String p = null;
  private String q = null;
  private String r = null;
  private String s = null;
  
  private d(Context paramContext)
  {
    o = paramContext.getApplicationContext();
    c = k.d(o);
    a = k.j(o);
    h = StatConfig.getInstallChannel(o);
    i = k.i(o);
    j = TimeZone.getDefault().getID();
    l = k.o(o);
    k = k.p(o);
    m = o.getPackageName();
    if (d >= 14) {
      p = k.v(o);
    }
    q = k.u(o).toString();
    r = k.t(o);
    s = k.d();
    n = k.C(o);
  }
  
  void a(JSONObject paramJSONObject, Thread paramThread)
  {
    if (paramThread == null)
    {
      if (c != null)
      {
        paramJSONObject.put("sr", c.widthPixels + "*" + c.heightPixels);
        paramJSONObject.put("dpi", c.xdpi + "*" + c.ydpi);
      }
      if (com.tencent.wxop.stat.a.a(o).e())
      {
        paramThread = new JSONObject();
        q.a(paramThread, "bs", q.d(o));
        q.a(paramThread, "ss", q.e(o));
        if (paramThread.length() > 0) {
          q.a(paramJSONObject, "wf", paramThread.toString());
        }
      }
      paramThread = q.a(o, 10);
      if ((paramThread != null) && (paramThread.length() > 0)) {
        q.a(paramJSONObject, "wflist", paramThread.toString());
      }
      q.a(paramJSONObject, "sen", p);
    }
    for (;;)
    {
      q.a(paramJSONObject, "pcn", k.q(o));
      q.a(paramJSONObject, "osn", Build.VERSION.RELEASE);
      q.a(paramJSONObject, "av", a);
      q.a(paramJSONObject, "ch", h);
      q.a(paramJSONObject, "mf", f);
      q.a(paramJSONObject, "sv", b);
      q.a(paramJSONObject, "osd", Build.DISPLAY);
      q.a(paramJSONObject, "prod", Build.PRODUCT);
      q.a(paramJSONObject, "tags", Build.TAGS);
      q.a(paramJSONObject, "id", Build.ID);
      q.a(paramJSONObject, "fng", Build.FINGERPRINT);
      q.a(paramJSONObject, "lch", n);
      q.a(paramJSONObject, "ov", Integer.toString(d));
      paramJSONObject.put("os", 1);
      q.a(paramJSONObject, "op", i);
      q.a(paramJSONObject, "lg", g);
      q.a(paramJSONObject, "md", e);
      q.a(paramJSONObject, "tz", j);
      if (l != 0) {
        paramJSONObject.put("jb", l);
      }
      q.a(paramJSONObject, "sd", k);
      q.a(paramJSONObject, "apn", m);
      q.a(paramJSONObject, "cpu", q);
      q.a(paramJSONObject, "abi", Build.CPU_ABI);
      q.a(paramJSONObject, "abi2", Build.CPU_ABI2);
      q.a(paramJSONObject, "ram", r);
      q.a(paramJSONObject, "rom", s);
      return;
      q.a(paramJSONObject, "thn", paramThread.getName());
      q.a(paramJSONObject, "qq", StatConfig.getQQ(o));
      q.a(paramJSONObject, "cui", StatConfig.getCustomUserId(o));
      if ((k.c(r)) && (r.split("/").length == 2)) {
        q.a(paramJSONObject, "fram", r.split("/")[0]);
      }
      if ((k.c(s)) && (s.split("/").length == 2)) {
        q.a(paramJSONObject, "from", s.split("/")[0]);
      }
      if (au.a(o).b(o) != null) {
        paramJSONObject.put("ui", au.a(o).b(o).b());
      }
      q.a(paramJSONObject, "mid", StatConfig.getLocalMidOnly(o));
    }
  }
}
