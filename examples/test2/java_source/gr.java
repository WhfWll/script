import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class gr
  extends fv
{
  private static final char[] jdField_a_of_type_ArrayOfChar = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private int jdField_a_of_type_Int;
  private byte[] jdField_a_of_type_ArrayOfByte;
  
  private gr(byte[] paramArrayOfByte, int paramInt)
  {
    jdField_a_of_type_ArrayOfByte = paramArrayOfByte;
    jdField_a_of_type_Int = paramInt;
  }
  
  static gr a(int paramInt, InputStream paramInputStream)
    throws IOException
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("truncated BIT STRING detected");
    }
    int i = paramInputStream.read();
    byte[] arrayOfByte = new byte[paramInt - 1];
    if ((arrayOfByte.length != 0) && (jd.a(paramInputStream, arrayOfByte) != arrayOfByte.length)) {
      throw new EOFException("EOF encountered in middle of BIT STRING");
    }
    return new gr(arrayOfByte, i);
  }
  
  private String a()
  {
    StringBuffer localStringBuffer = new StringBuffer("#");
    Object localObject = new ByteArrayOutputStream();
    fs localFs = new fs((OutputStream)localObject);
    try
    {
      localFs.a(this);
      localObject = ((ByteArrayOutputStream)localObject).toByteArray();
      int i = 0;
      while (i != localObject.length)
      {
        localStringBuffer.append(jdField_a_of_type_ArrayOfChar[(localObject[i] >>> 4 & 0xF)]);
        localStringBuffer.append(jdField_a_of_type_ArrayOfChar[(localObject[i] & 0xF)]);
        i += 1;
      }
      return localIOException.toString();
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("internal error encoding BitString");
    }
  }
  
  final int a()
  {
    return id.a(jdField_a_of_type_ArrayOfByte.length + 1) + 1 + jdField_a_of_type_ArrayOfByte.length + 1;
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    byte[] arrayOfByte = new byte[jdField_a_of_type_ArrayOfByte.length + 1];
    arrayOfByte[0] = ((byte)jdField_a_of_type_Int);
    System.arraycopy(jdField_a_of_type_ArrayOfByte, 0, arrayOfByte, 1, arrayOfByte.length - 1);
    paramFs.a(3, arrayOfByte);
  }
  
  final boolean a()
  {
    return false;
  }
  
  protected final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof gr)) {}
    do
    {
      return false;
      paramFv = (gr)paramFv;
    } while ((jdField_a_of_type_Int != jdField_a_of_type_Int) || (!at.a(jdField_a_of_type_ArrayOfByte, jdField_a_of_type_ArrayOfByte)));
    return true;
  }
  
  public final int hashCode()
  {
    return jdField_a_of_type_Int ^ at.a(jdField_a_of_type_ArrayOfByte);
  }
  
  public final String toString()
  {
    return a();
  }
}
