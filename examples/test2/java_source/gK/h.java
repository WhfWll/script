package gK;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public class h
  implements Serializable, Comparable<h>
{
  static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  public static final h b = a(new byte[0]);
  final byte[] c;
  transient int d;
  transient String e;
  
  h(byte[] paramArrayOfByte)
  {
    c = paramArrayOfByte;
  }
  
  public static h a(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("s == null");
    }
    h localH = new h(paramString.getBytes(z.a));
    e = paramString;
    return localH;
  }
  
  public static h a(byte... paramVarArgs)
  {
    if (paramVarArgs == null) {
      throw new IllegalArgumentException("data == null");
    }
    return new h((byte[])paramVarArgs.clone());
  }
  
  private h b(String paramString)
  {
    try
    {
      paramString = a(MessageDigest.getInstance(paramString).digest(c));
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new AssertionError(paramString);
    }
  }
  
  public byte a(int paramInt)
  {
    return c[paramInt];
  }
  
  public int a(h paramH)
  {
    int j = f();
    int k = paramH.f();
    int m = Math.min(j, k);
    int i = 0;
    for (;;)
    {
      if (i < m)
      {
        int n = a(i) & 0xFF;
        int i1 = paramH.a(i) & 0xFF;
        if (n == i1) {
          i += 1;
        } else {
          if (n >= i1) {
            break;
          }
        }
      }
    }
    do
    {
      return -1;
      return 1;
      if (j == k) {
        return 0;
      }
    } while (j < k);
    return 1;
  }
  
  public String a()
  {
    String str = e;
    if (str != null) {
      return str;
    }
    str = new String(c, z.a);
    e = str;
    return str;
  }
  
  void a(e paramE)
  {
    paramE.b(c, 0, c.length);
  }
  
  public boolean a(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    return (paramInt1 <= c.length - paramInt3) && (paramInt2 <= paramArrayOfByte.length - paramInt3) && (z.a(c, paramInt1, paramArrayOfByte, paramInt2, paramInt3));
  }
  
  public String b()
  {
    return d.a(c);
  }
  
  public h c()
  {
    return b("MD5");
  }
  
  public String d()
  {
    int i = 0;
    char[] arrayOfChar = new char[c.length * 2];
    byte[] arrayOfByte = c;
    int k = arrayOfByte.length;
    int j = 0;
    while (i < k)
    {
      int m = arrayOfByte[i];
      int n = j + 1;
      arrayOfChar[j] = a[(m >> 4 & 0xF)];
      j = n + 1;
      arrayOfChar[n] = a[(m & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  public h e()
  {
    int i = 0;
    int j;
    for (;;)
    {
      localObject = this;
      if (i >= c.length) {
        return localObject;
      }
      j = c[i];
      if ((j >= 65) && (j <= 90)) {
        break;
      }
      i += 1;
    }
    Object localObject = (byte[])c.clone();
    localObject[i] = ((byte)(j + 32));
    i += 1;
    if (i < localObject.length)
    {
      j = localObject[i];
      if ((j < 65) || (j > 90)) {}
      for (;;)
      {
        i += 1;
        break;
        localObject[i] = ((byte)(j + 32));
      }
    }
    localObject = new h((byte[])localObject);
    return localObject;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (((paramObject instanceof h)) && (((h)paramObject).f() == c.length) && (((h)paramObject).a(0, c, 0, c.length))) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public int f()
  {
    return c.length;
  }
  
  public byte[] g()
  {
    return (byte[])c.clone();
  }
  
  public int hashCode()
  {
    int i = d;
    if (i != 0) {
      return i;
    }
    i = Arrays.hashCode(c);
    d = i;
    return i;
  }
  
  public String toString()
  {
    if (c.length == 0) {
      return "ByteString[size=0]";
    }
    if (c.length <= 16) {
      return String.format("ByteString[size=%s data=%s]", new Object[] { Integer.valueOf(c.length), d() });
    }
    return String.format("ByteString[size=%s md5=%s]", new Object[] { Integer.valueOf(c.length), c().d() });
  }
}
