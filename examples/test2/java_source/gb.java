public abstract class gb
  extends fv
  implements fz
{
  int jdField_a_of_type_Int;
  fg jdField_a_of_type_Fg = null;
  boolean jdField_a_of_type_Boolean = true;
  
  public gb(boolean paramBoolean, int paramInt, fg paramFg)
  {
    if ((paramFg instanceof ff)) {}
    for (jdField_a_of_type_Boolean = true;; jdField_a_of_type_Boolean = paramBoolean)
    {
      jdField_a_of_type_Int = paramInt;
      if (!jdField_a_of_type_Boolean) {
        break;
      }
      jdField_a_of_type_Fg = paramFg;
      return;
    }
    paramFg.b();
    jdField_a_of_type_Fg = paramFg;
  }
  
  public final fv a()
  {
    return b();
  }
  
  final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof gb)) {}
    do
    {
      do
      {
        return false;
        paramFv = (gb)paramFv;
      } while ((jdField_a_of_type_Int != jdField_a_of_type_Int) || (jdField_a_of_type_Boolean != jdField_a_of_type_Boolean));
      if (jdField_a_of_type_Fg != null) {
        break;
      }
    } while (jdField_a_of_type_Fg != null);
    while (jdField_a_of_type_Fg.b().equals(jdField_a_of_type_Fg.b())) {
      return true;
    }
    return false;
  }
  
  final fv c()
  {
    return new hn(jdField_a_of_type_Boolean, jdField_a_of_type_Int, jdField_a_of_type_Fg);
  }
  
  final fv d()
  {
    return new hv(jdField_a_of_type_Boolean, jdField_a_of_type_Int, jdField_a_of_type_Fg);
  }
  
  public int hashCode()
  {
    int j = jdField_a_of_type_Int;
    int i = j;
    if (jdField_a_of_type_Fg != null) {
      i = j ^ jdField_a_of_type_Fg.hashCode();
    }
    return i;
  }
  
  public String toString()
  {
    return "[" + jdField_a_of_type_Int + "]" + jdField_a_of_type_Fg;
  }
}
