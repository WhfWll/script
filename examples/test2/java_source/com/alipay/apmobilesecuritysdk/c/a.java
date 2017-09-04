package com.alipay.apmobilesecuritysdk.c;

import android.content.Context;
import com.bangcle.andjni.JniLib;

public final class a
{
  static
  {
    JniLib.a(a.class, 67);
  }
  
  public static native void a(Context paramContext, String paramString1, String paramString2, String paramString3);
  
  public static native void a(String paramString);
  
  public static native void a(Throwable paramThrowable);
}
