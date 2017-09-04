public final class ic
{
  int jdField_a_of_type_Int;
  private String jdField_a_of_type_JavaLangString;
  
  public ic(String paramString)
  {
    jdField_a_of_type_JavaLangString = paramString;
    jdField_a_of_type_Int = 0;
  }
  
  public final String a()
  {
    if (jdField_a_of_type_Int == -1) {
      return null;
    }
    int i = jdField_a_of_type_JavaLangString.indexOf('.', jdField_a_of_type_Int);
    if (i == -1)
    {
      str = jdField_a_of_type_JavaLangString.substring(jdField_a_of_type_Int);
      jdField_a_of_type_Int = -1;
      return str;
    }
    String str = jdField_a_of_type_JavaLangString.substring(jdField_a_of_type_Int, i);
    jdField_a_of_type_Int = (i + 1);
    return str;
  }
}
