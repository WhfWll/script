package gK;

import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class e
  implements f, g, Cloneable
{
  private static final byte[] c = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  t a;
  long b;
  
  public e() {}
  
  public int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    z.a(paramArrayOfByte.length, paramInt1, paramInt2);
    t localT = a;
    if (localT == null) {
      paramInt1 = -1;
    }
    do
    {
      return paramInt1;
      paramInt2 = Math.min(paramInt2, c - b);
      System.arraycopy(a, b, paramArrayOfByte, paramInt1, paramInt2);
      b += paramInt2;
      b -= paramInt2;
      paramInt1 = paramInt2;
    } while (b != c);
    a = localT.a();
    u.a(localT);
    return paramInt2;
  }
  
  public long a(byte paramByte)
  {
    return a(paramByte, 0L);
  }
  
  public long a(byte paramByte, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("fromIndex < 0");
    }
    Object localObject1 = a;
    if (localObject1 == null) {
      return -1L;
    }
    long l = 0L;
    int j = c - b;
    if (paramLong >= j) {}
    for (paramLong -= j;; paramLong = 0L)
    {
      l += j;
      Object localObject2 = f;
      localObject1 = localObject2;
      if (localObject2 != a) {
        break;
      }
      return -1L;
      localObject2 = a;
      int i = (int)(b + paramLong);
      int k = c;
      while (i < k)
      {
        if (localObject2[i] == paramByte) {
          return l + i - b;
        }
        i += 1;
      }
    }
  }
  
  public long a(e paramE, long paramLong)
  {
    if (paramE == null) {
      throw new IllegalArgumentException("sink == null");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (b == 0L) {
      return -1L;
    }
    long l = paramLong;
    if (paramLong > b) {
      l = b;
    }
    paramE.a_(this, l);
    return l;
  }
  
  public long a(w paramW)
    throws IOException
  {
    if (paramW == null) {
      throw new IllegalArgumentException("source == null");
    }
    long l2;
    for (long l1 = 0L;; l1 += l2)
    {
      l2 = paramW.a(this, 8192L);
      if (l2 == -1L) {
        break;
      }
    }
    return l1;
  }
  
  public e a(int paramInt)
  {
    if (paramInt < 128)
    {
      b(paramInt);
      return this;
    }
    if (paramInt < 2048)
    {
      b(paramInt >> 6 | 0xC0);
      b(paramInt & 0x3F | 0x80);
      return this;
    }
    if (paramInt < 65536)
    {
      if ((paramInt >= 55296) && (paramInt <= 57343)) {
        throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(paramInt));
      }
      b(paramInt >> 12 | 0xE0);
      b(paramInt >> 6 & 0x3F | 0x80);
      b(paramInt & 0x3F | 0x80);
      return this;
    }
    if (paramInt <= 1114111)
    {
      b(paramInt >> 18 | 0xF0);
      b(paramInt >> 12 & 0x3F | 0x80);
      b(paramInt >> 6 & 0x3F | 0x80);
      b(paramInt & 0x3F | 0x80);
      return this;
    }
    throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(paramInt));
  }
  
  public e a(e paramE, long paramLong1, long paramLong2)
  {
    if (paramE == null) {
      throw new IllegalArgumentException("out == null");
    }
    z.a(b, paramLong1, paramLong2);
    if (paramLong2 == 0L) {
      return this;
    }
    b += paramLong2;
    t localT2;
    long l1;
    long l2;
    for (t localT1 = a;; localT1 = f)
    {
      localT2 = localT1;
      l1 = paramLong1;
      l2 = paramLong2;
      if (paramLong1 < c - b) {
        break;
      }
      paramLong1 -= c - b;
    }
    label103:
    if (l2 > 0L)
    {
      localT1 = new t(localT2);
      b = ((int)(b + l1));
      c = Math.min(b + (int)l2, c);
      if (a != null) {
        break label215;
      }
      g = localT1;
      f = localT1;
      a = localT1;
    }
    for (;;)
    {
      l2 -= c - b;
      localT2 = f;
      l1 = 0L;
      break label103;
      break;
      label215:
      a.g.a(localT1);
    }
  }
  
  public e a(h paramH)
  {
    if (paramH == null) {
      throw new IllegalArgumentException("byteString == null");
    }
    paramH.a(this);
    return this;
  }
  
  public e a(String paramString)
  {
    return a(paramString, 0, paramString.length());
  }
  
  public e a(String paramString, int paramInt1, int paramInt2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("string == null");
    }
    if (paramInt1 < 0) {
      throw new IllegalAccessError("beginIndex < 0: " + paramInt1);
    }
    if (paramInt2 < paramInt1) {
      throw new IllegalArgumentException("endIndex < beginIndex: " + paramInt2 + " < " + paramInt1);
    }
    int i;
    label136:
    int j;
    label168:
    byte[] arrayOfByte;
    int k;
    if (paramInt2 > paramString.length())
    {
      throw new IllegalArgumentException("endIndex > string.length: " + paramInt2 + " > " + paramString.length());
      i = 0;
      if ((j > 56319) || (i < 56320) || (i > 57343))
      {
        b(63);
        paramInt1 += 1;
      }
    }
    else
    {
      if (paramInt1 >= paramInt2) {
        return this;
      }
      j = paramString.charAt(paramInt1);
      if (j < 128)
      {
        t localT = e(1);
        arrayOfByte = a;
        k = c - paramInt1;
        int m = Math.min(paramInt2, 8192 - k);
        i = paramInt1 + 1;
        arrayOfByte[(k + paramInt1)] = ((byte)j);
        paramInt1 = i;
        label241:
        if (paramInt1 < m)
        {
          i = paramString.charAt(paramInt1);
          if (i < 128) {}
        }
        else
        {
          i = paramInt1 + k - c;
          c += i;
          b += i;
        }
      }
    }
    for (;;)
    {
      break label168;
      arrayOfByte[(paramInt1 + k)] = ((byte)i);
      paramInt1 += 1;
      break label241;
      if (j < 2048)
      {
        b(j >> 6 | 0xC0);
        b(j & 0x3F | 0x80);
        paramInt1 += 1;
      }
      else if ((j < 55296) || (j > 57343))
      {
        b(j >> 12 | 0xE0);
        b(j >> 6 & 0x3F | 0x80);
        b(j & 0x3F | 0x80);
        paramInt1 += 1;
      }
      else
      {
        if (paramInt1 + 1 >= paramInt2) {
          break;
        }
        i = paramString.charAt(paramInt1 + 1);
        break label136;
        i = (i & 0xFFFF23FF | (j & 0xFFFF27FF) << 10) + 65536;
        b(i >> 18 | 0xF0);
        b(i >> 12 & 0x3F | 0x80);
        b(i >> 6 & 0x3F | 0x80);
        b(i & 0x3F | 0x80);
        paramInt1 += 2;
      }
    }
    return this;
  }
  
  public x a()
  {
    return x.b;
  }
  
  public String a(long paramLong, Charset paramCharset)
    throws EOFException
  {
    z.a(b, 0L, paramLong);
    if (paramCharset == null) {
      throw new IllegalArgumentException("charset == null");
    }
    if (paramLong > 2147483647L) {
      throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + paramLong);
    }
    if (paramLong == 0L) {
      paramCharset = "";
    }
    t localT;
    String str;
    do
    {
      return paramCharset;
      localT = a;
      if (b + paramLong > c) {
        return new String(f(paramLong), paramCharset);
      }
      str = new String(a, b, (int)paramLong, paramCharset);
      b = ((int)(b + paramLong));
      b -= paramLong;
      paramCharset = str;
    } while (b != c);
    a = localT.a();
    u.a(localT);
    return str;
  }
  
  public void a(long paramLong)
    throws EOFException
  {
    if (b < paramLong) {
      throw new EOFException();
    }
  }
  
  public void a(byte[] paramArrayOfByte)
    throws EOFException
  {
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = a(paramArrayOfByte, i, paramArrayOfByte.length - i);
      if (j == -1) {
        throw new EOFException();
      }
      i += j;
    }
  }
  
  public void a_(e paramE, long paramLong)
  {
    if (paramE == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramE == this) {
      throw new IllegalArgumentException("source == this");
    }
    z.a(b, 0L, paramLong);
    if (paramLong > 0L)
    {
      if (paramLong >= a.c - a.b) {
        break label189;
      }
      if (a == null) {
        break label160;
      }
      localT1 = a.g;
      if ((localT1 == null) || (!e)) {
        break label176;
      }
      l = c;
      if (!d) {
        break label166;
      }
    }
    label160:
    label166:
    for (int i = 0;; i = b)
    {
      if (l + paramLong - i > 8192L) {
        break label176;
      }
      a.a(localT1, (int)paramLong);
      b -= paramLong;
      b += paramLong;
      return;
      localT1 = null;
      break;
    }
    label176:
    a = a.a((int)paramLong);
    label189:
    t localT1 = a;
    long l = c - b;
    a = localT1.a();
    if (a == null)
    {
      a = localT1;
      localT1 = a;
      t localT2 = a;
      t localT3 = a;
      g = localT3;
      f = localT3;
    }
    for (;;)
    {
      b -= l;
      b += l;
      paramLong -= l;
      break;
      a.g.a(localT1).b();
    }
  }
  
  public byte b(long paramLong)
  {
    z.a(b, paramLong, 1L);
    for (t localT = a;; localT = f)
    {
      int i = c - b;
      if (paramLong < i) {
        return a[(b + (int)paramLong)];
      }
      paramLong -= i;
    }
  }
  
  public long b()
  {
    return b;
  }
  
  public e b(int paramInt)
  {
    t localT = e(1);
    byte[] arrayOfByte = a;
    int i = c;
    c = (i + 1);
    arrayOfByte[i] = ((byte)paramInt);
    b += 1L;
    return this;
  }
  
  public e b(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("source == null");
    }
    return b(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public e b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("source == null");
    }
    z.a(paramArrayOfByte.length, paramInt1, paramInt2);
    int i = paramInt1 + paramInt2;
    while (paramInt1 < i)
    {
      t localT = e(1);
      int j = Math.min(i - paramInt1, 8192 - c);
      System.arraycopy(paramArrayOfByte, paramInt1, a, c, j);
      paramInt1 += j;
      c = (j + c);
    }
    b += paramInt2;
    return this;
  }
  
  public e c()
  {
    return this;
  }
  
  public e c(int paramInt)
  {
    t localT = e(2);
    byte[] arrayOfByte = a;
    int i = c;
    int j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 8 & 0xFF));
    arrayOfByte[j] = ((byte)(paramInt & 0xFF));
    c = (j + 1);
    b += 2L;
    return this;
  }
  
  public h c(long paramLong)
    throws EOFException
  {
    return new h(f(paramLong));
  }
  
  public void close() {}
  
  public e d()
  {
    return this;
  }
  
  public e d(int paramInt)
  {
    t localT = e(4);
    byte[] arrayOfByte = a;
    int j = c;
    int i = j + 1;
    arrayOfByte[j] = ((byte)(paramInt >>> 24 & 0xFF));
    j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 16 & 0xFF));
    i = j + 1;
    arrayOfByte[j] = ((byte)(paramInt >>> 8 & 0xFF));
    arrayOfByte[i] = ((byte)(paramInt & 0xFF));
    c = (i + 1);
    b += 4L;
    return this;
  }
  
  public String d(long paramLong)
    throws EOFException
  {
    return a(paramLong, z.a);
  }
  
  public f e()
  {
    return this;
  }
  
  t e(int paramInt)
  {
    if ((paramInt < 1) || (paramInt > 8192)) {
      throw new IllegalArgumentException();
    }
    t localT2;
    t localT1;
    if (a == null)
    {
      a = u.a();
      localT2 = a;
      t localT3 = a;
      localT1 = a;
      g = localT1;
      f = localT1;
    }
    do
    {
      return localT1;
      localT2 = a.g;
      if (c + paramInt > 8192) {
        break;
      }
      localT1 = localT2;
    } while (e);
    return localT2.a(u.a());
  }
  
  String e(long paramLong)
    throws EOFException
  {
    if ((paramLong > 0L) && (b(paramLong - 1L) == 13))
    {
      str = d(paramLong - 1L);
      g(2L);
      return str;
    }
    String str = d(paramLong);
    g(1L);
    return str;
  }
  
  public boolean equals(Object paramObject)
  {
    long l1 = 0L;
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof e)) {
      return false;
    }
    paramObject = (e)paramObject;
    if (b != b) {
      return false;
    }
    if (b == 0L) {
      return true;
    }
    Object localObject2 = a;
    paramObject = a;
    int j = b;
    int i = b;
    while (l1 < b)
    {
      long l2 = Math.min(c - j, c - i);
      int k = 0;
      while (k < l2)
      {
        if (a[j] != a[i]) {
          return false;
        }
        k += 1;
        i += 1;
        j += 1;
      }
      k = j;
      Object localObject1 = localObject2;
      if (j == c)
      {
        localObject1 = f;
        k = b;
      }
      j = i;
      localObject2 = paramObject;
      if (i == c)
      {
        localObject2 = f;
        j = b;
      }
      l1 += l2;
      i = j;
      j = k;
      paramObject = localObject2;
      localObject2 = localObject1;
    }
    return true;
  }
  
  public boolean f()
  {
    return b == 0L;
  }
  
  public byte[] f(long paramLong)
    throws EOFException
  {
    z.a(b, 0L, paramLong);
    if (paramLong > 2147483647L) {
      throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + paramLong);
    }
    byte[] arrayOfByte = new byte[(int)paramLong];
    a(arrayOfByte);
    return arrayOfByte;
  }
  
  public void flush() {}
  
  public long g()
  {
    long l2 = b;
    long l1;
    if (l2 == 0L) {
      l1 = 0L;
    }
    t localT;
    do
    {
      do
      {
        return l1;
        localT = a.g;
        l1 = l2;
      } while (c >= 8192);
      l1 = l2;
    } while (!e);
    return l2 - (c - b);
  }
  
  public void g(long paramLong)
    throws EOFException
  {
    while (paramLong > 0L)
    {
      if (a == null) {
        throw new EOFException();
      }
      int i = (int)Math.min(paramLong, a.c - a.b);
      b -= i;
      long l = paramLong - i;
      t localT = a;
      b = (i + b);
      paramLong = l;
      if (a.b == a.c)
      {
        localT = a;
        a = localT.a();
        u.a(localT);
        paramLong = l;
      }
    }
  }
  
  public byte h()
  {
    if (b == 0L) {
      throw new IllegalStateException("size == 0");
    }
    t localT = a;
    int i = b;
    int j = c;
    byte[] arrayOfByte = a;
    int k = i + 1;
    byte b1 = arrayOfByte[i];
    b -= 1L;
    if (k == j)
    {
      a = localT.a();
      u.a(localT);
      return b1;
    }
    b = k;
    return b1;
  }
  
  public e h(long paramLong)
  {
    if (paramLong == 0L) {
      return b(48);
    }
    if (paramLong < 0L)
    {
      paramLong = -paramLong;
      if (paramLong < 0L) {
        return a("-9223372036854775808");
      }
    }
    for (int j = 1;; j = 0)
    {
      int i;
      if (paramLong < 100000000L) {
        if (paramLong < 10000L) {
          if (paramLong < 100L) {
            if (paramLong < 10L) {
              i = 1;
            }
          }
        }
      }
      int k;
      t localT;
      byte[] arrayOfByte;
      for (;;)
      {
        k = i;
        if (j != 0) {
          k = i + 1;
        }
        localT = e(k);
        arrayOfByte = a;
        i = c + k;
        while (paramLong != 0L)
        {
          int m = (int)(paramLong % 10L);
          i -= 1;
          arrayOfByte[i] = c[m];
          paramLong /= 10L;
        }
        i = 2;
        continue;
        if (paramLong < 1000L)
        {
          i = 3;
        }
        else
        {
          i = 4;
          continue;
          if (paramLong < 1000000L)
          {
            if (paramLong < 100000L) {
              i = 5;
            } else {
              i = 6;
            }
          }
          else if (paramLong < 10000000L)
          {
            i = 7;
          }
          else
          {
            i = 8;
            continue;
            if (paramLong < 1000000000000L)
            {
              if (paramLong < 10000000000L)
              {
                if (paramLong < 1000000000L) {
                  i = 9;
                } else {
                  i = 10;
                }
              }
              else if (paramLong < 100000000000L) {
                i = 11;
              } else {
                i = 12;
              }
            }
            else if (paramLong < 1000000000000000L)
            {
              if (paramLong < 10000000000000L) {
                i = 13;
              } else if (paramLong < 100000000000000L) {
                i = 14;
              } else {
                i = 15;
              }
            }
            else if (paramLong < 100000000000000000L)
            {
              if (paramLong < 10000000000000000L) {
                i = 16;
              } else {
                i = 17;
              }
            }
            else if (paramLong < 1000000000000000000L) {
              i = 18;
            } else {
              i = 19;
            }
          }
        }
      }
      if (j != 0) {
        arrayOfByte[(i - 1)] = 45;
      }
      c += k;
      paramLong = b;
      b = (k + paramLong);
      return this;
    }
  }
  
  public int hashCode()
  {
    Object localObject = a;
    if (localObject == null) {
      return 0;
    }
    int j = 1;
    int i;
    t localT;
    do
    {
      int k = b;
      int m = c;
      for (i = j; k < m; i = j + i * 31)
      {
        j = a[k];
        k += 1;
      }
      localT = f;
      j = i;
      localObject = localT;
    } while (localT != a);
    return i;
  }
  
  public e i(long paramLong)
  {
    if (paramLong == 0L) {
      return b(48);
    }
    int j = Long.numberOfTrailingZeros(Long.highestOneBit(paramLong)) / 4 + 1;
    t localT = e(j);
    byte[] arrayOfByte = a;
    int i = c + j - 1;
    int k = c;
    while (i >= k)
    {
      arrayOfByte[i] = c[((int)(0xF & paramLong))];
      paramLong >>>= 4;
      i -= 1;
    }
    c += j;
    paramLong = b;
    b = (j + paramLong);
    return this;
  }
  
  public short i()
  {
    if (b < 2L) {
      throw new IllegalStateException("size < 2: " + b);
    }
    t localT = a;
    int k = b;
    int i = c;
    if (i - k < 2) {
      return (short)((h() & 0xFF) << 8 | h() & 0xFF);
    }
    byte[] arrayOfByte = a;
    int j = k + 1;
    k = arrayOfByte[k];
    int m = j + 1;
    j = arrayOfByte[j];
    b -= 2L;
    if (m == i)
    {
      a = localT.a();
      u.a(localT);
    }
    for (;;)
    {
      return (short)((k & 0xFF) << 8 | j & 0xFF);
      b = m;
    }
  }
  
  public int j()
  {
    if (b < 4L) {
      throw new IllegalStateException("size < 4: " + b);
    }
    t localT = a;
    int j = b;
    int i = c;
    if (i - j < 4) {
      return (h() & 0xFF) << 24 | (h() & 0xFF) << 16 | (h() & 0xFF) << 8 | h() & 0xFF;
    }
    byte[] arrayOfByte = a;
    int k = j + 1;
    j = arrayOfByte[j];
    int n = k + 1;
    k = arrayOfByte[k];
    int m = n + 1;
    int i1 = arrayOfByte[n];
    n = m + 1;
    j = (j & 0xFF) << 24 | (k & 0xFF) << 16 | (i1 & 0xFF) << 8 | arrayOfByte[m] & 0xFF;
    b -= 4L;
    if (n == i)
    {
      a = localT.a();
      u.a(localT);
      return j;
    }
    b = n;
    return j;
  }
  
  public short k()
  {
    return z.a(i());
  }
  
  public int l()
  {
    return z.a(j());
  }
  
  public long m()
  {
    if (b == 0L) {
      throw new IllegalStateException("size == 0");
    }
    long l2 = 0L;
    int i = 0;
    int j = 0;
    Object localObject = a;
    byte[] arrayOfByte = a;
    int m = b;
    int n = c;
    long l1 = l2;
    int k = i;
    label60:
    i = j;
    if (m < n)
    {
      int i1 = arrayOfByte[m];
      if ((i1 >= 48) && (i1 <= 57)) {
        i = i1 - 48;
      }
      for (;;)
      {
        if ((0xF000000000000000 & l1) == 0L) {
          break label302;
        }
        localObject = new e().i(l1).b(i1);
        throw new NumberFormatException("Number too large: " + ((e)localObject).o());
        if ((i1 >= 97) && (i1 <= 102))
        {
          i = i1 - 97 + 10;
        }
        else
        {
          if ((i1 < 65) || (i1 > 70)) {
            break;
          }
          i = i1 - 65 + 10;
        }
      }
      if (k == 0) {
        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(i1));
      }
      i = 1;
    }
    if (m == n)
    {
      a = ((t)localObject).a();
      u.a((t)localObject);
    }
    for (;;)
    {
      if (i == 0)
      {
        j = i;
        i = k;
        l2 = l1;
        if (a != null) {
          break;
        }
      }
      b -= k;
      return l1;
      label302:
      l2 = i;
      k += 1;
      m += 1;
      l1 = l2 | l1 << 4;
      break label60;
      b = m;
    }
  }
  
  public h n()
  {
    return new h(q());
  }
  
  public String o()
  {
    try
    {
      String str = a(b, z.a);
      return str;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  public String p()
    throws EOFException
  {
    long l = a((byte)10);
    if (l == -1L)
    {
      e localE = new e();
      a(localE, 0L, Math.min(32L, b));
      throw new EOFException("\\n not found: size=" + b() + " content=" + localE.n().d() + "...");
    }
    return e(l);
  }
  
  public byte[] q()
  {
    try
    {
      byte[] arrayOfByte = f(b);
      return arrayOfByte;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  public void r()
  {
    try
    {
      g(b);
      return;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }
  
  public e s()
  {
    e localE = new e();
    if (b == 0L) {
      return localE;
    }
    a = new t(a);
    t localT1 = a;
    t localT2 = a;
    t localT3 = a;
    g = localT3;
    f = localT3;
    for (localT1 = a.f; localT1 != a; localT1 = f) {
      a.g.a(new t(localT1));
    }
    b = b;
    return localE;
  }
  
  public String toString()
  {
    if (b == 0L) {
      return "Buffer[size=0]";
    }
    Object localObject;
    if (b <= 16L)
    {
      localObject = s().n();
      return String.format("Buffer[size=%s data=%s]", new Object[] { Long.valueOf(b), ((h)localObject).d() });
    }
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(a.a, a.b, a.c - a.b);
      for (localObject = a.f; localObject != a; localObject = f) {
        localMessageDigest.update(a, b, c - b);
      }
      localObject = String.format("Buffer[size=%s md5=%s]", new Object[] { Long.valueOf(b), h.a(localMessageDigest.digest()).d() });
      return localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new AssertionError();
    }
  }
}
