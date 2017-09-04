package com.alipay.sdk.util;

public enum g
{
  private int p;
  private String q;
  
  private g(int paramInt, String paramString)
  {
    p = paramInt;
    q = paramString;
  }
  
  public static g a(int paramInt)
  {
    g[] arrayOfG = values();
    int i2 = arrayOfG.length;
    int i1 = 0;
    while (i1 < i2)
    {
      g localG = arrayOfG[i1];
      if (p == paramInt) {
        return localG;
      }
      i1 += 1;
    }
    return o;
  }
  
  private int b()
  {
    return p;
  }
  
  public final String a()
  {
    return q;
  }
}
