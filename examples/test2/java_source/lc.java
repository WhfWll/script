import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class lc
  extends kv
{
  public String a;
  public jn a;
  private byte[] a;
  
  public lc(byte paramByte, byte[] paramArrayOfByte)
    throws jm, IOException
  {
    super((byte)3);
    jdField_a_of_type_ArrayOfByte = null;
    jdField_a_of_type_Jn = new ld();
    jdField_a_of_type_Jn.a(paramByte >> 1 & 0x3);
    if ((paramByte & 0x1) == 1) {
      jdField_a_of_type_Jn.a(true);
    }
    if ((paramByte & 0x8) == 8) {
      ((ld)jdField_a_of_type_Jn).b(true);
    }
    ko localKo = new ko(new ByteArrayInputStream(paramArrayOfByte));
    DataInputStream localDataInputStream = new DataInputStream(localKo);
    jdField_a_of_type_JavaLangString = localDataInputStream.readUTF();
    if (jdField_a_of_type_Jn.jdField_a_of_type_Int > 0) {
      b = localDataInputStream.readUnsignedShort();
    }
    localDataInputStream.close();
    paramArrayOfByte = new byte[paramArrayOfByte.length - localKo.a()];
    localDataInputStream.readFully(paramArrayOfByte);
    jdField_a_of_type_Jn.a(paramArrayOfByte);
  }
  
  public lc(String paramString, jn paramJn)
  {
    super((byte)3);
    jdField_a_of_type_ArrayOfByte = null;
    jdField_a_of_type_JavaLangString = paramString;
    jdField_a_of_type_Jn = paramJn;
  }
  
  protected final byte a()
  {
    byte b2 = (byte)(jdField_a_of_type_Jn.jdField_a_of_type_Int << 1);
    byte b1 = b2;
    if (jdField_a_of_type_Jn.jdField_a_of_type_Boolean) {
      b1 = (byte)(b2 | 0x1);
    }
    b2 = b1;
    if (jdField_a_of_type_Jn.b) {
      b2 = (byte)(b1 | 0x8);
    }
    return b2;
  }
  
  public final void a(int paramInt)
  {
    super.a(paramInt);
    if ((jdField_a_of_type_Jn instanceof ld)) {
      jn localJn = jdField_a_of_type_Jn;
    }
  }
  
  public final boolean a()
  {
    return true;
  }
  
  public final int b()
  {
    try
    {
      int i = b().length;
      return i;
    }
    catch (jm localJm) {}
    return 0;
  }
  
  public final byte[] b()
    throws jm
  {
    if (jdField_a_of_type_ArrayOfByte == null) {
      jdField_a_of_type_ArrayOfByte = jdField_a_of_type_Jn.jdField_a_of_type_ArrayOfByte;
    }
    return jdField_a_of_type_ArrayOfByte;
  }
  
  protected final byte[] b_()
    throws jm
  {
    try
    {
      Object localObject = new ByteArrayOutputStream();
      DataOutputStream localDataOutputStream = new DataOutputStream((OutputStream)localObject);
      localDataOutputStream.writeUTF(jdField_a_of_type_JavaLangString);
      if (jdField_a_of_type_Jn.jdField_a_of_type_Int > 0) {
        localDataOutputStream.writeShort(b);
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
}
