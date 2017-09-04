import java.io.IOException;
import java.io.OutputStream;

public class fs
{
  private OutputStream a;
  
  public fs(OutputStream paramOutputStream)
  {
    a = paramOutputStream;
  }
  
  fs a()
  {
    return new hg(a);
  }
  
  final void a(int paramInt)
    throws IOException
  {
    if (paramInt > 127)
    {
      int i = 1;
      int j = paramInt;
      for (;;)
      {
        j >>>= 8;
        if (j == 0) {
          break;
        }
        i += 1;
      }
      b((byte)(i | 0x80));
      i = i - 1 << 3;
      while (i >= 0)
      {
        b((byte)(paramInt >> i));
        i -= 8;
      }
    }
    b((byte)paramInt);
  }
  
  final void a(int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramInt2 < 31)
    {
      b(paramInt1 | paramInt2);
      return;
    }
    b(paramInt1 | 0x1F);
    if (paramInt2 < 128)
    {
      b(paramInt2);
      return;
    }
    byte[] arrayOfByte = new byte[5];
    paramInt1 = arrayOfByte.length - 1;
    arrayOfByte[paramInt1] = ((byte)(paramInt2 & 0x7F));
    int j;
    int i;
    do
    {
      j = paramInt2 >> 7;
      i = paramInt1 - 1;
      arrayOfByte[i] = ((byte)(j & 0x7F | 0x80));
      paramInt1 = i;
      paramInt2 = j;
    } while (j > 127);
    paramInt1 = arrayOfByte.length;
    a.write(arrayOfByte, i, paramInt1 - i);
  }
  
  final void a(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
    throws IOException
  {
    a(paramInt1, paramInt2);
    a(paramArrayOfByte.length);
    a(paramArrayOfByte);
  }
  
  final void a(int paramInt, byte[] paramArrayOfByte)
    throws IOException
  {
    b(paramInt);
    a(paramArrayOfByte.length);
    a(paramArrayOfByte);
  }
  
  public void a(fg paramFg)
    throws IOException
  {
    if (paramFg != null)
    {
      paramFg.b().a(this);
      return;
    }
    throw new IOException("null object detected");
  }
  
  final void a(fv paramFv)
    throws IOException
  {
    if (paramFv != null)
    {
      paramFv.a(new ft(a));
      return;
    }
    throw new IOException("null object detected");
  }
  
  final void a(byte[] paramArrayOfByte)
    throws IOException
  {
    a.write(paramArrayOfByte);
  }
  
  fs b()
  {
    return new hs(a);
  }
  
  void b(int paramInt)
    throws IOException
  {
    a.write(paramInt);
  }
}
