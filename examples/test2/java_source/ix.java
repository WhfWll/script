import java.io.IOException;
import java.io.OutputStream;

public final class ix
  implements iz
{
  private byte jdField_a_of_type_Byte = 61;
  private byte[] jdField_a_of_type_ArrayOfByte = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  private byte[] b = new byte[''];
  
  public ix()
  {
    a();
  }
  
  private static int a(String paramString, int paramInt1, int paramInt2)
  {
    while ((paramInt1 < paramInt2) && (a(paramString.charAt(paramInt1)))) {
      paramInt1 += 1;
    }
    return paramInt1;
  }
  
  private void a()
  {
    int k = 0;
    int i = 0;
    int j;
    for (;;)
    {
      j = k;
      if (i >= b.length) {
        break;
      }
      b[i] = -1;
      i += 1;
    }
    while (j < jdField_a_of_type_ArrayOfByte.length)
    {
      b[jdField_a_of_type_ArrayOfByte[j]] = ((byte)j);
      j += 1;
    }
  }
  
  private static boolean a(char paramChar)
  {
    return (paramChar == '\n') || (paramChar == '\r') || (paramChar == '\t') || (paramChar == ' ');
  }
  
  public final int a(String paramString, OutputStream paramOutputStream)
    throws IOException
  {
    int j = 0;
    int i = paramString.length();
    while ((i > 0) && (a(paramString.charAt(i - 1)))) {
      i -= 1;
    }
    int m = i - 4;
    int i2;
    for (int k = a(paramString, 0, m); k < m; k = a(paramString, i2 + 1, m))
    {
      n = b[paramString.charAt(k)];
      int i1 = a(paramString, k + 1, m);
      k = b[paramString.charAt(i1)];
      i2 = a(paramString, i1 + 1, m);
      i1 = b[paramString.charAt(i2)];
      i2 = a(paramString, i2 + 1, m);
      int i3 = b[paramString.charAt(i2)];
      if ((n | k | i1 | i3) < 0) {
        throw new IOException("invalid characters encountered in base64 data");
      }
      paramOutputStream.write(n << 2 | k >> 4);
      paramOutputStream.write(k << 4 | i1 >> 2);
      paramOutputStream.write(i1 << 6 | i3);
      j += 3;
    }
    int n = paramString.charAt(i - 4);
    m = paramString.charAt(i - 3);
    k = paramString.charAt(i - 2);
    i = paramString.charAt(i - 1);
    if (k == jdField_a_of_type_Byte)
    {
      i = b[n];
      k = b[m];
      if ((i | k) < 0) {
        throw new IOException("invalid characters encountered at end of base64 data");
      }
      paramOutputStream.write(i << 2 | k >> 4);
      i = 1;
    }
    for (;;)
    {
      return i + j;
      if (i == jdField_a_of_type_Byte)
      {
        i = b[n];
        m = b[m];
        k = b[k];
        if ((i | m | k) < 0) {
          throw new IOException("invalid characters encountered at end of base64 data");
        }
        paramOutputStream.write(i << 2 | m >> 4);
        paramOutputStream.write(m << 4 | k >> 2);
        i = 2;
      }
      else
      {
        n = b[n];
        m = b[m];
        k = b[k];
        i = b[i];
        if ((n | m | k | i) < 0) {
          throw new IOException("invalid characters encountered at end of base64 data");
        }
        paramOutputStream.write(n << 2 | m >> 4);
        paramOutputStream.write(m << 4 | k >> 2);
        paramOutputStream.write(k << 6 | i);
        i = 3;
      }
    }
  }
  
  public final int a(byte[] paramArrayOfByte, int paramInt, OutputStream paramOutputStream)
    throws IOException
  {
    int i = 0;
    int j = paramInt % 3;
    int k = paramInt - j;
    paramInt = 0;
    int m;
    while (paramInt < k)
    {
      m = paramArrayOfByte[paramInt] & 0xFF;
      int n = paramArrayOfByte[(paramInt + 1)] & 0xFF;
      int i1 = paramArrayOfByte[(paramInt + 2)] & 0xFF;
      paramOutputStream.write(jdField_a_of_type_ArrayOfByte[(m >>> 2 & 0x3F)]);
      paramOutputStream.write(jdField_a_of_type_ArrayOfByte[((m << 4 | n >>> 4) & 0x3F)]);
      paramOutputStream.write(jdField_a_of_type_ArrayOfByte[((n << 2 | i1 >>> 6) & 0x3F)]);
      paramOutputStream.write(jdField_a_of_type_ArrayOfByte[(i1 & 0x3F)]);
      paramInt += 3;
    }
    switch (j)
    {
    case 0: 
    default: 
      k /= 3;
      if (j != 0) {
        break;
      }
    }
    for (paramInt = i;; paramInt = 4)
    {
      return paramInt + (k << 2);
      paramInt = paramArrayOfByte[k] & 0xFF;
      paramOutputStream.write(jdField_a_of_type_ArrayOfByte[(paramInt >>> 2 & 0x3F)]);
      paramOutputStream.write(jdField_a_of_type_ArrayOfByte[(paramInt << 4 & 0x3F)]);
      paramOutputStream.write(jdField_a_of_type_Byte);
      paramOutputStream.write(jdField_a_of_type_Byte);
      break;
      paramInt = paramArrayOfByte[k] & 0xFF;
      m = paramArrayOfByte[(k + 1)] & 0xFF;
      paramOutputStream.write(jdField_a_of_type_ArrayOfByte[(paramInt >>> 2 & 0x3F)]);
      paramOutputStream.write(jdField_a_of_type_ArrayOfByte[((paramInt << 4 | m >>> 4) & 0x3F)]);
      paramOutputStream.write(jdField_a_of_type_ArrayOfByte[(m << 2 & 0x3F)]);
      paramOutputStream.write(jdField_a_of_type_Byte);
      break;
    }
  }
}
