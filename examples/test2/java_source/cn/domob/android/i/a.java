package cn.domob.android.i;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.Log;

public class a
{
  private static f a = new f(a.class.getSimpleName());
  private static String b;
  private static int c;
  private static String d;
  private static String e;
  
  public a() {}
  
  protected static String a(Context paramContext)
  {
    if (b == null)
    {
      f(paramContext);
      if (!h.e(b)) {
        a.c("Current package name is " + b);
      }
    }
    return b;
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    try
    {
      int i = paramContext.checkCallingOrSelfPermission(paramString);
      if (-1 == i) {
        return false;
      }
    }
    catch (Exception paramContext)
    {
      a.a(paramContext);
    }
    return true;
  }
  
  public static boolean a(Context paramContext, String[] paramArrayOfString, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder(f.b() + " 缺少权限：\n");
    int i = 0;
    int j = 0;
    String str;
    boolean bool;
    if (i < paramArrayOfString.length)
    {
      str = paramArrayOfString[i];
      if (h.e(str)) {
        break label204;
      }
      if (str.equals("android.permission.WRITE_EXTERNAL_STORAGE"))
      {
        if (!c.a(3, false)) {
          break label204;
        }
        bool = a(paramContext, str);
      }
    }
    for (;;)
    {
      if (!bool)
      {
        Log.e(f.b(), String.format("you must have %s permission !", new Object[] { str }));
        localStringBuilder.append(str + " \n");
        j = 1;
      }
      i += 1;
      break;
      if (str.equals("android.permission.ACCESS_COARSE_LOCATION"))
      {
        if (paramBoolean) {
          bool = a(paramContext, str);
        }
      }
      else
      {
        bool = a(paramContext, str);
        continue;
        if (j != 0) {
          g.a(paramContext, f.b(), localStringBuilder.toString());
        }
        return j == 0;
      }
      label204:
      bool = true;
    }
  }
  
  protected static int b(Context paramContext)
  {
    if (b == null) {
      f(paramContext);
    }
    return c;
  }
  
  protected static String c(Context paramContext)
  {
    if (b == null) {
      f(paramContext);
    }
    return d;
  }
  
  protected static String d(Context paramContext)
  {
    if (b == null) {
      f(paramContext);
    }
    return e;
  }
  
  public static boolean e(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE") == 0)
    {
      a.c("access wifi state is enabled");
      return true;
    }
    return false;
  }
  
  private static void f(Context paramContext)
  {
    a.b(c.class.getSimpleName(), "Start to get app info.");
    for (;;)
    {
      Object localObject;
      try
      {
        localObject = paramContext.getPackageManager();
        if (localObject != null)
        {
          PackageInfo localPackageInfo = ((PackageManager)localObject).getPackageInfo(paramContext.getPackageName(), 0);
          if (localPackageInfo != null)
          {
            b = packageName;
            c = versionCode;
            d = versionName;
          }
        }
        localObject = ((PackageManager)localObject).getApplicationInfo(paramContext.getPackageName(), 128);
        if (localObject == null) {
          break;
        }
        if (labelRes != 0)
        {
          e = paramContext.getResources().getString(labelRes);
          return;
        }
        if (nonLocalizedLabel == null)
        {
          paramContext = null;
          e = paramContext;
          return;
        }
      }
      catch (Exception paramContext)
      {
        a.e(c.class.getSimpleName(), "Failed in getting app info.");
        a.a(paramContext);
        return;
      }
      paramContext = nonLocalizedLabel.toString();
    }
  }
}
