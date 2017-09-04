package com.alipay.android.phone.mrpc.core;

import java.lang.reflect.Method;

public abstract class d
  implements ac
{
  protected Method a;
  protected byte[] b;
  protected String c;
  protected int d;
  protected String e;
  protected boolean f;
  
  public d(Method paramMethod, int paramInt, String paramString1, byte[] paramArrayOfByte, String paramString2, boolean paramBoolean)
  {
    a = paramMethod;
    d = paramInt;
    c = paramString1;
    b = paramArrayOfByte;
    e = paramString2;
    f = paramBoolean;
  }
}
