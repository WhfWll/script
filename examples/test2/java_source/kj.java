public final class kj
{
  static
  {
    "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".toCharArray();
  }
  
  private static final long a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int j = 0;
    long l3 = 0L;
    int i = paramInt2;
    paramInt2 = j;
    if (i > 0)
    {
      i -= 1;
      j = paramArrayOfByte[paramInt1];
      if (j != 47) {
        break label156;
      }
    }
    label156:
    for (long l2 = 1L;; l2 = 0L)
    {
      long l1 = l2;
      if (j >= 48)
      {
        l1 = l2;
        if (j <= 57) {
          l1 = j + 2 - 48;
        }
      }
      l2 = l1;
      if (j >= 65)
      {
        l2 = l1;
        if (j <= 90) {
          l2 = j + 12 - 65;
        }
      }
      l1 = l2;
      if (j >= 97)
      {
        l1 = l2;
        if (j <= 122) {
          l1 = j + 38 - 97;
        }
      }
      l3 += (l1 << paramInt2);
      paramInt2 += 6;
      paramInt1 += 1;
      break;
      return l3;
    }
  }
  
  public static byte[] a(String paramString)
  {
    paramString = paramString.getBytes();
    int k = paramString.length;
    byte[] arrayOfByte = new byte[k * 3 / 4];
    int i = 0;
    long l;
    int m;
    for (int j = 0; k >= 4; j = m)
    {
      l = a(paramString, j, 4);
      k -= 4;
      m = j + 4;
      j = 2;
      while (j >= 0)
      {
        arrayOfByte[(i + j)] = ((byte)(int)(0xFF & l));
        l >>= 8;
        j -= 1;
      }
      i += 3;
    }
    if (k == 3)
    {
      l = a(paramString, j, 3);
      m = 1;
      while (m >= 0)
      {
        arrayOfByte[(i + m)] = ((byte)(int)(0xFF & l));
        l >>= 8;
        m -= 1;
      }
    }
    if (k == 2) {
      arrayOfByte[i] = ((byte)(int)(a(paramString, j, 2) & 0xFF));
    }
    return arrayOfByte;
  }
}
