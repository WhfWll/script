package com.alipay.apmobilesecuritysdk.a;

import android.content.Context;
import com.alipay.b.a.a.c.a.b;
import com.bangcle.andjni.JniLib;
import java.util.Map;

public final class a
{
  private Context a;
  private com.alipay.apmobilesecuritysdk.b.a b = com.alipay.apmobilesecuritysdk.b.a.a();
  private int c = 4;
  
  static
  {
    JniLib.a(a.class, 65);
  }
  
  public a(Context paramContext)
  {
    a = paramContext;
  }
  
  public static native String a(Context paramContext);
  
  public static native String a(Context paramContext, String paramString);
  
  private static native boolean a();
  
  private native b b(Map<String, String> paramMap);
  
  private static native String b(Context paramContext);
  
  public final native int a(Map<String, String> paramMap);
}
