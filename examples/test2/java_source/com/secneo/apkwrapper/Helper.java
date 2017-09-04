package com.secneo.apkwrapper;

import android.app.Application;
import android.content.Context;
import android.os.Build.VERSION;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Helper
{
  public static String CPU_ABI = null;
  public static String PKGNAME;
  public static String PPATH = null;
  public static ClassLoader cl;
  
  static
  {
    PKGNAME = "com.MobileTicket";
  }
  
  public Helper() {}
  
  public static native void attach(Application paramApplication, Context paramContext);
  
  public static String getCPUABI()
  {
    if (CPU_ABI == null) {
      try
      {
        if (new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ro.product.cpu.abi").getInputStream())).readLine().contains("x86")) {}
        for (CPU_ABI = "x86";; CPU_ABI = "arm") {
          return CPU_ABI;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          CPU_ABI = "arm";
        }
      }
    }
    return CPU_ABI;
  }
  
  public static String getRelease()
  {
    if (Build.VERSION.SDK_INT <= 10) {
      return "2.2";
    }
    return "4.0";
  }
  
  public static void installApplicationEx(String paramString)
  {
    installApplicationEx(paramString, Helper.class);
  }
  
  public static native void installApplicationEx(String paramString, Class paramClass);
}
