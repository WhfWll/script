package cn.domob.wall.core.download;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.h.d;
import java.util.Hashtable;

public class a
  extends BroadcastReceiver
{
  private static d a = new d(a.class.getSimpleName());
  private static a b;
  private static Hashtable<String, AdInfo> d;
  private a c;
  
  private a() {}
  
  public static a a()
  {
    if (b != null) {
      return b;
    }
    a.e("ActionReceiver needs to be initialized first.");
    return null;
  }
  
  public static void a(Context paramContext, a paramA)
  {
    if (b == null)
    {
      b = new a();
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
  
  public void a(AdInfo paramAdInfo)
  {
    if (d == null) {
      d = new Hashtable();
    }
    String str = paramAdInfo.getAdPackageName();
    if (str != null)
    {
      d.put(str, paramAdInfo);
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
            c.t((AdInfo)d.get(paramIntent));
          }
          if (d.get(paramIntent) == null) {
            break label272;
          }
          a.a("Auto run the app:" + paramIntent);
          localObject = paramContext.getPackageManager().getLaunchIntentForPackage(paramIntent);
          if (localObject == null) {
            break label244;
          }
          ((Intent)localObject).setFlags(268435456);
          paramContext.startActivity((Intent)localObject);
          if (c != null) {
            c.u((AdInfo)d.get(paramIntent));
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
      label244:
      continue;
      label272:
      Object localObject = (Integer)b.b.get(paramIntent);
      if (localObject != null)
      {
        b.b.get(paramIntent);
        ((NotificationManager)paramContext.getSystemService("notification")).cancel(((Integer)localObject).intValue());
      }
    }
    a.e("该包名没有被注册，不进行report : " + paramIntent);
  }
  
  public static abstract interface a
  {
    public abstract void t(AdInfo paramAdInfo);
    
    public abstract void u(AdInfo paramAdInfo);
  }
}
