import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

public abstract class fy
  extends fv
{
  Vector jdField_a_of_type_JavaUtilVector = new Vector();
  private boolean jdField_a_of_type_Boolean = false;
  
  protected fy() {}
  
  protected fy(fh paramFh)
  {
    while (i != jdField_a_of_type_JavaUtilVector.size())
    {
      jdField_a_of_type_JavaUtilVector.addElement(paramFh.a(i));
      i += 1;
    }
  }
  
  private static fg a(Enumeration paramEnumeration)
  {
    fg localFg = (fg)paramEnumeration.nextElement();
    paramEnumeration = localFg;
    if (localFg == null) {
      paramEnumeration = hb.a;
    }
    return paramEnumeration;
  }
  
  private void a()
  {
    if (!jdField_a_of_type_Boolean)
    {
      jdField_a_of_type_Boolean = true;
      if (jdField_a_of_type_JavaUtilVector.size() > 1)
      {
        int n = jdField_a_of_type_JavaUtilVector.size() - 1;
        int i = 1;
        while (i != 0)
        {
          Object localObject1 = a((fg)jdField_a_of_type_JavaUtilVector.elementAt(0));
          int j = 0;
          int m = 0;
          i = 0;
          if (m != n)
          {
            Object localObject2 = a((fg)jdField_a_of_type_JavaUtilVector.elementAt(m + 1));
            int i1 = Math.min(localObject1.length, localObject2.length);
            int k = 0;
            label102:
            if (k != i1) {
              if (localObject1[k] != localObject2[k]) {
                if ((localObject1[k] & 0xFF) < (localObject2[k] & 0xFF))
                {
                  k = 1;
                  label140:
                  if (k == 0) {
                    break label199;
                  }
                  k = j;
                  j = i;
                  i = k;
                  localObject1 = localObject2;
                }
              }
            }
            for (;;)
            {
              m += 1;
              k = j;
              j = i;
              i = k;
              break;
              k = 0;
              break label140;
              k += 1;
              break label102;
              if (i1 == localObject1.length)
              {
                k = 1;
                break label140;
              }
              k = 0;
              break label140;
              label199:
              localObject2 = jdField_a_of_type_JavaUtilVector.elementAt(m);
              jdField_a_of_type_JavaUtilVector.setElementAt(jdField_a_of_type_JavaUtilVector.elementAt(m + 1), m);
              jdField_a_of_type_JavaUtilVector.setElementAt(localObject2, m + 1);
              j = 1;
              i = m;
            }
          }
          n = j;
        }
      }
    }
  }
  
  private static byte[] a(fg paramFg)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    fs localFs = new fs(localByteArrayOutputStream);
    try
    {
      localFs.a(paramFg);
      return localByteArrayOutputStream.toByteArray();
    }
    catch (IOException paramFg)
    {
      throw new IllegalArgumentException("cannot encode object added to SET");
    }
  }
  
  final boolean a()
  {
    return true;
  }
  
  final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof fy)) {}
    do
    {
      return false;
      localObject1 = (fy)paramFv;
    } while (jdField_a_of_type_JavaUtilVector.size() != jdField_a_of_type_JavaUtilVector.size());
    paramFv = jdField_a_of_type_JavaUtilVector.elements();
    Object localObject1 = jdField_a_of_type_JavaUtilVector.elements();
    while (paramFv.hasMoreElements())
    {
      Object localObject3 = a(paramFv);
      Object localObject2 = a((Enumeration)localObject1);
      localObject3 = ((fg)localObject3).b();
      localObject2 = ((fg)localObject2).b();
      if ((localObject3 != localObject2) && (!((fv)localObject3).equals(localObject2))) {
        return false;
      }
    }
    return true;
  }
  
  final fv c()
  {
    if (jdField_a_of_type_Boolean)
    {
      localObject = new hk();
      jdField_a_of_type_JavaUtilVector = jdField_a_of_type_JavaUtilVector;
      return localObject;
    }
    Object localObject = new Vector();
    int i = 0;
    while (i != jdField_a_of_type_JavaUtilVector.size())
    {
      ((Vector)localObject).addElement(jdField_a_of_type_JavaUtilVector.elementAt(i));
      i += 1;
    }
    hk localHk = new hk();
    jdField_a_of_type_JavaUtilVector = ((Vector)localObject);
    localHk.a();
    return localHk;
  }
  
  final fv d()
  {
    hu localHu = new hu();
    jdField_a_of_type_JavaUtilVector = jdField_a_of_type_JavaUtilVector;
    return localHu;
  }
  
  public int hashCode()
  {
    Enumeration localEnumeration = jdField_a_of_type_JavaUtilVector.elements();
    for (int i = jdField_a_of_type_JavaUtilVector.size(); localEnumeration.hasMoreElements(); i = i * 17 ^ a(localEnumeration).hashCode()) {}
    return i;
  }
  
  public String toString()
  {
    return jdField_a_of_type_JavaUtilVector.toString();
  }
}
