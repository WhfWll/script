import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

final class hw
  extends ib
{
  private static final byte[] jdField_a_of_type_ArrayOfByte = new byte[0];
  private final int jdField_a_of_type_Int;
  private int b;
  
  hw(InputStream paramInputStream, int paramInt)
  {
    super(paramInputStream, paramInt);
    if (paramInt < 0) {
      throw new IllegalArgumentException("negative lengths not allowed");
    }
    jdField_a_of_type_Int = paramInt;
    b = paramInt;
    if (paramInt == 0) {
      a();
    }
  }
  
  final int a()
  {
    return b;
  }
  
  final byte[] a()
    throws IOException
  {
    if (b == 0) {
      return jdField_a_of_type_ArrayOfByte;
    }
    byte[] arrayOfByte = new byte[b];
    int i = b - jd.a(jdField_a_of_type_JavaIoInputStream, arrayOfByte);
    b = i;
    if (i != 0) {
      throw new EOFException("DEF length " + jdField_a_of_type_Int + " object truncated by " + b);
    }
    a();
    return arrayOfByte;
  }
  
  public final int read()
    throws IOException
  {
    int i;
    if (b == 0) {
      i = -1;
    }
    int j;
    int k;
    do
    {
      return i;
      j = jdField_a_of_type_JavaIoInputStream.read();
      if (j < 0) {
        throw new EOFException("DEF length " + jdField_a_of_type_Int + " object truncated by " + b);
      }
      k = b - 1;
      b = k;
      i = j;
    } while (k != 0);
    a();
    return j;
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (b == 0) {
      paramInt1 = -1;
    }
    int i;
    do
    {
      return paramInt1;
      paramInt2 = Math.min(paramInt2, b);
      paramInt2 = jdField_a_of_type_JavaIoInputStream.read(paramArrayOfByte, paramInt1, paramInt2);
      if (paramInt2 < 0) {
        throw new EOFException("DEF length " + jdField_a_of_type_Int + " object truncated by " + b);
      }
      i = b - paramInt2;
      b = i;
      paramInt1 = paramInt2;
    } while (i != 0);
    a();
    return paramInt2;
  }
}
