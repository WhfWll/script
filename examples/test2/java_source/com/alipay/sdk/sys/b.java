package com.alipay.sdk.sys;

import android.content.Context;
import com.alipay.sdk.data.d;
import com.bangcle.andjni.JniLib;

public final class b
{
  private static b c;
  public Context a;
  public d b;
  
  static
  {
    JniLib.a(b.class, 168);
  }
  
  private b() {}
  
  public static native b a();
  
  private static native String a(String[] paramArrayOfString);
  
  public static native boolean b();
  
  private native Context c();
  
  private native d d();
  
  private static native String e();
  
  private native String f();
  
  public final native void a(Context paramContext, d paramD);
}
