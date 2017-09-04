import java.util.Hashtable;

public final class jx
{
  Hashtable jdField_a_of_type_JavaUtilHashtable = new Hashtable();
  private jl jdField_a_of_type_Jl;
  jm jdField_a_of_type_Jm = null;
  kk jdField_a_of_type_Kk;
  boolean jdField_a_of_type_Boolean = false;
  private jl b;
  private jl c;
  
  public jx(kk paramKk)
  {
    jdField_a_of_type_Kk = paramKk;
    jdField_a_of_type_Jl = new jl(paramKk);
    b = new jl(paramKk);
    c = new jl(paramKk);
  }
  
  public final jl a(li paramLi)
  {
    if ((paramLi instanceof kp)) {
      return b((kp)paramLi);
    }
    if ((paramLi instanceof kw)) {
      paramLi = jdField_a_of_type_Jl;
    }
    for (;;)
    {
      return (jl)jdField_a_of_type_JavaUtilHashtable.get(paramLi);
      if ((paramLi instanceof kr)) {
        paramLi = b;
      } else if ((paramLi instanceof ks)) {
        paramLi = c;
      } else {
        paramLi = new Integer(paramLi.c());
      }
    }
  }
  
  final jl b(li paramLi)
  {
    if ((paramLi instanceof kx)) {
      return jdField_a_of_type_Jl;
    }
    if ((paramLi instanceof kq)) {
      return b;
    }
    return (jl)jdField_a_of_type_JavaUtilHashtable.get(new Integer(paramLi.c()));
  }
  
  public final jl c(li paramLi)
  {
    Object localObject;
    if ((paramLi instanceof kq)) {
      localObject = b;
    }
    for (;;)
    {
      if (jdField_a_of_type_Kk.a()) {
        jdField_a_of_type_Kk.a(301, new Object[] { paramLi, localObject });
      }
      return (jl)jdField_a_of_type_JavaUtilHashtable.remove(localObject);
      if ((paramLi instanceof ks)) {
        localObject = c;
      } else {
        localObject = new Integer(paramLi.c());
      }
    }
  }
  
  protected final jl d(li paramLi)
  {
    jl localJl;
    Object localObject;
    if ((paramLi instanceof kw))
    {
      localJl = jdField_a_of_type_Jl;
      localObject = localJl;
    }
    for (;;)
    {
      if (jdField_a_of_type_Kk.a()) {
        jdField_a_of_type_Kk.a(300, new Object[] { paramLi, localObject, localJl.toString() });
      }
      jdField_a_of_type_JavaUtilHashtable.put(localObject, localJl);
      if (jdField_a_of_type_Boolean) {
        localJl.a(jdField_a_of_type_Jm);
      }
      return localJl;
      if ((paramLi instanceof kr))
      {
        jdField_a_of_type_Boolean = false;
        jdField_a_of_type_Jm = null;
        b = new jl(jdField_a_of_type_Kk);
        localJl = b;
        localObject = localJl;
      }
      else if ((paramLi instanceof ks))
      {
        c = new jl(jdField_a_of_type_Kk);
        localJl = c;
        localObject = localJl;
      }
      else if ((paramLi instanceof lb))
      {
        localObject = new Integer(paramLi.c());
        localJl = a(paramLi);
      }
      else if ((paramLi instanceof lc))
      {
        localObject = new Integer(paramLi.c());
        localJl = new jl(jdField_a_of_type_Kk, (lc)paramLi);
      }
      else
      {
        localObject = new Integer(paramLi.c());
        localJl = new jl(jdField_a_of_type_Kk);
      }
    }
  }
}
