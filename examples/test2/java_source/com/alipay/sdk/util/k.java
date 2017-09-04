package com.alipay.sdk.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.util.DisplayMetrics;
import com.bangcle.andjni.JniLib;

public final class k
{
  static final String a = "com.alipay.android.app";
  public static final String b = "com.eg.android.AlipayGphone";
  private static final String c = "7.0.0";
  
  static
  {
    JniLib.a(k.class, 181);
  }
  
  public k() {}
  
  private static native int a(String paramString1, String paramString2);
  
  public static native a a(Context paramContext, String paramString);
  
  public static native String a();
  
  public static native String a(byte[] paramArrayOfByte);
  
  public static native boolean a(Context paramContext);
  
  private static native boolean a(PackageInfo paramPackageInfo);
  
  public static native boolean a(String paramString);
  
  public static native String b();
  
  public static native boolean b(Context paramContext);
  
  private static native String c();
  
  public static native String c(Context paramContext);
  
  private static native String d();
  
  public static native String d(Context paramContext);
  
  private static native String e();
  
  public static native String e(Context paramContext);
  
  private static native String f();
  
  public static native String f(Context paramContext);
  
  public static native String g(Context paramContext);
  
  private static native DisplayMetrics h(Context paramContext);
  
  public static final class a
  {
    public Signature[] a;
    public int b;
    
    public a() {}
  }
}
