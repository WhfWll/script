import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Vector;

public final class gu
  extends fv
{
  private int jdField_a_of_type_Int;
  private fm jdField_a_of_type_Fm;
  private fp jdField_a_of_type_Fp;
  private fv jdField_a_of_type_Fv;
  private fv b;
  
  public gu(fh paramFh)
  {
    Object localObject2 = a(paramFh, 0);
    if ((localObject2 instanceof fp))
    {
      jdField_a_of_type_Fp = ((fp)localObject2);
      localObject2 = a(paramFh, 1);
    }
    for (;;)
    {
      Object localObject1 = localObject2;
      int i = j;
      if ((localObject2 instanceof fm))
      {
        jdField_a_of_type_Fm = ((fm)localObject2);
        i = j + 1;
        localObject1 = a(paramFh, i);
      }
      localObject2 = localObject1;
      j = i;
      if (!(localObject1 instanceof hn))
      {
        jdField_a_of_type_Fv = ((fv)localObject1);
        j = i + 1;
        localObject2 = a(paramFh, j);
      }
      if (a.size() != j + 1) {
        throw new IllegalArgumentException("input vector too large");
      }
      if (!(localObject2 instanceof hn)) {
        throw new IllegalArgumentException("No tagged object found in vector. Structure doesn't seem to be of type External");
      }
      paramFh = (hn)localObject2;
      i = jdField_a_of_type_Int;
      if ((i < 0) || (i > 2)) {
        throw new IllegalArgumentException("invalid encoding value: " + i);
      }
      jdField_a_of_type_Int = i;
      if (jdField_a_of_type_Fg != null) {}
      for (paramFh = jdField_a_of_type_Fg.b();; paramFh = null)
      {
        b = paramFh;
        return;
      }
      j = 0;
    }
  }
  
  private static fv a(fh paramFh, int paramInt)
  {
    if (a.size() <= paramInt) {
      throw new IllegalArgumentException("too few objects in input vector");
    }
    return paramFh.a(paramInt).b();
  }
  
  final int a()
    throws IOException
  {
    return a().length;
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    if (jdField_a_of_type_Fp != null) {
      localByteArrayOutputStream.write(jdField_a_of_type_Fp.a("DER"));
    }
    if (jdField_a_of_type_Fm != null) {
      localByteArrayOutputStream.write(jdField_a_of_type_Fm.a("DER"));
    }
    if (jdField_a_of_type_Fv != null) {
      localByteArrayOutputStream.write(jdField_a_of_type_Fv.a("DER"));
    }
    localByteArrayOutputStream.write(new hn(true, jdField_a_of_type_Int, b).a("DER"));
    paramFs.a(32, 8, localByteArrayOutputStream.toByteArray());
  }
  
  final boolean a()
  {
    return true;
  }
  
  final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof gu)) {}
    do
    {
      return false;
      if (this == paramFv) {
        return true;
      }
      paramFv = (gu)paramFv;
    } while (((jdField_a_of_type_Fp != null) && ((jdField_a_of_type_Fp == null) || (!jdField_a_of_type_Fp.equals(jdField_a_of_type_Fp)))) || ((jdField_a_of_type_Fm != null) && ((jdField_a_of_type_Fm == null) || (!jdField_a_of_type_Fm.equals(jdField_a_of_type_Fm)))) || ((jdField_a_of_type_Fv != null) && ((jdField_a_of_type_Fv == null) || (!jdField_a_of_type_Fv.equals(jdField_a_of_type_Fv)))));
    return b.equals(b);
  }
  
  public final int hashCode()
  {
    int j = 0;
    if (jdField_a_of_type_Fp != null) {
      j = jdField_a_of_type_Fp.hashCode();
    }
    int i = j;
    if (jdField_a_of_type_Fm != null) {
      i = j ^ jdField_a_of_type_Fm.hashCode();
    }
    j = i;
    if (jdField_a_of_type_Fv != null) {
      j = i ^ jdField_a_of_type_Fv.hashCode();
    }
    return j ^ b.hashCode();
  }
}
