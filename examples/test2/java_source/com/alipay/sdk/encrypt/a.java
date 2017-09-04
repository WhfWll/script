package com.alipay.sdk.encrypt;

import com.bangcle.andjni.JniLib;

public final class a
{
  private static final int a = 128;
  private static final int b = 64;
  private static final int c = 24;
  private static final int d = 8;
  private static final int e = 16;
  private static final int f = 4;
  private static final int g = -128;
  private static final char h = '=';
  private static final byte[] i;
  private static final char[] j;
  
  static
  {
    JniLib.a(a.class, 152);
    int n = 0;
    i = new byte[''];
    j = new char[64];
    int k = 0;
    while (k < 128)
    {
      i[k] = -1;
      k += 1;
    }
    k = 90;
    while (k >= 65)
    {
      i[k] = ((byte)(k - 65));
      k -= 1;
    }
    k = 122;
    while (k >= 97)
    {
      i[k] = ((byte)(k - 97 + 26));
      k -= 1;
    }
    k = 57;
    while (k >= 48)
    {
      i[k] = ((byte)(k - 48 + 52));
      k -= 1;
    }
    i[43] = 62;
    i[47] = 63;
    k = 0;
    while (k <= 25)
    {
      j[k] = ((char)(k + 65));
      k += 1;
    }
    int m = 26;
    k = 0;
    while (m <= 51)
    {
      j[m] = ((char)(k + 97));
      m += 1;
      k += 1;
    }
    m = 52;
    k = n;
    while (m <= 61)
    {
      j[m] = ((char)(k + 48));
      m += 1;
      k += 1;
    }
    j[62] = '+';
    j[63] = '/';
  }
  
  public a() {}
  
  private static native int a(char[] paramArrayOfChar);
  
  public static native String a(byte[] paramArrayOfByte);
  
  private static native boolean a(char paramChar);
  
  public static native byte[] a(String paramString);
  
  private static native boolean b(char paramChar);
  
  private static native boolean c(char paramChar);
}
