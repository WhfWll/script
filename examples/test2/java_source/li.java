import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public abstract class li
{
  private byte jdField_a_of_type_Byte;
  private byte[] jdField_a_of_type_ArrayOfByte = null;
  protected int b;
  
  public li(byte paramByte)
  {
    jdField_a_of_type_Byte = paramByte;
    b = 0;
  }
  
  public static li a(InputStream paramInputStream)
    throws jm
  {
    int j;
    try
    {
      paramInputStream = new ko(paramInputStream);
      DataInputStream localDataInputStream = new DataInputStream(paramInputStream);
      int i = localDataInputStream.readUnsignedByte();
      j = (byte)(i >> 4);
      byte b1 = (byte)(i & 0xF);
      long l = aa + paramInputStream.a() - paramInputStream.a();
      paramInputStream = new byte[0];
      if (l > 0L)
      {
        paramInputStream = new byte[(int)l];
        localDataInputStream.readFully(paramInputStream, 0, paramInputStream.length);
      }
      if (j == 3) {
        return new lc(b1, paramInputStream);
      }
      if (j == 4)
      {
        paramInputStream = new ky(paramInputStream);
        return paramInputStream;
      }
    }
    catch (IOException paramInputStream)
    {
      throw new jm(paramInputStream);
    }
    if (j == 7) {
      return new kz(paramInputStream);
    }
    if (j == 2) {
      return new kq(paramInputStream);
    }
    if (j == 13) {
      return new kx();
    }
    if (j == 9) {
      return new le(paramInputStream);
    }
    if (j == 11) {
      return new lg(paramInputStream);
    }
    if (j == 6) {
      return new lb(paramInputStream);
    }
    if (j == 5) {
      return new la(paramInputStream);
    }
    throw at.a(6);
  }
  
  protected static lk a(DataInputStream paramDataInputStream)
    throws IOException
  {
    long l1 = 0L;
    int i = 1;
    int j;
    long l2;
    do
    {
      j = paramDataInputStream.readByte();
      l2 = l1 + (j & 0x7F) * i;
      i <<= 7;
      l1 = l2;
    } while ((j & 0x80) != 0);
    return new lk(l2);
  }
  
  protected static byte[] a(long paramLong)
  {
    int i = 0;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int j;
    do
    {
      int k = (byte)(int)(paramLong % 128L);
      paramLong /= 128L;
      j = k;
      if (paramLong > 0L) {
        j = (byte)(k | 0x80);
      }
      localByteArrayOutputStream.write(j);
      j = i + 1;
      if (paramLong <= 0L) {
        break;
      }
      i = j;
    } while (j < 4);
    return localByteArrayOutputStream.toByteArray();
  }
  
  protected abstract byte a();
  
  public void a(int paramInt)
  {
    b = paramInt;
  }
  
  public boolean a()
  {
    return true;
  }
  
  public byte[] b()
    throws jm
  {
    return new byte[0];
  }
  
  protected abstract byte[] b_()
    throws jm;
  
  public final int c()
  {
    return b;
  }
  
  public final byte[] c()
    throws jm
  {
    if (jdField_a_of_type_ArrayOfByte == null) {}
    try
    {
      int i = jdField_a_of_type_Byte;
      int j = a();
      byte[] arrayOfByte = b_();
      int k = arrayOfByte.length;
      int m = b().length;
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
      localDataOutputStream.writeByte((i & 0xF) << 4 ^ j & 0xF);
      localDataOutputStream.write(a(k + m));
      localDataOutputStream.write(arrayOfByte);
      localDataOutputStream.flush();
      jdField_a_of_type_ArrayOfByte = localByteArrayOutputStream.toByteArray();
      return jdField_a_of_type_ArrayOfByte;
    }
    catch (IOException localIOException)
    {
      throw new jm(localIOException);
    }
  }
  
  protected final byte[] d()
    throws jm
  {
    try
    {
      Object localObject = new ByteArrayOutputStream();
      DataOutputStream localDataOutputStream = new DataOutputStream((OutputStream)localObject);
      localDataOutputStream.writeShort(b);
      localDataOutputStream.flush();
      localObject = ((ByteArrayOutputStream)localObject).toByteArray();
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new jm(localIOException);
    }
  }
}
