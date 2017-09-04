package com.alipay.sdk.auth;

import android.app.Activity;
import android.content.Context;
import com.alipay.sdk.widget.a;
import com.bangcle.andjni.JniLib;

public final class h
{
  private static final String a = "com.eg.android.AlipayGphone";
  private static final int b = 65;
  private static a c = null;
  private static String d = null;
  
  static
  {
    JniLib.a(h.class, 140);
  }
  
  public h() {}
  
  public static native void a(Activity paramActivity, APAuthInfo paramAPAuthInfo);
  
  public static native void a(Activity paramActivity, String paramString);
  
  private static native boolean a(Context paramContext);
  
  private static native void b(Activity paramActivity, APAuthInfo paramAPAuthInfo);
  
  private static native void c(Activity paramActivity, APAuthInfo paramAPAuthInfo);
}
