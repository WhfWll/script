package com.alipay.android.phone.mrpc.core.a;

import com.bangcle.andjni.JniLib;

public final class e
  extends b
{
  private int c;
  private Object d;
  
  static
  {
    JniLib.a(e.class, 37);
  }
  
  public e(int paramInt, String paramString, Object paramObject)
  {
    super(paramString, paramObject);
    c = paramInt;
  }
  
  public final native void a(Object paramObject);
  
  public final native byte[] a();
}
