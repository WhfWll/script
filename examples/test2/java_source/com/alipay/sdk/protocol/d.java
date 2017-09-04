package com.alipay.sdk.protocol;

import com.alipay.sdk.exception.NetErrorException;
import com.bangcle.andjni.JniLib;

public final class d
{
  static
  {
    JniLib.a(d.class, 164);
  }
  
  public d() {}
  
  private static native c a(c paramC)
    throws NetErrorException;
}
