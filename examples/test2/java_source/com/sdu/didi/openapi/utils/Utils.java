package com.sdu.didi.openapi.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.io.File;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;

public class Utils
{
  public static int a(Context paramContext, float paramFloat)
  {
    return (int)(getResourcesgetDisplayMetricsdensity * paramFloat + 0.5F);
  }
  
  public static String a()
  {
    return "1.1.0";
  }
  
  public static String a(Context paramContext)
  {
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if (paramContext.getDeviceId() == null) {
      return "";
    }
    return paramContext.getDeviceId();
  }
  
  public static String a(Map<String, String> paramMap)
  {
    if ((paramMap == null) || (paramMap.isEmpty())) {
      return "";
    }
    Uri.Builder localBuilder = new Uri.Builder();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localBuilder.appendQueryParameter((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    paramMap = new StringBuilder(localBuilder.toString());
    if ((paramMap.length() > 0) && (paramMap.charAt(0) == '?')) {
      paramMap.deleteCharAt(0);
    }
    return paramMap.toString();
  }
  
  public static void a(Context paramContext, String paramString)
  {
    paramString = Uri.fromFile(new File(paramString));
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setFlags(268435456);
    localIntent.setDataAndType(paramString, "application/vnd.android.package-archive");
    paramContext.startActivity(localIntent);
  }
  
  public static String b(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
    if (paramContext.getMacAddress() != null) {
      return paramContext.getMacAddress();
    }
    return "null";
  }
  
  public static String b(Context paramContext, String paramString)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      if (paramContext != null) {
        return versionName;
      }
      return "";
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return "";
  }
  
  public static boolean b()
  {
    return Build.VERSION.SDK_INT >= 11;
  }
  
  public static String getRandomString(int paramInt)
  {
    char[] arrayOfChar = new char[paramInt];
    Random localRandom = new Random();
    int i = 0;
    while (i < paramInt)
    {
      arrayOfChar[i] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".charAt(localRandom.nextInt("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".length() - 1));
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  public static String getTimestamp()
  {
    return System.currentTimeMillis() / 1000L + "";
  }
}
