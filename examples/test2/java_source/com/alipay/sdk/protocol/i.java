package com.alipay.sdk.protocol;

import com.alipay.sdk.data.e;
import com.alipay.sdk.data.f;

public abstract class i
  extends c
{
  public static final int d = 4;
  public static final int e = 6;
  public static final int f = 7;
  public static final int g = 8;
  public static final int h = 9;
  public static final int i = 10;
  public static final int j = -10;
  boolean k = false;
  
  protected i(e paramE, f paramF)
  {
    super(paramE, paramF);
  }
  
  private void a(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  private boolean d()
  {
    return k;
  }
  
  public abstract boolean a();
  
  public abstract int b();
  
  public abstract String c();
}
