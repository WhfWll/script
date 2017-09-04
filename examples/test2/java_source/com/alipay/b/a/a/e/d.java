package com.alipay.b.a.a.e;

import com.bangcle.andjni.JniLib;
import java.util.List;

public final class d
{
  private static String a = "";
  private static String b = "";
  private static String c = "";
  
  static
  {
    JniLib.a(d.class, 108);
  }
  
  public static native void a(String paramString);
  
  public static native void a(String paramString1, String paramString2, String paramString3);
  
  public static native void a(Throwable paramThrowable);
  
  private static native void a(List<String> paramList);
}
