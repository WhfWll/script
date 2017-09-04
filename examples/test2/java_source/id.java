import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

final class id
{
  private static final long a = Runtime.getRuntime().maxMemory();
  
  static int a(int paramInt)
  {
    int j = 1;
    int k = 1;
    if (paramInt > 127)
    {
      j = 1;
      int i = paramInt;
      paramInt = j;
      for (;;)
      {
        i >>>= 8;
        if (i == 0) {
          break;
        }
        paramInt += 1;
      }
      i = paramInt - 1 << 3;
      paramInt = k;
      for (;;)
      {
        j = paramInt;
        if (i < 0) {
          break;
        }
        paramInt += 1;
        i -= 8;
      }
    }
    return j;
  }
  
  static int a(InputStream paramInputStream)
  {
    if ((paramInputStream instanceof ib)) {
      return ((ib)paramInputStream).a();
    }
    if ((paramInputStream instanceof fl)) {
      return ((fl)paramInputStream).a();
    }
    if ((paramInputStream instanceof ByteArrayInputStream)) {
      return ((ByteArrayInputStream)paramInputStream).available();
    }
    if ((paramInputStream instanceof FileInputStream)) {
      try
      {
        long l = ((FileInputStream)paramInputStream).getChannel().size();
        if (l < 2147483647L) {
          return (int)l;
        }
      }
      catch (IOException paramInputStream) {}
    }
    if (a > 2147483647L) {
      return Integer.MAX_VALUE;
    }
    return (int)a;
  }
  
  static int b(int paramInt)
    throws IOException
  {
    int i = 1;
    if (paramInt >= 31)
    {
      if (paramInt < 128) {
        i = 2;
      }
    }
    else {
      return i;
    }
    byte[] arrayOfByte = new byte[5];
    i = arrayOfByte.length - 1;
    arrayOfByte[i] = ((byte)(paramInt & 0x7F));
    int j;
    int k;
    do
    {
      j = paramInt >> 7;
      k = i - 1;
      arrayOfByte[k] = ((byte)(j & 0x7F | 0x80));
      i = k;
      paramInt = j;
    } while (j > 127);
    return arrayOfByte.length - k + 1;
  }
}
