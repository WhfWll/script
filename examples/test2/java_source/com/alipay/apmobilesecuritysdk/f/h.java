package com.alipay.apmobilesecuritysdk.f;

import android.content.Context;
import com.bangcle.andjni.JniLib;

public final class h
{
  private static String a = "";
  
  static
  {
    JniLib.a(h.class, 81);
  }
  
  public static native String a(Context paramContext);
  
  public static native void a(Context paramContext, String paramString);
  
  public static native void a(Context paramContext, String paramString, long paramLong);
  
  public static native void a(Context paramContext, boolean paramBoolean);
  
  public static native void b(Context paramContext, String paramString);
  
  public static native boolean b(Context paramContext);
  
  public static native long c(Context paramContext, String paramString);
  
  public static native String c(Context paramContext);
}
