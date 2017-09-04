package com.alipay.apmobilesecuritysdk.face;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import java.util.Map;

public final class a
{
  private static a a;
  private static Object c = new Object();
  private Context b;
  
  static
  {
    JniLib.a(a.class, 83);
  }
  
  private a(Context paramContext)
  {
    b = paramContext;
  }
  
  public static native a a(Context paramContext);
  
  private native String b();
  
  private static native String c();
  
  private static native String d();
  
  private static native String e();
  
  public final native b a();
  
  public final native void a(Map<String, String> paramMap);
  
  public static abstract interface a
  {
    public abstract void a();
  }
  
  public final class b
  {
    public String a;
    public String b;
    public String c;
    public String d;
    
    public b() {}
  }
}
