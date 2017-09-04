package cn.domob.android.ads;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import cn.domob.android.c.a;
import cn.domob.android.i.f;
import java.util.Hashtable;

public class e
  extends BroadcastReceiver
{
  private static f a = new f(e.class.getSimpleName());
  private static e b;
  private static Hashtable<String, q> d;
  private a c;
  
  private e() {}
  
  public static e a()
  {
    if (b != null) {
      return b;
    }
    a.e("ActionReceiver needs to be initialized first.");
    return null;
  }
  
  protected static void a(Context paramContext, a paramA)
  {
    if (b == null)
    {
      b = new e();
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.PACKAGE_ADDED");
      localIntentFilter.addDataScheme("package");
      paramContext.getApplicationContext().registerReceiver(b, localIntentFilter);
      bc = paramA;
      a.b("Finish to init action receiver.");
      return;
    }
    a.b("Action receiver has already been initialized.");
  }
  
  public void a(q paramQ)
  {
    if (d == null) {
      d = new Hashtable();
    }
    String str = paramQ.c();
    if (str != null)
    {
      d.put(str, paramQ);
      return;
    }
    a.e("There is no package name in ad response.");
  }
  
  protected void a(String paramString)
  {
    if (d == null) {
      d = new Hashtable();
    }
    if (d.containsKey(paramString))
    {
      a.a("Remove info : " + d.get(paramString));
      d.remove(paramString);
      return;
    }
    a.e("There is no key like " + paramString + " in regPkgTalbe.");
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    for (;;)
    {
      try
      {
        if (d == null) {
          return;
        }
        localObject = paramIntent.getAction();
        a.a("Intent: " + paramIntent.toString());
        if (!"android.intent.action.PACKAGE_ADDED".equals(localObject)) {
          return;
        }
        paramIntent = paramIntent.getDataString().substring(8);
        a.e("系统无法找到包名对应App，请确认该包是否被安装 : " + paramIntent);
      }
      catch (Exception paramContext)
      {
        try
        {
          paramIntent = getPackageManagergetPackageInfo0packageName;
          if (!d.containsKey(paramIntent)) {
            break;
          }
          if (c != null) {
            c.a((q)d.get(paramIntent));
          }
          if (!((q)d.get(paramIntent)).f()) {
            break label278;
          }
          a.a("Auto run the app:" + paramIntent);
          localObject = paramContext.getPackageManager().getLaunchIntentForPackage(paramIntent);
          if (localObject == null) {
            break label250;
          }
          ((Intent)localObject).setFlags(268435456);
          paramContext.startActivity((Intent)localObject);
          if (c != null) {
            c.b((q)d.get(paramIntent));
          }
          a(paramIntent);
          return;
        }
        catch (PackageManager.NameNotFoundException paramContext)
        {
          a.e("系统无法找到包名对应App，请确认该包是否被安装 : " + "");
          a.a(paramContext);
          return;
        }
        paramContext = paramContext;
        a.a(paramContext);
        return;
      }
      label250:
      continue;
      label278:
      Object localObject = (Integer)a.b.get(paramIntent);
      if (localObject != null)
      {
        a.b.get(paramIntent);
        ((NotificationManager)paramContext.getSystemService("notification")).cancel(((Integer)localObject).intValue());
      }
    }
    a.e("该包名没有被注册，不进行report : " + paramIntent);
  }
  
  public static abstract interface a
  {
    public abstract void a(q paramQ);
    
    public abstract void b(q paramQ);
  }
}
