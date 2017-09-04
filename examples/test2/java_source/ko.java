import java.io.IOException;
import java.io.InputStream;

public final class ko
  extends InputStream
{
  private int jdField_a_of_type_Int;
  private InputStream jdField_a_of_type_JavaIoInputStream;
  
  public ko(InputStream paramInputStream)
  {
    jdField_a_of_type_JavaIoInputStream = paramInputStream;
    jdField_a_of_type_Int = 0;
  }
  
  public final int a()
  {
    return jdField_a_of_type_Int;
  }
  
  public final int read()
    throws IOException
  {
    int i = jdField_a_of_type_JavaIoInputStream.read();
    if (i != -1) {
      jdField_a_of_type_Int += 1;
    }
    return i;
  }
}
