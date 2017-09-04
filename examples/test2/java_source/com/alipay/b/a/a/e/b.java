package com.alipay.b.a.a.e;

import com.alipay.b.a.a.c.b.a;
import com.bangcle.andjni.JniLib;
import java.io.File;

public final class b
{
  private File a = null;
  private a b = null;
  
  static
  {
    JniLib.a(b.class, 106);
  }
  
  public b(String paramString, a paramA)
  {
    a = new File(paramString);
    b = paramA;
  }
  
  private static native String a(String paramString);
  
  private native void b();
  
  final native void a();
}
