package cn.domob.android.offerwall;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import cn.domob.android.a.a;
import java.util.Hashtable;

public class d
  extends BroadcastReceiver
{
  private static m a = new m(d.class.getSimpleName());
  private static d b;
  private static a c;
  private static Hashtable<String, g> d;
  
  private d() {}
  
  protected static d a()
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
      b = new d();
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.PACKAGE_ADDED");
      localIntentFilter.addDataScheme("package");
      paramContext.getApplicationContext().registerReceiver(b, localIntentFilter);
      c = paramA;
      a.b("Finish to init action receiver.");
      return;
    }
    a.b("Action receiver has already been initialized.");
  }
  
  protected void a(g paramG)
  {
    if (d == null) {
      d = new Hashtable();
    }
    String str = paramG.c();
    if (str != null)
    {
      d.put(str, paramG);
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
    try
    {
      if (d == null) {
        return;
      }
      Object localObject = paramIntent.getAction();
      a.a("Intent: " + paramIntent.toString());
      if ("android.intent.action.PACKAGE_ADDED".equals(localObject))
      {
        paramIntent = paramIntent.getDataString().substring(8);
        a.e("该包名没有被注册，不进行report : " + paramIntent);
      }
    }
    catch (Exception paramContext)
    {
      try
      {
        paramIntent = getPackageManagergetPackageInfo0packageName;
        if (!d.containsKey(paramIntent)) {
          break label195;
        }
        if (c != null) {
          c.a((g)d.get(paramIntent));
        }
        localObject = (Integer)a.b.get(paramIntent);
        if (localObject != null)
        {
          a.b.get(paramIntent);
          ((NotificationManager)paramContext.getSystemService("notification")).cancel(((Integer)localObject).intValue());
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
    label195:
  }
  
  static abstract interface a
  {
    public abstract void a(g paramG);
    
    public abstract void b(g paramG);
  }
}
