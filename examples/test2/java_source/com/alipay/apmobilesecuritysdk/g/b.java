package com.alipay.apmobilesecuritysdk.g;

import com.bangcle.andjni.JniLib;
import java.util.LinkedList;

public final class b
{
  private static b a = new b();
  private Thread b = null;
  private LinkedList<Runnable> c = new LinkedList();
  
  static
  {
    JniLib.a(b.class, 86);
  }
  
  public b() {}
  
  public static native b a();
  
  public final native void a(Runnable paramRunnable);
}
