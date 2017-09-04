package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;

public final class c
  extends RuntimeException
{
  private static final long a = -2875437994101380406L;
  private String b;
  private int c;
  private String d;
  
  static
  {
    JniLib.a(c.class, 44);
  }
  
  public c(Integer paramInteger, String paramString)
  {
    super(a(paramInteger, paramString));
    c = paramInteger.intValue();
    d = paramString;
  }
  
  public c(Integer paramInteger, String paramString, Throwable paramThrowable)
  {
    super(a(paramInteger, paramString), paramThrowable);
    c = paramInteger.intValue();
    d = paramString;
  }
  
  private c(Integer paramInteger, Throwable paramThrowable)
  {
    super(paramThrowable);
    c = paramInteger.intValue();
  }
  
  private c(String paramString)
  {
    super(paramString);
    c = 0;
    d = paramString;
  }
  
  private native String a();
  
  private static native String a(Integer paramInteger, String paramString);
  
  private native int b();
  
  private native String c();
  
  public final native void a(String paramString);
}
