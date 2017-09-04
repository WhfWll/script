import java.io.IOException;
import java.util.Enumeration;

final class hz
  implements Enumeration
{
  private fl jdField_a_of_type_Fl;
  private Object jdField_a_of_type_JavaLangObject;
  
  public hz(byte[] paramArrayOfByte)
  {
    jdField_a_of_type_Fl = new fl(paramArrayOfByte, (byte)0);
    jdField_a_of_type_JavaLangObject = a();
  }
  
  private Object a()
  {
    try
    {
      fv localFv = jdField_a_of_type_Fl.a();
      return localFv;
    }
    catch (IOException localIOException)
    {
      throw new fu("malformed DER construction: " + localIOException, localIOException);
    }
  }
  
  public final boolean hasMoreElements()
  {
    return jdField_a_of_type_JavaLangObject != null;
  }
  
  public final Object nextElement()
  {
    Object localObject = jdField_a_of_type_JavaLangObject;
    jdField_a_of_type_JavaLangObject = a();
    return localObject;
  }
}
