package com.alipay.sdk.protocol;

import com.alipay.sdk.exception.NetErrorException;
import com.bangcle.andjni.JniLib;

public final class e
{
  static
  {
    JniLib.a(e.class, 165);
  }
  
  public e() {}
  
  public static native h a(c paramC)
    throws NetErrorException;
  
  private static native void b(c paramC)
    throws NetErrorException;
}
