package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;
import java.lang.reflect.Method;

public final class q
  extends d
{
  private n g;
  
  static
  {
    JniLib.a(q.class, 55);
  }
  
  public q(n paramN, Method paramMethod, int paramInt, String paramString, byte[] paramArrayOfByte, boolean paramBoolean)
  {
    super(paramMethod, paramInt, paramString, paramArrayOfByte, "application/x-www-form-urlencoded", paramBoolean);
    g = paramN;
  }
  
  public final native Object a();
}
