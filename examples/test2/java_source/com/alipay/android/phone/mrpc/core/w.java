package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;

public final class w
  extends ab
{
  long a;
  long b;
  String c;
  b d;
  private int g;
  private String h;
  
  static
  {
    JniLib.a(w.class, 61);
  }
  
  public w(b paramB, int paramInt, String paramString, byte[] paramArrayOfByte)
  {
    d = paramB;
    g = paramInt;
    h = paramString;
    e = paramArrayOfByte;
  }
  
  private native void a(long paramLong);
  
  private native b b();
  
  private native void b(long paramLong);
  
  private native void b(String paramString);
}
