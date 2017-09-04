package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;

public final class ae
{
  n a;
  ag b;
  
  static
  {
    JniLib.a(ae.class, 40);
  }
  
  public ae(n paramN)
  {
    a = paramN;
    b = new ag(this);
  }
  
  private native n a();
  
  private native <T> T a(Class<T> paramClass);
}
