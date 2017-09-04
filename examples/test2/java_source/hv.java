import java.io.IOException;

public final class hv
  extends gb
{
  public hv(boolean paramBoolean, int paramInt, fg paramFg)
  {
    super(paramBoolean, paramInt, paramFg);
  }
  
  final int a()
    throws IOException
  {
    int i = jdField_a_of_type_Fg.b().d().a();
    if (jdField_a_of_type_Boolean) {
      return i + (id.b(jdField_a_of_type_Int) + id.a(i));
    }
    return i - 1 + id.b(jdField_a_of_type_Int);
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    int i = 160;
    fv localFv = jdField_a_of_type_Fg.b().d();
    if (jdField_a_of_type_Boolean)
    {
      paramFs.a(160, jdField_a_of_type_Int);
      paramFs.a(localFv.a());
      paramFs.a(localFv);
      return;
    }
    if (localFv.a()) {}
    for (;;)
    {
      paramFs.a(i, jdField_a_of_type_Int);
      paramFs.a(localFv);
      return;
      i = 128;
    }
  }
  
  final boolean a()
  {
    if (jdField_a_of_type_Boolean) {
      return true;
    }
    return jdField_a_of_type_Fg.b().d().a();
  }
}
