package com.alipay.sdk.app;

public enum m
{
  private int g;
  private String h;
  
  private m(int paramInt, String paramString)
  {
    g = paramInt;
    h = paramString;
  }
  
  public static m a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return b;
    case 9000: 
      return a;
    case 6001: 
      return c;
    case 6002: 
      return d;
    case 4001: 
      return e;
    }
    return f;
  }
  
  private void a(String paramString)
  {
    h = paramString;
  }
  
  private void b(int paramInt)
  {
    g = paramInt;
  }
  
  public final int a()
  {
    return g;
  }
  
  public final String b()
  {
    return h;
  }
}
