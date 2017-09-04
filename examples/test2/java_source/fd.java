import java.io.IOException;

public final class fd
  implements fg, hx
{
  private int jdField_a_of_type_Int;
  private ga jdField_a_of_type_Ga;
  
  fd(int paramInt, ga paramGa)
  {
    jdField_a_of_type_Int = paramInt;
    jdField_a_of_type_Ga = paramGa;
  }
  
  public final fv a()
    throws IOException
  {
    return new gd(jdField_a_of_type_Int, jdField_a_of_type_Ga.a());
  }
  
  public final fv b()
  {
    try
    {
      fv localFv = a();
      return localFv;
    }
    catch (IOException localIOException)
    {
      throw new fu(localIOException.getMessage(), localIOException);
    }
  }
}
