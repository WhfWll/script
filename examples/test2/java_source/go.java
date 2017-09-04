import java.io.IOException;
import java.io.InputStream;

final class go
  extends InputStream
{
  private final ga jdField_a_of_type_Ga;
  private InputStream jdField_a_of_type_JavaIoInputStream;
  private boolean jdField_a_of_type_Boolean = true;
  
  go(ga paramGa)
  {
    jdField_a_of_type_Ga = paramGa;
  }
  
  public final int read()
    throws IOException
  {
    int i;
    fr localFr;
    if (jdField_a_of_type_JavaIoInputStream == null)
    {
      if (!jdField_a_of_type_Boolean)
      {
        i = -1;
        return i;
      }
      localFr = (fr)jdField_a_of_type_Ga.a();
      if (localFr == null) {
        return -1;
      }
      jdField_a_of_type_Boolean = false;
    }
    for (jdField_a_of_type_JavaIoInputStream = localFr.a();; jdField_a_of_type_JavaIoInputStream = localFr.a())
    {
      int j = jdField_a_of_type_JavaIoInputStream.read();
      i = j;
      if (j >= 0) {
        break;
      }
      localFr = (fr)jdField_a_of_type_Ga.a();
      if (localFr == null)
      {
        jdField_a_of_type_JavaIoInputStream = null;
        return -1;
      }
    }
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int j = 0;
    int i = j;
    if (jdField_a_of_type_JavaIoInputStream == null) {
      if (!jdField_a_of_type_Boolean) {
        i = -1;
      }
    }
    fr localFr;
    do
    {
      return i;
      localFr = (fr)jdField_a_of_type_Ga.a();
      if (localFr == null) {
        return -1;
      }
      jdField_a_of_type_Boolean = false;
      jdField_a_of_type_JavaIoInputStream = localFr.a();
      i = j;
      j = jdField_a_of_type_JavaIoInputStream.read(paramArrayOfByte, paramInt1 + i, paramInt2 - i);
      if (j < 0) {
        break;
      }
      j += i;
      i = j;
    } while (j == paramInt2);
    i = j;
    for (;;)
    {
      break;
      localFr = (fr)jdField_a_of_type_Ga.a();
      if (localFr == null)
      {
        jdField_a_of_type_JavaIoInputStream = null;
        if (i <= 0) {
          return -1;
        }
        return i;
      }
      jdField_a_of_type_JavaIoInputStream = localFr.a();
    }
  }
}
