package com.alipay.sdk.sys;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.bangcle.andjni.JniLib;

public final class a
{
  private String a;
  private String b;
  
  static
  {
    JniLib.a(a.class, 167);
  }
  
  public a(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
      a = versionName;
      b = packageName;
      return;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
  }
  
  public final native String toString();
}
