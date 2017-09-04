import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class jf
{
  private String jdField_a_of_type_JavaLangString;
  private List jdField_a_of_type_JavaUtilList;
  private byte[] jdField_a_of_type_ArrayOfByte;
  
  static
  {
    Collections.unmodifiableList(new ArrayList());
  }
  
  public jf(String paramString, List paramList, byte[] paramArrayOfByte)
  {
    jdField_a_of_type_JavaLangString = paramString;
    jdField_a_of_type_JavaUtilList = Collections.unmodifiableList(paramList);
    jdField_a_of_type_ArrayOfByte = paramArrayOfByte;
  }
  
  public final String a()
  {
    return jdField_a_of_type_JavaLangString;
  }
  
  public final List a()
  {
    return jdField_a_of_type_JavaUtilList;
  }
  
  public final byte[] a()
  {
    return jdField_a_of_type_ArrayOfByte;
  }
}
