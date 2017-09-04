package com.alipay.sdk.data;

import android.content.Context;
import com.alipay.sdk.tid.b;
import com.bangcle.andjni.JniLib;
import java.util.HashMap;

public final class d
{
  private static final String d = "virtualImeiAndImsi";
  private static final String e = "virtual_imei";
  private static final String f = "virtual_imsi";
  private static d g;
  String a;
  String b = "sdk-and-lite";
  String c;
  
  static
  {
    JniLib.a(d.class, 149);
  }
  
  private d() {}
  
  public static native d a();
  
  private static native String a(Context paramContext);
  
  static native String a(Context paramContext, HashMap<String, String> paramHashMap);
  
  private native String a(b paramB);
  
  static native String b();
  
  private static native String b(Context paramContext);
  
  private native String c();
  
  private static native String c(Context paramContext);
  
  private static native String d();
  
  private static native String e();
  
  private static native String f();
  
  public final native void a(String paramString);
}
