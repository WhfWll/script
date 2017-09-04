package com.alipay.android.phone.mrpc.core.a;

import java.lang.reflect.Type;

public abstract class a
  implements c
{
  protected Type a;
  protected byte[] b;
  
  public a(Type paramType, byte[] paramArrayOfByte)
  {
    a = paramType;
    b = paramArrayOfByte;
  }
}
