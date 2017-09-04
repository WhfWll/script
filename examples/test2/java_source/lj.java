import java.io.IOException;
import java.io.InputStream;

public final class lj
  extends InputStream
{
  private int jdField_a_of_type_Int;
  private byte[] jdField_a_of_type_ArrayOfByte;
  private int jdField_b_of_type_Int;
  private byte[] jdField_b_of_type_ArrayOfByte;
  private int c = 0;
  
  public lj(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    jdField_a_of_type_ArrayOfByte = paramArrayOfByte1;
    jdField_b_of_type_ArrayOfByte = paramArrayOfByte2;
    jdField_a_of_type_Int = paramInt1;
    jdField_b_of_type_Int = paramInt2;
  }
  
  public final int read()
    throws IOException
  {
    if (c < jdField_a_of_type_Int) {}
    for (int i = jdField_a_of_type_ArrayOfByte[(c + 0)];; i = jdField_b_of_type_ArrayOfByte[(c + 0 - jdField_a_of_type_Int)])
    {
      int j = i;
      if (i < 0) {
        j = i + 256;
      }
      c += 1;
      return j;
      if (c >= jdField_a_of_type_Int + jdField_b_of_type_Int) {
        break;
      }
    }
    return -1;
  }
}
