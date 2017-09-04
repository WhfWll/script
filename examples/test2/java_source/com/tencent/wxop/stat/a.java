package com.tencent.wxop.stat;

import android.content.Context;
import android.content.IntentFilter;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.common.e;
import com.tencent.wxop.stat.common.k;
import com.tencent.wxop.stat.common.q;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.HttpHost;
import org.json.JSONObject;

public class a
{
  private static a g = null;
  private List<String> a = null;
  private volatile int b = 2;
  private volatile String c = "";
  private volatile HttpHost d = null;
  private e e = null;
  private int f = 0;
  private Context h = null;
  private StatLogger i = null;
  
  private a(Context paramContext)
  {
    h = paramContext.getApplicationContext();
    e = new e();
    i.a(paramContext);
    i = k.b();
    l();
    i();
    g();
  }
  
  public static a a(Context paramContext)
  {
    if (g == null) {}
    try
    {
      if (g == null) {
        g = new a(paramContext);
      }
      return g;
    }
    finally {}
  }
  
  private boolean b(String paramString)
  {
    return Pattern.compile("(2[5][0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})").matcher(paramString).matches();
  }
  
  private void i()
  {
    a = new ArrayList(10);
    a.add("117.135.169.101");
    a.add("140.207.54.125");
    a.add("180.153.8.53");
    a.add("120.198.203.175");
    a.add("14.17.43.18");
    a.add("163.177.71.186");
    a.add("111.30.131.31");
    a.add("123.126.121.167");
    a.add("123.151.152.111");
    a.add("113.142.45.79");
    a.add("123.138.162.90");
    a.add("103.7.30.94");
  }
  
  private String j()
  {
    try
    {
      if (!b("pingma.qq.com"))
      {
        String str = InetAddress.getByName("pingma.qq.com").getHostAddress();
        return str;
      }
    }
    catch (Exception localException)
    {
      i.e(localException);
    }
    return "";
  }
  
  private void k()
  {
    String str1 = j();
    if (StatConfig.isDebugEnable()) {
      i.i("remoteIp ip is " + str1);
    }
    Object localObject;
    if (k.c(str1))
    {
      if (!a.contains(str1)) {
        break label81;
      }
      localObject = str1;
    }
    for (;;)
    {
      StatConfig.setStatReportUrl("http://" + (String)localObject + ":80/mstat/report");
      return;
      label81:
      String str2 = (String)a.get(f);
      localObject = str2;
      if (StatConfig.isDebugEnable())
      {
        i.w(str1 + " not in ip list, change to:" + str2);
        localObject = str2;
      }
    }
  }
  
  private void l()
  {
    b = 0;
    d = null;
    c = null;
  }
  
  public HttpHost a()
  {
    return d;
  }
  
  public void a(String paramString)
  {
    if (StatConfig.isDebugEnable()) {
      i.i("updateIpList " + paramString);
    }
    try
    {
      if (k.c(paramString))
      {
        paramString = new JSONObject(paramString);
        if (paramString.length() > 0)
        {
          Iterator localIterator = paramString.keys();
          while (localIterator.hasNext())
          {
            Object localObject1 = paramString.getString((String)localIterator.next());
            if (k.c((String)localObject1))
            {
              localObject1 = ((String)localObject1).split(";");
              int k = localObject1.length;
              int j = 0;
              while (j < k)
              {
                Object localObject2 = localObject1[j];
                if (k.c((String)localObject2))
                {
                  localObject2 = ((String)localObject2).split(":");
                  if (localObject2.length > 1)
                  {
                    localObject2 = localObject2[0];
                    if ((b((String)localObject2)) && (!a.contains(localObject2)))
                    {
                      if (StatConfig.isDebugEnable()) {
                        i.i("add new ip:" + (String)localObject2);
                      }
                      a.add(localObject2);
                    }
                  }
                }
                j += 1;
              }
            }
          }
        }
      }
      return;
    }
    catch (Exception paramString)
    {
      i.e(paramString);
      f = new Random().nextInt(a.size());
    }
  }
  
  public String b()
  {
    return c;
  }
  
  public int c()
  {
    return b;
  }
  
  public void d()
  {
    f = ((f + 1) % a.size());
  }
  
  public boolean e()
  {
    return b == 1;
  }
  
  public boolean f()
  {
    return b != 0;
  }
  
  void g()
  {
    if (q.f(h))
    {
      if (StatConfig.g) {
        k();
      }
      c = k.l(h);
      if (StatConfig.isDebugEnable()) {
        i.i("NETWORK name:" + c);
      }
      if (k.c(c)) {
        if (!"WIFI".equalsIgnoreCase(c)) {
          break label117;
        }
      }
      label117:
      for (b = 1;; b = 2)
      {
        d = k.a(h);
        if (StatServiceImpl.a()) {
          StatServiceImpl.d(h);
        }
        return;
      }
    }
    if (StatConfig.isDebugEnable()) {
      i.i("NETWORK TYPE: network is close.");
    }
    l();
  }
  
  public void h()
  {
    h.getApplicationContext().registerReceiver(new b(this), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
  }
}
