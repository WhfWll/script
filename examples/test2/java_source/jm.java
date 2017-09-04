public class jm
  extends Exception
{
  private int jdField_a_of_type_Int;
  private Throwable jdField_a_of_type_JavaLangThrowable;
  
  public jm(int paramInt)
  {
    jdField_a_of_type_Int = paramInt;
  }
  
  public jm(Throwable paramThrowable)
  {
    jdField_a_of_type_Int = 0;
    jdField_a_of_type_JavaLangThrowable = paramThrowable;
  }
  
  public jm(Throwable paramThrowable, byte paramByte)
  {
    jdField_a_of_type_Int = 32109;
    jdField_a_of_type_JavaLangThrowable = paramThrowable;
  }
  
  public final int a()
  {
    return jdField_a_of_type_Int;
  }
  
  public Throwable getCause()
  {
    return jdField_a_of_type_JavaLangThrowable;
  }
  
  public String getMessage()
  {
    return ka.a(jdField_a_of_type_Int);
  }
  
  public String toString()
  {
    String str2 = getMessage() + " (" + jdField_a_of_type_Int + ")";
    String str1 = str2;
    if (jdField_a_of_type_JavaLangThrowable != null) {
      str1 = str2 + " - " + jdField_a_of_type_JavaLangThrowable.toString();
    }
    return str1;
  }
}
