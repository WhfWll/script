import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class lf
  extends li
{
  private int[] jdField_a_of_type_ArrayOfInt;
  private String[] jdField_a_of_type_ArrayOfJavaLangString;
  
  public lf(String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    super((byte)8);
    jdField_a_of_type_ArrayOfJavaLangString = paramArrayOfString;
    jdField_a_of_type_ArrayOfInt = paramArrayOfInt;
  }
  
  protected final byte a()
  {
    return 2;
  }
  
  public final byte[] b()
    throws jm
  {
    try
    {
      Object localObject = new ByteArrayOutputStream();
      DataOutputStream localDataOutputStream = new DataOutputStream((OutputStream)localObject);
      int i = 0;
      while (i < jdField_a_of_type_ArrayOfJavaLangString.length)
      {
        localDataOutputStream.writeUTF(jdField_a_of_type_ArrayOfJavaLangString[i]);
        localDataOutputStream.writeByte(jdField_a_of_type_ArrayOfInt[i]);
        i += 1;
      }
      localObject = ((ByteArrayOutputStream)localObject).toByteArray();
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new jm(localIOException);
    }
  }
  
  protected final byte[] b_()
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
