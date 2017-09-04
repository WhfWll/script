import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

final class hy
  extends ib
{
  private int jdField_a_of_type_Int;
  private boolean jdField_a_of_type_Boolean = false;
  private int jdField_b_of_type_Int;
  private boolean jdField_b_of_type_Boolean = true;
  
  hy(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    super(paramInputStream, paramInt);
    jdField_a_of_type_Int = paramInputStream.read();
    jdField_b_of_type_Int = paramInputStream.read();
    if (jdField_b_of_type_Int < 0) {
      throw new EOFException();
    }
    a();
  }
  
  private boolean a()
  {
    if ((!jdField_a_of_type_Boolean) && (jdField_b_of_type_Boolean) && (jdField_a_of_type_Int == 0) && (jdField_b_of_type_Int == 0))
    {
      jdField_a_of_type_Boolean = true;
      a();
    }
    return jdField_a_of_type_Boolean;
  }
  
  final void a(boolean paramBoolean)
  {
    jdField_b_of_type_Boolean = paramBoolean;
    a();
  }
  
  public final int read()
    throws IOException
  {
    if (a()) {
      return -1;
    }
    int i = jdField_a_of_type_JavaIoInputStream.read();
    if (i < 0) {
      throw new EOFException();
    }
    int j = jdField_a_of_type_Int;
    jdField_a_of_type_Int = jdField_b_of_type_Int;
    jdField_b_of_type_Int = i;
    return j;
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if ((jdField_b_of_type_Boolean) || (paramInt2 < 3)) {
      return super.read(paramArrayOfByte, paramInt1, paramInt2);
    }
    if (jdField_a_of_type_Boolean) {
      return -1;
    }
    paramInt2 = jdField_a_of_type_JavaIoInputStream.read(paramArrayOfByte, paramInt1 + 2, paramInt2 - 2);
    if (paramInt2 < 0) {
      throw new EOFException();
    }
    paramArrayOfByte[paramInt1] = ((byte)jdField_a_of_type_Int);
    paramArrayOfByte[(paramInt1 + 1)] = ((byte)jdField_b_of_type_Int);
    jdField_a_of_type_Int = jdField_a_of_type_JavaIoInputStream.read();
    jdField_b_of_type_Int = jdField_a_of_type_JavaIoInputStream.read();
    if (jdField_b_of_type_Int < 0) {
      throw new EOFException();
    }
    return paramInt2 + 2;
  }
}
