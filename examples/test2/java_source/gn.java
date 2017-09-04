import java.io.IOException;

public final class gn
  implements fz
{
  private int jdField_a_of_type_Int;
  private ga jdField_a_of_type_Ga;
  private boolean jdField_a_of_type_Boolean;
  
  gn(boolean paramBoolean, int paramInt, ga paramGa)
  {
    jdField_a_of_type_Boolean = paramBoolean;
    jdField_a_of_type_Int = paramInt;
    jdField_a_of_type_Ga = paramGa;
  }
  
  public final fv a()
    throws IOException
  {
    return jdField_a_of_type_Ga.a(jdField_a_of_type_Boolean, jdField_a_of_type_Int);
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
      throw new fu(localIOException.getMessage());
    }
  }
}
