import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class kr
  extends li
{
  private int jdField_a_of_type_Int;
  private String jdField_a_of_type_JavaLangString;
  private boolean jdField_a_of_type_Boolean;
  private String b;
  
  public kr(String paramString1, boolean paramBoolean, int paramInt, String paramString2)
  {
    super((byte)1);
    jdField_a_of_type_JavaLangString = paramString1;
    jdField_a_of_type_Boolean = paramBoolean;
    jdField_a_of_type_Int = paramInt;
    b = paramString2;
  }
  
  protected final byte a()
  {
    return 0;
  }
  
  public final boolean a()
  {
    return false;
  }
  
  public final byte[] b()
    throws jm
  {
    try
    {
      Object localObject = new ByteArrayOutputStream();
      DataOutputStream localDataOutputStream = new DataOutputStream((OutputStream)localObject);
      localDataOutputStream.writeUTF(jdField_a_of_type_JavaLangString);
      if (b != null) {
        localDataOutputStream.writeUTF(b);
      }
      localDataOutputStream.flush();
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
      localDataOutputStream.writeUTF("MQIsdp");
      localDataOutputStream.write(3);
      int i = 0;
      if (jdField_a_of_type_Boolean) {
        i = 2;
      }
      int j = i;
      if (b != null) {
        j = (byte)(i | 0x80);
      }
      localDataOutputStream.write(j);
      localDataOutputStream.writeShort(jdField_a_of_type_Int);
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
