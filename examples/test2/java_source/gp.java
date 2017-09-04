import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Vector;

public class gp
  extends fv
{
  private final int jdField_a_of_type_Int;
  private final boolean jdField_a_of_type_Boolean;
  private final byte[] jdField_a_of_type_ArrayOfByte;
  
  public gp(int paramInt, fh paramFh)
  {
    jdField_a_of_type_Int = paramInt;
    jdField_a_of_type_Boolean = true;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramInt = 0;
    while (paramInt != a.size()) {
      try
      {
        localByteArrayOutputStream.write(((fo)paramFh.a(paramInt)).a("DER"));
        paramInt += 1;
      }
      catch (IOException paramFh)
      {
        throw new fu("malformed object: " + paramFh, paramFh);
      }
    }
    jdField_a_of_type_ArrayOfByte = localByteArrayOutputStream.toByteArray();
  }
  
  gp(boolean paramBoolean, int paramInt, byte[] paramArrayOfByte)
  {
    jdField_a_of_type_Boolean = paramBoolean;
    jdField_a_of_type_Int = paramInt;
    jdField_a_of_type_ArrayOfByte = paramArrayOfByte;
  }
  
  final int a()
    throws IOException
  {
    return id.b(jdField_a_of_type_Int) + id.a(jdField_a_of_type_ArrayOfByte.length) + jdField_a_of_type_ArrayOfByte.length;
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    int i = 64;
    if (jdField_a_of_type_Boolean) {
      i = 96;
    }
    paramFs.a(i, jdField_a_of_type_Int, jdField_a_of_type_ArrayOfByte);
  }
  
  public final boolean a()
  {
    return jdField_a_of_type_Boolean;
  }
  
  final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof gp)) {}
    do
    {
      return false;
      paramFv = (gp)paramFv;
    } while ((jdField_a_of_type_Boolean != jdField_a_of_type_Boolean) || (jdField_a_of_type_Int != jdField_a_of_type_Int) || (!at.a(jdField_a_of_type_ArrayOfByte, jdField_a_of_type_ArrayOfByte)));
    return true;
  }
  
  public int hashCode()
  {
    if (jdField_a_of_type_Boolean) {}
    for (int i = 1;; i = 0) {
      return i ^ jdField_a_of_type_Int ^ at.a(jdField_a_of_type_ArrayOfByte);
    }
  }
}
