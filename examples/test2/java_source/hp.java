import java.io.IOException;

public final class hp
  extends fv
{
  private byte[] a;
  
  hp(byte[] paramArrayOfByte)
  {
    a = paramArrayOfByte;
  }
  
  final int a()
    throws IOException
  {
    return id.a(a.length) + 1 + a.length;
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    paramFs.a(12, a);
  }
  
  final boolean a()
  {
    return false;
  }
  
  final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof hp)) {
      return false;
    }
    paramFv = (hp)paramFv;
    return at.a(a, a);
  }
  
  public final int hashCode()
  {
    return at.a(a);
  }
  
  public final String toString()
  {
    int n = 0;
    byte[] arrayOfByte = a;
    int m = 0;
    int k = 0;
    while (k < arrayOfByte.length)
    {
      m += 1;
      if ((arrayOfByte[k] & 0xF0) == 240)
      {
        m += 1;
        k += 4;
      }
      else if ((arrayOfByte[k] & 0xE0) == 224)
      {
        k += 3;
      }
      else if ((arrayOfByte[k] & 0xC0) == 192)
      {
        k += 2;
      }
      else
      {
        k += 1;
      }
    }
    char[] arrayOfChar = new char[m];
    m = 0;
    k = n;
    if (m < arrayOfByte.length)
    {
      int i;
      if ((arrayOfByte[m] & 0xF0) == 240)
      {
        n = ((arrayOfByte[m] & 0x3) << 18 | (arrayOfByte[(m + 1)] & 0x3F) << 12 | (arrayOfByte[(m + 2)] & 0x3F) << 6 | arrayOfByte[(m + 3)] & 0x3F) - 65536;
        int j = (char)(0xD800 | n >> 10);
        i = (char)(n & 0x3FF | 0xDC00);
        n = k + 1;
        arrayOfChar[k] = j;
        k = m + 4;
        m = n;
      }
      for (;;)
      {
        n = m + 1;
        arrayOfChar[m] = i;
        m = k;
        k = n;
        break;
        if ((arrayOfByte[m] & 0xE0) == 224)
        {
          i = (char)((arrayOfByte[m] & 0xF) << 12 | (arrayOfByte[(m + 1)] & 0x3F) << 6 | arrayOfByte[(m + 2)] & 0x3F);
          n = m + 3;
          m = k;
          k = n;
        }
        else if ((arrayOfByte[m] & 0xD0) == 208)
        {
          i = (char)((arrayOfByte[m] & 0x1F) << 6 | arrayOfByte[(m + 1)] & 0x3F);
          n = m + 2;
          m = k;
          k = n;
        }
        else if ((arrayOfByte[m] & 0xC0) == 192)
        {
          i = (char)((arrayOfByte[m] & 0x1F) << 6 | arrayOfByte[(m + 1)] & 0x3F);
          n = m + 2;
          m = k;
          k = n;
        }
        else
        {
          i = (char)(arrayOfByte[m] & 0xFF);
          n = m + 1;
          m = k;
          k = n;
        }
      }
    }
    return new String(arrayOfChar);
  }
}
