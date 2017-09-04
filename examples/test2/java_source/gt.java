import java.io.IOException;

public class gt
  extends fv
{
  private static fi[] jdField_a_of_type_ArrayOfFi = new fi[12];
  private byte[] jdField_a_of_type_ArrayOfByte;
  
  public gt(byte[] paramArrayOfByte)
  {
    jdField_a_of_type_ArrayOfByte = paramArrayOfByte;
  }
  
  static fi a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length > 1) {
      localObject = new fi(at.a(paramArrayOfByte));
    }
    int i;
    fi localFi;
    do
    {
      return localObject;
      if (paramArrayOfByte.length == 0) {
        throw new IllegalArgumentException("ENUMERATED has zero length");
      }
      i = paramArrayOfByte[0] & 0xFF;
      if (i >= jdField_a_of_type_ArrayOfFi.length) {
        return new fi(at.a(paramArrayOfByte));
      }
      localFi = jdField_a_of_type_ArrayOfFi[i];
      localObject = localFi;
    } while (localFi != null);
    Object localObject = jdField_a_of_type_ArrayOfFi;
    paramArrayOfByte = new fi(at.a(paramArrayOfByte));
    localObject[i] = paramArrayOfByte;
    return paramArrayOfByte;
  }
  
  final int a()
  {
    return id.a(jdField_a_of_type_ArrayOfByte.length) + 1 + jdField_a_of_type_ArrayOfByte.length;
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    paramFs.a(10, jdField_a_of_type_ArrayOfByte);
  }
  
  final boolean a()
  {
    return false;
  }
  
  final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof gt)) {
      return false;
    }
    paramFv = (gt)paramFv;
    return at.a(jdField_a_of_type_ArrayOfByte, jdField_a_of_type_ArrayOfByte);
  }
  
  public int hashCode()
  {
    return at.a(jdField_a_of_type_ArrayOfByte);
  }
}
