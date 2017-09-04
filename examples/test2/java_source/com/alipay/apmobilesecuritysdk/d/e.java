package com.alipay.apmobilesecuritysdk.d;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import java.util.Map;

public final class e
{
  private static Map<String, String> a = null;
  private static final String[] b = { "AD1", "AD2", "AD3", "AD5", "AD6", "AD7", "AD8", "AD9", "AD10", "AD11", "AD12", "AD13", "AD14", "AD15", "AD16", "AD18", "AD20", "AD21", "AD23", "AD24", "AD26", "AD27", "AD28", "AD29", "AD30", "AD31", "AD32", "AD34", "AA1", "AA2", "AA3", "AA4", "AA5", "AC4", "AE1", "AE2", "AE3", "AE4", "AE5", "AE6", "AE7", "AE8", "AE9", "AE10", "AE11", "AE12", "AE13", "AE14", "AE15" };
  
  static
  {
    JniLib.a(e.class, 72);
  }
  
  private static native String a(Map<String, String> paramMap);
  
  public static native Map<String, String> a(Context paramContext, Map<String, String> paramMap);
  
  public static native void a();
  
  public static native String b(Context paramContext, Map<String, String> paramMap);
  
  private static native void c(Context paramContext, Map<String, String> paramMap);
}
