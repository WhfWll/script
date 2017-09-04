package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.a.a.a.a.h;
import com.tencent.wxop.stat.StatConfig;
import com.tencent.wxop.stat.StatSpecifyReportedInfo;
import com.tencent.wxop.stat.au;
import com.tencent.wxop.stat.common.a;
import com.tencent.wxop.stat.common.k;
import com.tencent.wxop.stat.common.q;
import org.json.JSONObject;

public abstract class e
{
  protected static String j = null;
  private StatSpecifyReportedInfo a = null;
  protected String b = null;
  protected long c;
  protected int d;
  protected a e = null;
  protected int f;
  protected String g = null;
  protected String h = null;
  protected String i = null;
  protected boolean k = false;
  protected Context l;
  
  e(Context paramContext, int paramInt, StatSpecifyReportedInfo paramStatSpecifyReportedInfo)
  {
    l = paramContext;
    c = (System.currentTimeMillis() / 1000L);
    d = paramInt;
    h = StatConfig.getInstallChannel(paramContext);
    i = k.j(paramContext);
    b = StatConfig.getAppKey(paramContext);
    if (paramStatSpecifyReportedInfo != null)
    {
      a = paramStatSpecifyReportedInfo;
      if (k.c(paramStatSpecifyReportedInfo.getAppKey())) {
        b = paramStatSpecifyReportedInfo.getAppKey();
      }
      if (k.c(paramStatSpecifyReportedInfo.getInstallChannel())) {
        h = paramStatSpecifyReportedInfo.getInstallChannel();
      }
      if (k.c(paramStatSpecifyReportedInfo.getVersion())) {
        i = paramStatSpecifyReportedInfo.getVersion();
      }
      k = paramStatSpecifyReportedInfo.isImportant();
    }
    g = StatConfig.getCustomUserId(paramContext);
    e = au.a(paramContext).b(paramContext);
    if (a() != f.i) {}
    for (f = k.s(paramContext).intValue();; f = (-f.i.a()))
    {
      if (!h.c(j))
      {
        paramContext = StatConfig.getLocalMidOnly(paramContext);
        j = paramContext;
        if (!k.c(paramContext)) {
          j = "0";
        }
      }
      return;
    }
  }
  
  public abstract f a();
  
  public abstract boolean a(JSONObject paramJSONObject);
  
  public boolean b(JSONObject paramJSONObject)
  {
    try
    {
      q.a(paramJSONObject, "ky", b);
      paramJSONObject.put("et", a().a());
      if (e != null)
      {
        paramJSONObject.put("ui", e.b());
        q.a(paramJSONObject, "mc", e.c());
        int m = e.d();
        paramJSONObject.put("ut", m);
        if ((m == 0) && (k.w(l) == 1)) {
          paramJSONObject.put("ia", 1);
        }
      }
      q.a(paramJSONObject, "cui", g);
      if (a() != f.b)
      {
        q.a(paramJSONObject, "av", i);
        q.a(paramJSONObject, "ch", h);
      }
      if (k) {
        paramJSONObject.put("impt", 1);
      }
      q.a(paramJSONObject, "mid", j);
      paramJSONObject.put("idx", f);
      paramJSONObject.put("si", d);
      paramJSONObject.put("ts", c);
      paramJSONObject.put("dts", k.a(l, false));
      boolean bool = a(paramJSONObject);
      return bool;
    }
    catch (Throwable paramJSONObject) {}
    return false;
  }
  
  public long c()
  {
    return c;
  }
  
  public StatSpecifyReportedInfo d()
  {
    return a;
  }
  
  public Context e()
  {
    return l;
  }
  
  public boolean f()
  {
    return k;
  }
  
  public String g()
  {
    try
    {
      Object localObject = new JSONObject();
      b((JSONObject)localObject);
      localObject = ((JSONObject)localObject).toString();
      return localObject;
    }
    catch (Throwable localThrowable) {}
    return "";
  }
}
