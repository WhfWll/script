import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

public final class gf
  extends fq
{
  fq[] a;
  
  public gf(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }
  
  public gf(fq[] paramArrayOfFq)
  {
    super(a(paramArrayOfFq));
    jdField_a_of_type_ArrayOfFq = paramArrayOfFq;
  }
  
  private static byte[] a(fq[] paramArrayOfFq)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int i = 0;
    while (i != paramArrayOfFq.length) {
      try
      {
        localByteArrayOutputStream.write(((he)paramArrayOfFq[i]).b());
        i += 1;
      }
      catch (ClassCastException localClassCastException)
      {
        throw new IllegalArgumentException(paramArrayOfFq[i].getClass().getName() + " found in input should only contain DEROctetString");
      }
      catch (IOException paramArrayOfFq)
      {
        throw new IllegalArgumentException("exception converting octets " + paramArrayOfFq.toString());
      }
    }
    return localClassCastException.toByteArray();
  }
  
  final int a()
    throws IOException
  {
    Enumeration localEnumeration = a();
    for (int i = 0; localEnumeration.hasMoreElements(); i = ((fg)localEnumeration.nextElement()).b().a() + i) {}
    return i + 2 + 2;
  }
  
  public final Enumeration a()
  {
    if (jdField_a_of_type_ArrayOfFq == null)
    {
      Vector localVector = new Vector();
      int i = 0;
      if (i < jdField_a_of_type_ArrayOfByte.length)
      {
        if (i + 1000 > jdField_a_of_type_ArrayOfByte.length) {}
        for (int j = jdField_a_of_type_ArrayOfByte.length;; j = i + 1000)
        {
          byte[] arrayOfByte = new byte[j - i];
          System.arraycopy(jdField_a_of_type_ArrayOfByte, i, arrayOfByte, 0, arrayOfByte.length);
          localVector.addElement(new he(arrayOfByte));
          i += 1000;
          break;
        }
      }
      return localVector.elements();
    }
    return new gg(this);
  }
  
  public final void a(fs paramFs)
    throws IOException
  {
    paramFs.b(36);
    paramFs.b(128);
    Enumeration localEnumeration = a();
    while (localEnumeration.hasMoreElements()) {
      paramFs.a((fg)localEnumeration.nextElement());
    }
    paramFs.b(0);
    paramFs.b(0);
  }
  
  final boolean a()
  {
    return true;
  }
  
  public final byte[] b()
  {
    return jdField_a_of_type_ArrayOfByte;
  }
}
