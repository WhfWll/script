public final class ii
  extends ig
{
  private int[] a = new int[16];
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  
  public ii()
  {
    a();
  }
  
  private static int a(int paramInt1, int paramInt2)
  {
    return paramInt1 << paramInt2 | paramInt1 >>> 32 - paramInt2;
  }
  
  private static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt2 | (paramInt1 ^ 0xFFFFFFFF) & paramInt3;
  }
  
  private static void a(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)paramInt1);
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 >>> 8));
    paramArrayOfByte[(paramInt2 + 2)] = ((byte)(paramInt1 >>> 16));
    paramArrayOfByte[(paramInt2 + 3)] = (paramInt1 >> 24);
  }
  
  private static int b(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt3 | (paramInt3 ^ 0xFFFFFFFF) & paramInt2;
  }
  
  public final int a(byte[] paramArrayOfByte)
  {
    long l = jdField_a_of_type_Long;
    a((byte)Byte.MIN_VALUE);
    while (jdField_a_of_type_Int != 0) {
      a((byte)0);
    }
    a(l << 3);
    b();
    a(b, paramArrayOfByte, 0);
    a(c, paramArrayOfByte, 4);
    a(d, paramArrayOfByte, 8);
    a(e, paramArrayOfByte, 12);
    a();
    return 16;
  }
  
  public final void a()
  {
    super.a();
    b = 1732584193;
    c = -271733879;
    d = -1732584194;
    e = 271733878;
    f = 0;
    int i = 0;
    while (i != a.length)
    {
      a[i] = 0;
      i += 1;
    }
  }
  
  protected final void a(long paramLong)
  {
    if (f > 14) {
      b();
    }
    a[14] = ((int)paramLong);
    a[15] = ((int)(paramLong >>> 32));
  }
  
  protected final void a(byte[] paramArrayOfByte, int paramInt)
  {
    int[] arrayOfInt = a;
    int i = f;
    f = (i + 1);
    arrayOfInt[i] = (paramArrayOfByte[paramInt] & 0xFF | (paramArrayOfByte[(paramInt + 1)] & 0xFF) << 8 | (paramArrayOfByte[(paramInt + 2)] & 0xFF) << 16 | (paramArrayOfByte[(paramInt + 3)] & 0xFF) << 24);
    if (f == 16) {
      b();
    }
  }
  
  protected final void b()
  {
    int j = b;
    int i = c;
    int m = d;
    int k = e;
    j = a(j + a(i, m, k) + a[0] - 680876936, 7) + i;
    k = a(k + a(j, i, m) + a[1] - 389564586, 12) + j;
    m = a(m + a(k, j, i) + a[2] + 606105819, 17) + k;
    i = a(i + a(m, k, j) + a[3] - 1044525330, 22) + m;
    j = a(j + a(i, m, k) + a[4] - 176418897, 7) + i;
    k = a(k + a(j, i, m) + a[5] + 1200080426, 12) + j;
    m = a(m + a(k, j, i) + a[6] - 1473231341, 17) + k;
    i = a(i + a(m, k, j) + a[7] - 45705983, 22) + m;
    j = a(j + a(i, m, k) + a[8] + 1770035416, 7) + i;
    k = a(k + a(j, i, m) + a[9] - 1958414417, 12) + j;
    m = a(m + a(k, j, i) + a[10] - 42063, 17) + k;
    i = a(i + a(m, k, j) + a[11] - 1990404162, 22) + m;
    j = a(j + a(i, m, k) + a[12] + 1804603682, 7) + i;
    k = a(k + a(j, i, m) + a[13] - 40341101, 12) + j;
    m = a(m + a(k, j, i) + a[14] - 1502002290, 17) + k;
    i = a(i + a(m, k, j) + a[15] + 1236535329, 22) + m;
    j = a(j + b(i, m, k) + a[1] - 165796510, 5) + i;
    k = a(k + b(j, i, m) + a[6] - 1069501632, 9) + j;
    m = a(m + b(k, j, i) + a[11] + 643717713, 14) + k;
    i = a(i + b(m, k, j) + a[0] - 373897302, 20) + m;
    j = a(j + b(i, m, k) + a[5] - 701558691, 5) + i;
    k = a(k + b(j, i, m) + a[10] + 38016083, 9) + j;
    m = a(m + b(k, j, i) + a[15] - 660478335, 14) + k;
    i = a(i + b(m, k, j) + a[4] - 405537848, 20) + m;
    j = a(j + b(i, m, k) + a[9] + 568446438, 5) + i;
    k = a(k + b(j, i, m) + a[14] - 1019803690, 9) + j;
    m = a(m + b(k, j, i) + a[3] - 187363961, 14) + k;
    i = a(i + b(m, k, j) + a[8] + 1163531501, 20) + m;
    j = a(j + b(i, m, k) + a[13] - 1444681467, 5) + i;
    k = a(k + b(j, i, m) + a[2] - 51403784, 9) + j;
    m = a(m + b(k, j, i) + a[7] + 1735328473, 14) + k;
    i = a(i + b(m, k, j) + a[12] - 1926607734, 20) + m;
    j = a(j + (i ^ m ^ k) + a[5] - 378558, 4) + i;
    k = a(k + (j ^ i ^ m) + a[8] - 2022574463, 11) + j;
    m = a(m + (k ^ j ^ i) + a[11] + 1839030562, 16) + k;
    i = a(i + (m ^ k ^ j) + a[14] - 35309556, 23) + m;
    j = a(j + (i ^ m ^ k) + a[1] - 1530992060, 4) + i;
    k = a(k + (j ^ i ^ m) + a[4] + 1272893353, 11) + j;
    m = a(m + (k ^ j ^ i) + a[7] - 155497632, 16) + k;
    i = a(i + (m ^ k ^ j) + a[10] - 1094730640, 23) + m;
    j = a(j + (i ^ m ^ k) + a[13] + 681279174, 4) + i;
    k = a(k + (j ^ i ^ m) + a[0] - 358537222, 11) + j;
    m = a(m + (k ^ j ^ i) + a[3] - 722521979, 16) + k;
    i = a(i + (m ^ k ^ j) + a[6] + 76029189, 23) + m;
    j = a(j + (i ^ m ^ k) + a[9] - 640364487, 4) + i;
    k = a(k + (j ^ i ^ m) + a[12] - 421815835, 11) + j;
    m = a(m + (k ^ j ^ i) + a[15] + 530742520, 16) + k;
    i = a(i + (m ^ k ^ j) + a[2] - 995338651, 23) + m;
    j = a(j + ((k ^ 0xFFFFFFFF | i) ^ m) + a[0] - 198630844, 6) + i;
    k = a(k + ((m ^ 0xFFFFFFFF | j) ^ i) + a[7] + 1126891415, 10) + j;
    m = a(m + ((i ^ 0xFFFFFFFF | k) ^ j) + a[14] - 1416354905, 15) + k;
    i = a(i + ((j ^ 0xFFFFFFFF | m) ^ k) + a[5] - 57434055, 21) + m;
    j = a(j + ((k ^ 0xFFFFFFFF | i) ^ m) + a[12] + 1700485571, 6) + i;
    k = a(k + ((m ^ 0xFFFFFFFF | j) ^ i) + a[3] - 1894986606, 10) + j;
    m = a(m + ((i ^ 0xFFFFFFFF | k) ^ j) + a[10] - 1051523, 15) + k;
    i = a(i + ((j ^ 0xFFFFFFFF | m) ^ k) + a[1] - 2054922799, 21) + m;
    j = a(j + ((k ^ 0xFFFFFFFF | i) ^ m) + a[8] + 1873313359, 6) + i;
    k = a(k + ((m ^ 0xFFFFFFFF | j) ^ i) + a[15] - 30611744, 10) + j;
    m = a(m + ((i ^ 0xFFFFFFFF | k) ^ j) + a[6] - 1560198380, 15) + k;
    i = a(i + ((j ^ 0xFFFFFFFF | m) ^ k) + a[13] + 1309151649, 21) + m;
    j = a(j + ((k ^ 0xFFFFFFFF | i) ^ m) + a[4] - 145523070, 6) + i;
    k = a(k + ((m ^ 0xFFFFFFFF | j) ^ i) + a[11] - 1120210379, 10) + j;
    m = a(m + ((i ^ 0xFFFFFFFF | k) ^ j) + a[2] + 718787259, 15) + k;
    i = a(i + ((j ^ 0xFFFFFFFF | m) ^ k) + a[9] - 343485551, 21);
    b = (j + b);
    c += i + m;
    d += m;
    e += k;
    f = 0;
    i = 0;
    while (i != a.length)
    {
      a[i] = 0;
      i += 1;
    }
  }
}
