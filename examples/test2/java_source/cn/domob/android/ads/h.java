package cn.domob.android.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import cn.domob.android.ads.c.a;
import cn.domob.android.i.f;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class h
{
  public static y a;
  private static f b = new f(h.class.getSimpleName());
  private static h c;
  private static volatile String d = "http://r.domob.cn/a/";
  private static String k = null;
  private static String l = null;
  private static String m = null;
  private String e = null;
  private String f = null;
  private boolean g = false;
  private long h;
  private int i;
  private String j = null;
  
  public h() {}
  
  public static h a()
  {
    try
    {
      if (c == null) {
        c = new h();
      }
      h localH = c;
      return localH;
    }
    finally {}
  }
  
  protected String a(Context paramContext)
  {
    if (e == null) {}
    try
    {
      Object localObject = paramContext.getPackageManager();
      if (localObject != null)
      {
        paramContext = ((PackageManager)localObject).getApplicationInfo(paramContext.getPackageName(), 128);
        if (paramContext != null)
        {
          localObject = metaData;
          if (localObject == null) {}
        }
      }
      try
      {
        paramContext = metaData.getString("DOMOB_PID");
        if ((e == null) && (paramContext != null))
        {
          e = paramContext;
          b(e);
        }
        return e;
      }
      catch (Exception paramContext)
      {
        Log.e(f.b(), "DOMOB_PID is missed in AndroidManifest.xml!");
        return null;
      }
      return null;
    }
    catch (Exception paramContext)
    {
      Log.e(f.b(), "Failed to get applicationInfo.");
      b.a(paramContext);
    }
  }
  
  protected void a(String paramString)
  {
    if (paramString != null)
    {
      b.b("Set AD server url:" + paramString);
      d = paramString;
    }
  }
  
  protected void a(String paramString1, String paramString2)
  {
    k = paramString1;
    l = paramString2;
    m = "0";
    try
    {
      paramString1 = new JSONObject(paramString2);
      paramString2 = paramString1.keys();
      String str1;
      String str2;
      for (;;)
      {
        if (paramString2.hasNext())
        {
          str1 = paramString2.next().toString();
          str2 = paramString1.optString(str1, "0");
        }
      }
    }
    catch (JSONException paramString1)
    {
      try
      {
        Class.forName(str1);
        b.b("origin:" + str1);
        m = str2;
        return;
      }
      catch (Exception localException) {}
      paramString1 = paramString1;
      b.e("ors json exception.");
      return;
    }
  }
  
  protected void a(boolean paramBoolean, long paramLong, int paramInt)
  {
    g = paramBoolean;
    h = paramLong;
    i = paramInt;
  }
  
  protected String b()
  {
    return d;
  }
  
  protected String b(Context paramContext)
  {
    if (f == null) {
      f = new a(paramContext, "domob_config").a("cookie_id", null);
    }
    return f;
  }
  
  protected void b(String paramString)
  {
    if ((paramString == null) || ((paramString != null) && (paramString.length() == 0)))
    {
      Log.e(f.b(), "Incorrect Domob publisher ID.");
      return;
    }
    Log.i(f.b(), "Current publisherID is " + paramString);
    e = paramString;
  }
  
  protected long c()
  {
    return h + i * 1000;
  }
  
  protected void c(String paramString)
  {
    f = paramString;
  }
  
  protected boolean c(Context paramContext)
  {
    boolean bool;
    if (g) {
      if (System.currentTimeMillis() < h + i * 1000) {
        bool = true;
      }
    }
    for (;;)
    {
      if ((!bool) && (g))
      {
        g = false;
        h = 0L;
        i = 0;
        HashMap localHashMap = new HashMap();
        localHashMap.put("timestamp", Long.valueOf(0L));
        localHashMap.put("disable", Boolean.valueOf(false));
        localHashMap.put("time", Integer.valueOf(0));
        new a(paramContext, "domob_config").a(localHashMap);
      }
      return bool;
      bool = false;
      continue;
      bool = false;
    }
  }
  
  protected String d()
  {
    return j;
  }
  
  protected void d(String paramString)
  {
    j = paramString;
  }
  
  protected boolean e()
  {
    return (k != null) && (l != null);
  }
  
  protected boolean e(String paramString)
  {
    if (k != null) {
      try
      {
        if (Integer.parseInt(paramString) <= Integer.parseInt(k)) {
          return false;
        }
        b.b("get origin detection config update");
        return true;
      }
      catch (Exception paramString) {}
    }
    return false;
  }
  
  protected String f()
  {
    return m;
  }
  
  protected String g()
  {
    return k;
  }
}
