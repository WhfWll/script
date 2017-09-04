import java.io.IOException;
import java.io.OutputStream;

public final class jc
  implements iz
{
  private byte[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private byte[] b = new byte[''];
  
  public jc()
  {
    a();
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
    while (j < a.length)
    {
      b[a[j]] = ((byte)j);
      j += 1;
    }
    b[65] = b[97];
    b[66] = b[98];
    b[67] = b[99];
    b[68] = b[100];
    b[69] = b[101];
    b[70] = b[102];
  }
  
  private static boolean a(char paramChar)
  {
    return (paramChar == '\n') || (paramChar == '\r') || (paramChar == '\t') || (paramChar == ' ');
  }
  
  public final int a(String paramString, OutputStream paramOutputStream)
    throws IOException
  {
    int i = 0;
    int j = paramString.length();
    while ((j > 0) && (a(paramString.charAt(j - 1)))) {
      j -= 1;
    }
    int k = 0;
    while (i < j)
    {
      while ((i < j) && (a(paramString.charAt(i)))) {
        i += 1;
      }
      byte[] arrayOfByte = b;
      int m = i + 1;
      int n = arrayOfByte[paramString.charAt(i)];
      i = m;
      while ((i < j) && (a(paramString.charAt(i)))) {
        i += 1;
      }
      m = b[paramString.charAt(i)];
      if ((n | m) < 0) {
        throw new IOException("invalid characters encountered in Hex string");
      }
      paramOutputStream.write(m | n << 4);
      k += 1;
      i += 1;
    }
    return k;
  }
  
  public final int a(byte[] paramArrayOfByte, int paramInt, OutputStream paramOutputStream)
    throws IOException
  {
    int i = 0;
    while (i < paramInt)
    {
      int j = paramArrayOfByte[i] & 0xFF;
      paramOutputStream.write(a[(j >>> 4)]);
      paramOutputStream.write(a[(j & 0xF)]);
      i += 1;
    }
    return paramInt << 1;
  }
}
