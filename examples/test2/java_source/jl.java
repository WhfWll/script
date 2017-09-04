public final class jl
{
  public Object a;
  private jm a;
  public kk a;
  public li a;
  public boolean a;
  public Object b;
  public boolean b;
  
  public jl(kk paramKk)
  {
    jdField_a_of_type_JavaLangObject = new Object();
    jdField_b_of_type_JavaLangObject = new Object();
    jdField_a_of_type_Li = null;
    jdField_a_of_type_Jm = null;
    jdField_a_of_type_Boolean = false;
    jdField_b_of_type_Boolean = false;
    jdField_a_of_type_Kk = paramKk;
  }
  
  public jl(kk paramKk, lc paramLc)
  {
    jdField_a_of_type_JavaLangObject = new Object();
    jdField_b_of_type_JavaLangObject = new Object();
    jdField_a_of_type_Li = null;
    jdField_a_of_type_Jm = null;
    jdField_a_of_type_Boolean = false;
    jdField_b_of_type_Boolean = false;
    jdField_a_of_type_Kk = paramKk;
    paramKk = a;
    paramLc.c();
  }
  
  public final li a(long paramLong)
    throws jm
  {
    for (;;)
    {
      Object localObject1;
      synchronized (jdField_a_of_type_JavaLangObject)
      {
        if (jdField_a_of_type_Kk.a())
        {
          kk localKk = jdField_a_of_type_Kk;
          Long localLong = new Long(paramLong);
          Boolean localBoolean1 = new Boolean(jdField_a_of_type_Boolean);
          Boolean localBoolean2 = new Boolean(jdField_b_of_type_Boolean);
          if (jdField_a_of_type_Jm != null) {
            break label258;
          }
          localObject1 = "false";
          li localLi = jdField_a_of_type_Li;
          jm localJm = jdField_a_of_type_Jm;
          localKk.a(400, new Object[] { this, localLong, localBoolean1, localBoolean2, localObject1, localLi }, localJm);
        }
        if (jdField_b_of_type_Boolean)
        {
          localObject1 = jdField_a_of_type_Li;
          return localObject1;
        }
        localObject1 = jdField_a_of_type_Jm;
        if (localObject1 == null) {
          if (paramLong != -1L) {
            break label214;
          }
        }
      }
      try
      {
        jdField_a_of_type_JavaLangObject.wait();
        while ((!jdField_b_of_type_Boolean) && (jdField_a_of_type_Jm != null))
        {
          localObject1 = jdField_a_of_type_Jm;
          jdField_a_of_type_Jm = null;
          jdField_a_of_type_Kk.a(401, null, jdField_a_of_type_Jm);
          throw ((Throwable)localObject1);
          localObject2 = finally;
          throw localObject2;
          label214:
          jdField_a_of_type_JavaLangObject.wait(paramLong);
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;) {}
        jdField_a_of_type_Kk.a(402, new Object[] { jdField_a_of_type_Li });
        return jdField_a_of_type_Li;
      }
      label258:
      String str = "true";
    }
  }
  
  public final void a()
    throws jm
  {
    synchronized (jdField_b_of_type_JavaLangObject)
    {
      synchronized (jdField_a_of_type_JavaLangObject)
      {
        if (jdField_a_of_type_Jm != null) {
          throw jdField_a_of_type_Jm;
        }
      }
    }
    boolean bool = jdField_a_of_type_Boolean;
    if (!bool) {}
    try
    {
      jdField_b_of_type_JavaLangObject.wait();
      if (!jdField_a_of_type_Boolean)
      {
        if (jdField_a_of_type_Jm == null) {
          throw at.a(6);
        }
        throw jdField_a_of_type_Jm;
      }
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  public final void a(long paramLong)
    throws jm
  {
    if ((a(paramLong) == null) && (!jdField_b_of_type_Boolean))
    {
      if (jdField_a_of_type_Kk.a()) {
        jdField_a_of_type_Kk.a(406, new Object[] { new Long(paramLong) });
      }
      throw new jm(32000);
    }
  }
  
  public final void a(jm arg1)
  {
    jdField_a_of_type_Kk.a(405, new Object[] { this }, ???);
    synchronized (jdField_a_of_type_JavaLangObject)
    {
      jdField_a_of_type_Jm = ???;
      jdField_a_of_type_JavaLangObject.notifyAll();
    }
    synchronized (jdField_b_of_type_JavaLangObject)
    {
      jdField_b_of_type_JavaLangObject.notifyAll();
      return;
      ??? = finally;
      throw ???;
    }
  }
  
  public final void a(li paramLi)
  {
    jdField_a_of_type_Kk.a(404, new Object[] { this, paramLi });
    synchronized (jdField_a_of_type_JavaLangObject)
    {
      jdField_a_of_type_Li = paramLi;
      jdField_b_of_type_Boolean = true;
      jdField_a_of_type_JavaLangObject.notifyAll();
      return;
    }
  }
}
