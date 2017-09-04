package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;
import java.util.List;
import org.apache.http.Header;

public final class e
{
  public String a;
  List<Header> b;
  boolean c;
  
  static
  {
    JniLib.a(e.class, 45);
  }
  
  public e() {}
  
  private native String a();
  
  private native void a(String paramString);
  
  private native List<Header> b();
  
  private native boolean c();
}
