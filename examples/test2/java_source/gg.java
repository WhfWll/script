import java.util.Enumeration;

final class gg
  implements Enumeration
{
  private int jdField_a_of_type_Int = 0;
  
  gg(gf paramGf) {}
  
  public final boolean hasMoreElements()
  {
    return jdField_a_of_type_Int < jdField_a_of_type_Gf.a.length;
  }
  
  public final Object nextElement()
  {
    fq[] arrayOfFq = jdField_a_of_type_Gf.a;
    int i = jdField_a_of_type_Int;
    jdField_a_of_type_Int = (i + 1);
    return arrayOfFq[i];
  }
}
