import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

public final class gm
  extends gb
{
  public gm(boolean paramBoolean, int paramInt, fg paramFg)
  {
    super(paramBoolean, paramInt, paramFg);
  }
  
  final int a()
    throws IOException
  {
    int i = jdField_a_of_type_Fg.b().a();
    if (jdField_a_of_type_Boolean) {
      return i + (id.b(jdField_a_of_type_Int) + id.a(i));
    }
    return i - 1 + id.b(jdField_a_of_type_Int);
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    paramFs.a(160, jdField_a_of_type_Int);
    paramFs.b(128);
    if (!jdField_a_of_type_Boolean)
    {
      Enumeration localEnumeration;
      if ((jdField_a_of_type_Fg instanceof fq)) {
        if ((jdField_a_of_type_Fg instanceof gf)) {
          localEnumeration = ((gf)jdField_a_of_type_Fg).a();
        }
      }
      for (;;)
      {
        if (!localEnumeration.hasMoreElements()) {
          break label197;
        }
        paramFs.a((fg)localEnumeration.nextElement());
        continue;
        localEnumeration = new gf(((fq)jdField_a_of_type_Fg).b()).a();
        continue;
        if ((jdField_a_of_type_Fg instanceof fw))
        {
          localEnumeration = ((fw)jdField_a_of_type_Fg).a();
        }
        else
        {
          if (!(jdField_a_of_type_Fg instanceof fy)) {
            break;
          }
          localEnumeration = jdField_a_of_type_Fg).a.elements();
        }
      }
      throw new RuntimeException("not implemented: " + jdField_a_of_type_Fg.getClass().getName());
    }
    paramFs.a(jdField_a_of_type_Fg);
    label197:
    paramFs.b(0);
    paramFs.b(0);
  }
  
  final boolean a()
  {
    if (jdField_a_of_type_Boolean) {
      return true;
    }
    return jdField_a_of_type_Fg.b().c().a();
  }
}
