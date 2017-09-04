package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.Header;

public final class v
  extends aa
{
  String a;
  byte[] b;
  String c;
  ArrayList<Header> d;
  boolean e;
  private Map<String, String> h;
  
  static
  {
    JniLib.a(v.class, 60);
  }
  
  public v(String paramString)
  {
    a = paramString;
    d = new ArrayList();
    h = new HashMap();
    c = "application/x-www-form-urlencoded";
  }
  
  private native void a(boolean paramBoolean);
  
  private native void a(byte[] paramArrayOfByte);
  
  private native String b();
  
  private native void b(String paramString);
  
  private native byte[] c();
  
  private native String d();
  
  private native ArrayList<Header> e();
  
  private native boolean f();
  
  public final native String a(String paramString);
  
  public final native void a(String paramString1, String paramString2);
  
  public final native void a(Header paramHeader);
  
  public final native boolean equals(Object paramObject);
  
  public final native int hashCode();
  
  public final native String toString();
}
