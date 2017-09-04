package cn.domob.android.a;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import cn.domob.android.offerwall.DomobActivity;
import cn.domob.android.offerwall.l;
import cn.domob.android.offerwall.m;
import java.io.File;
import java.util.Hashtable;
import java.util.Vector;

public class a
{
  private static final int A = 100;
  private static boolean F = true;
  private static boolean G = true;
  public static Hashtable<String, a> a;
  public static Hashtable<String, Integer> b;
  public static final String c = "typeCancel";
  public static final String d = "typeInstall";
  public static final String e = "actType";
  public static final String f = "appName";
  public static final String g = "appId";
  public static final String h = "notifyId";
  public static final String i = "downloadPath";
  public static final int j = 512;
  public static final int k = 513;
  private static m l = new m(a.class.getSimpleName());
  private static Context m = null;
  private static final int t = 1000;
  private static int u = 0;
  private static Hashtable<String, Integer> v;
  private static Vector<String> w;
  private static final int z = 5;
  private String B = "";
  private String C = "";
  private String D = "";
  private String E = null;
  private PendingIntent H;
  private Handler I = new b(this);
  private f J;
  private Notification n = null;
  private NotificationManager o = null;
  private int p = 0;
  private int q = 0;
  private c r = null;
  private String s = "";
  private final int x = 30;
  private int y = 0;
  
  static
  {
    a = new Hashtable();
    v = new Hashtable();
    b = new Hashtable();
    w = new Vector();
  }
  
  private a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, Context paramContext)
  {
    m = paramContext.getApplicationContext();
    B = paramString1;
    C = paramString2;
    D = paramString3;
    E = paramString5;
    l.a(a.class, "Start to download. appName: " + paramString2 + " pkgName: " + paramString4 + " fileName: " + paramString3);
    if (!v.containsKey(paramString3))
    {
      u += 1;
      v.put(paramString3, Integer.valueOf(u));
    }
    for (p = u;; p = ((Integer)v.get(paramString3)).intValue())
    {
      l.a(a.class, paramString2 + " notification_id is " + p);
      if (paramString4 != null)
      {
        b.put(paramString4, Integer.valueOf(p));
        w.add(paramString4);
        if (w.size() > 30)
        {
          l.a(a.class, "Remove " + (String)w.get(0) + " from AppPkgMapping");
          b.remove(w.get(0));
          w.remove(0);
        }
      }
      return;
      l.a(a.class, " notification_id for " + paramString3 + "already exists");
    }
  }
  
  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    Uri localUri = Uri.parse(paramString1);
    paramContext = new h(paramContext, b(localUri.getHost() + localUri.getPath()), paramString1, null);
    l.a(a.class.getSimpleName(), paramString2 + "  exists");
    paramContext = paramContext.a();
    if (paramContext == null) {
      return null;
    }
    return a(paramContext);
  }
  
  static Intent a(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setDataAndType(Uri.parse("file://" + paramString), "application/vnd.android.package-archive");
    return localIntent;
  }
  
  private void a(c paramC)
  {
    r = paramC;
  }
  
  private void a(String paramString, long paramLong)
  {
    l.b(this, "begin download in " + paramString);
    J = new f(B, paramString, paramLong, new d()
    {
      public void a(int paramAnonymousInt)
      {
        a.l(a.this).sendEmptyMessage(paramAnonymousInt);
      }
      
      public void a(String paramAnonymousString)
      {
        a.e().c(a.this, a.b(a.this) + "下载线程出错，错误原因：" + paramAnonymousString);
        b();
        if (a.c()) {
          a.b(a.this, paramAnonymousString);
        }
        if (a.j(a.this) != null) {
          a.j(a.this).a(6, paramAnonymousString);
        }
      }
    }, m);
    J.start();
    a.put(D, this);
  }
  
  public static void a(String paramString1, String paramString2, String paramString3, Context paramContext, c paramC)
  {
    a(paramString1, paramString2, paramString3, paramContext, paramC, null, F);
  }
  
  public static void a(String paramString1, String paramString2, String paramString3, Context paramContext, c paramC, String paramString4, boolean paramBoolean)
  {
    l.a(a.class, "Download url: " + paramString1);
    Object localObject = Uri.parse(paramString1);
    String str = ((Uri)localObject).getHost() + ((Uri)localObject).getPath();
    l.a(a.class, "Download uri path: " + ((Uri)localObject).getPath());
    l.a(a.class, "Download uri host: " + ((Uri)localObject).getHost());
    localObject = b(str);
    l.a(a.class, "Download filename(md5) " + (String)localObject);
    G = paramBoolean;
    if (a.containsKey(localObject))
    {
      paramC.a(512, "当前应用已在下载");
      l.a(a.class, "App " + paramString2 + " is downloading");
      return;
    }
    if (a.size() == 1000)
    {
      paramC.a(513, "最大下载数为1000个");
      l.a(a.class, "Maximum download number is 1000");
      return;
    }
    paramString1 = new a(paramString1, paramString2, (String)localObject, paramString3, paramString4, paramContext);
    paramString1.a(paramC);
    if (G) {
      paramString1.f();
    }
    paramString1.i();
    paramC.a();
  }
  
  private static String b(String paramString)
  {
    return l.b(paramString);
  }
  
  private void c(String paramString)
  {
    paramString = PendingIntent.getActivity(m, p, new Intent(), 134217728);
    n.icon = 17301624;
    n.tickerText = (C + "下载失败");
    n.setLatestEventInfo(m, C + "下载失败", "", paramString);
    n.flags = 16;
    o.notify(p, n);
  }
  
  private void f()
  {
    n = new Notification();
    n.icon = 17301633;
    n.tickerText = (C + "正在下载，请稍候...");
    H = PendingIntent.getActivity(m, p, h(), 134217728);
    n.setLatestEventInfo(m, C + "正在下载，请稍候...", "", H);
    o = ((NotificationManager)m.getSystemService("notification"));
    g();
  }
  
  private void g()
  {
    o.notify(p, n);
  }
  
  private Intent h()
  {
    Intent localIntent = new Intent();
    localIntent.setClass(m, DomobActivity.class);
    localIntent.putExtra("appName", C);
    localIntent.putExtra("appId", D);
    localIntent.putExtra("actType", "typeCancel");
    localIntent.putExtra("DomobActivityType", 2);
    return localIntent;
  }
  
  private void i()
  {
    new h(m, D, B, new i()
    {
      public void a()
      {
        Log.e("DomobSDK", a.b(a.this) + "rom can't chmod");
        if (a.j(a.this) != null) {
          a.j(a.this).a(5, "sd卡不存在");
        }
        a.b(a.this, "sd卡不存在");
      }
      
      public void a(long paramAnonymousLong1, long paramAnonymousLong2, long paramAnonymousLong3)
      {
        Log.e("DomobSDK", a.b(a.this) + "not enough size sdsize=" + paramAnonymousLong2 + " romsize=" + paramAnonymousLong3);
        if (a.j(a.this) != null) {
          a.j(a.this).a(1, "空间不足");
        }
        a.b(a.this, "空间不足");
      }
      
      public void a(String paramAnonymousString)
      {
        a.e().a(a.class, a.b(a.this) + " already exists in " + paramAnonymousString);
        a.a(a.this, paramAnonymousString);
        a.a(a.this, a.h(a.this), 0L);
      }
      
      public void b(String paramAnonymousString)
      {
        a.e().a(a.class, a.b(a.this) + " is download but not finished in " + paramAnonymousString);
        a.a(a.this, paramAnonymousString);
        paramAnonymousString = new File(a.h(a.this));
        a.a(a.this, a.h(a.this), paramAnonymousString.length());
      }
      
      public void c(String paramAnonymousString)
      {
        a.e().a(a.class, a.b(a.this) + " is  not download,it will download in " + paramAnonymousString);
        a.a(a.this, paramAnonymousString);
        a.a(a.this, a.h(a.this), 0L);
      }
      
      public void d(String paramAnonymousString)
      {
        Log.e("DomobSDK", a.b(a.this) + "无法连接到下载地址");
        if (a.j(a.this) != null) {
          a.j(a.this).a(5, a.b(a.this) + paramAnonymousString);
        }
        a.b(a.this, "无法连接到下载地址");
      }
    }).start();
  }
  
  public c a()
  {
    return r;
  }
  
  public void b()
  {
    l.a(a.class.getSimpleName(), "Stop download  and cancel notify if is UI mode " + p);
    if (J != null) {
      J.b();
    }
    o.cancel(p);
    a.remove(D);
  }
}
