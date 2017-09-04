package com.alipay.sdk.tid;

import android.content.Context;
import com.bangcle.andjni.JniLib;

public final class b
{
  private static b c;
  public String a;
  public String b;
  
  static
  {
    JniLib.a(b.class, 171);
  }
  
  private b() {}
  
  public static native b a();
  
  private native void a(Context paramContext);
  
  private native void a(String paramString);
  
  private native String b();
  
  private native void b(String paramString);
  
  private native String c();
  
  private native boolean d();
  
  private static native void e();
  
  private static native String f();
}
