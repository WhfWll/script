import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class hq
  extends fv
{
  private static final char[] jdField_a_of_type_ArrayOfChar = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private byte[] jdField_a_of_type_ArrayOfByte;
  
  public hq(byte[] paramArrayOfByte)
  {
    jdField_a_of_type_ArrayOfByte = paramArrayOfByte;
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
    return id.a(jdField_a_of_type_ArrayOfByte.length) + 1 + jdField_a_of_type_ArrayOfByte.length;
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    paramFs.a(28, jdField_a_of_type_ArrayOfByte);
  }
  
  final boolean a()
  {
    return false;
  }
  
  final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof hq)) {
      return false;
    }
    return at.a(jdField_a_of_type_ArrayOfByte, jdField_a_of_type_ArrayOfByte);
  }
  
  public final int hashCode()
  {
    return at.a(jdField_a_of_type_ArrayOfByte);
  }
  
  public final String toString()
  {
    return a();
  }
}
