package com.alipay.sdk.protocol;

public enum g
{
  private String e;
  
  private g(String paramString)
  {
    e = paramString;
  }
  
  public static g a(String paramString)
  {
    Object localObject = null;
    g[] arrayOfG = values();
    int j = arrayOfG.length;
    int i = 0;
    if (i < j)
    {
      g localG = arrayOfG[i];
      if (!paramString.startsWith(e)) {
        break label48;
      }
      localObject = localG;
    }
    label48:
    for (;;)
    {
      i += 1;
      break;
      return localObject;
    }
  }
  
  private String a()
  {
    return e;
  }
}
