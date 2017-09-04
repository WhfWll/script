import java.io.EOFException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public final class jt
{
  int jdField_a_of_type_Int = 0;
  long jdField_a_of_type_Long;
  Object jdField_a_of_type_JavaLangObject = new Object();
  Hashtable jdField_a_of_type_JavaUtilHashtable = null;
  Vector jdField_a_of_type_JavaUtilVector;
  jj jdField_a_of_type_Jj;
  ju jdField_a_of_type_Ju = null;
  jx jdField_a_of_type_Jx;
  kk jdField_a_of_type_Kk;
  private li jdField_a_of_type_Li;
  boolean jdField_a_of_type_Boolean;
  int jdField_b_of_type_Int = 0;
  private long jdField_b_of_type_Long = 0L;
  Object jdField_b_of_type_JavaLangObject = new Object();
  Hashtable jdField_b_of_type_JavaUtilHashtable = null;
  Vector jdField_b_of_type_JavaUtilVector;
  boolean jdField_b_of_type_Boolean = false;
  int jdField_c_of_type_Int = 0;
  private long jdField_c_of_type_Long = 0L;
  Object jdField_c_of_type_JavaLangObject = new Object();
  Hashtable jdField_c_of_type_JavaUtilHashtable = null;
  private boolean jdField_c_of_type_Boolean = false;
  private int jdField_d_of_type_Int = 0;
  private Hashtable jdField_d_of_type_JavaUtilHashtable;
  private boolean jdField_d_of_type_Boolean = false;
  private int jdField_e_of_type_Int = 10;
  private boolean jdField_e_of_type_Boolean = false;
  private boolean f = false;
  
  protected jt(kk paramKk, jj paramJj, jx paramJx, ju paramJu)
    throws jm
  {
    jdField_a_of_type_Kk = paramKk;
    jdField_d_of_type_JavaUtilHashtable = new Hashtable();
    jdField_a_of_type_JavaUtilVector = new Vector(jdField_e_of_type_Int);
    jdField_b_of_type_JavaUtilVector = new Vector();
    jdField_a_of_type_JavaUtilHashtable = new Hashtable();
    jdField_b_of_type_JavaUtilHashtable = new Hashtable();
    jdField_c_of_type_JavaUtilHashtable = new Hashtable();
    jdField_a_of_type_Li = new kw();
    jdField_b_of_type_Int = 0;
    jdField_a_of_type_Int = 0;
    jdField_a_of_type_Jj = paramJj;
    jdField_a_of_type_Ju = paramJu;
    jdField_a_of_type_Jx = paramJx;
    c();
  }
  
  private int a()
    throws jm
  {
    do
    {
      try
      {
        int k = jdField_d_of_type_Int;
        j = 0;
        jdField_d_of_type_Int += 1;
        if (jdField_d_of_type_Int > 65535) {
          jdField_d_of_type_Int = 1;
        }
        i = j;
        if (jdField_d_of_type_Int == k)
        {
          j += 1;
          i = j;
          if (j == 2) {
            throw at.a(32001);
          }
        }
      }
      finally {}
      int j = i;
    } while (jdField_d_of_type_JavaUtilHashtable.containsKey(new Integer(jdField_d_of_type_Int)));
    Integer localInteger = new Integer(jdField_d_of_type_Int);
    jdField_d_of_type_JavaUtilHashtable.put(localInteger, localInteger);
    int i = jdField_d_of_type_Int;
    return i;
  }
  
  static String a(li paramLi)
  {
    return "s-" + paramLi.c();
  }
  
  private static Vector a(Vector paramVector)
  {
    int i1 = 0;
    Vector localVector = new Vector();
    if (paramVector.size() == 0) {
      return localVector;
    }
    int i = 0;
    int j = 0;
    int k = 0;
    int m = 0;
    while (i < paramVector.size())
    {
      int i2 = ((li)paramVector.elementAt(i)).c();
      int n = k;
      if (i2 - m > k)
      {
        n = i2 - m;
        j = i;
      }
      i += 1;
      m = i2;
      k = n;
    }
    if (((li)paramVector.elementAt(0)).c() + (65535 - m) > k) {
      j = 0;
    }
    i = j;
    for (;;)
    {
      k = i1;
      if (i >= paramVector.size()) {
        break;
      }
      localVector.addElement(paramVector.elementAt(i));
      i += 1;
    }
    while (k < j)
    {
      localVector.addElement(paramVector.elementAt(k));
      k += 1;
    }
    return localVector;
  }
  
  private li a(String paramString, jo paramJo)
    throws jm
  {
    localObject = null;
    try
    {
      byte[] arrayOfByte2 = paramJo.a_();
      byte[] arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte2 == null) {
        arrayOfByte1 = new byte[0];
      }
      paramJo = li.a(new lj(paramJo.a(), paramJo.a(), arrayOfByte1, paramJo.b()));
    }
    catch (jm paramJo)
    {
      for (;;)
      {
        jdField_a_of_type_Kk.a(602, new Object[] { paramString }, paramJo);
        if (!(paramJo.getCause() instanceof EOFException)) {
          break;
        }
        paramJo = localObject;
        if (paramString != null)
        {
          jdField_a_of_type_Jj.a(paramString);
          paramJo = localObject;
        }
      }
      throw paramJo;
    }
    jdField_a_of_type_Kk.a(601, new Object[] { paramString, paramJo });
    return paramJo;
  }
  
  private void a(int paramInt)
  {
    try
    {
      jdField_d_of_type_JavaUtilHashtable.remove(new Integer(paramInt));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private static void a(Vector paramVector, li paramLi)
  {
    int j = paramLi.c();
    int i = 0;
    while (i < paramVector.size())
    {
      if (((li)paramVector.elementAt(i)).c() > j)
      {
        paramVector.insertElementAt(paramLi, i);
        return;
      }
      i += 1;
    }
    paramVector.addElement(paramLi);
  }
  
  private boolean a()
  {
    if (jdField_a_of_type_Kk.a()) {
      jdField_a_of_type_Kk.a(626, new Object[] { new Boolean(jdField_b_of_type_Boolean), new Integer(jdField_a_of_type_Int), new Integer(jdField_b_of_type_JavaUtilVector.size()), new Integer(jdField_b_of_type_Int) });
    }
    if ((jdField_b_of_type_Boolean) && (jdField_a_of_type_Int == 0) && (jdField_b_of_type_JavaUtilVector.size() == 0) && (jdField_b_of_type_Int == 0)) {
      synchronized (jdField_b_of_type_JavaLangObject)
      {
        jdField_b_of_type_JavaLangObject.notifyAll();
        return true;
      }
    }
    return false;
  }
  
  static String b(li paramLi)
  {
    return "r-" + paramLi.c();
  }
  
  private li b()
    throws jm
  {
    li localLi = null;
    if ((System.currentTimeMillis() - jdField_b_of_type_Long >= jdField_a_of_type_Long) || (System.currentTimeMillis() - jdField_c_of_type_Long >= jdField_a_of_type_Long))
    {
      if (f)
      {
        if (jdField_a_of_type_Kk.a()) {
          jdField_a_of_type_Kk.a(619, new Object[] { new Long(jdField_a_of_type_Long), new Long(jdField_b_of_type_Long), new Long(jdField_c_of_type_Long) });
        }
        throw at.a(32000);
      }
      if (jdField_a_of_type_Kk.a()) {
        jdField_a_of_type_Kk.a(620, new Object[] { new Long(jdField_a_of_type_Long), new Long(jdField_b_of_type_Long), new Long(jdField_c_of_type_Long) });
      }
      f = true;
      localLi = jdField_a_of_type_Li;
      jdField_a_of_type_Jx.d(localLi);
    }
    return localLi;
  }
  
  private void b()
    throws jm
  {
    jdField_a_of_type_Kk.a(603);
    jdField_a_of_type_Jj.jdField_a_of_type_JavaUtilHashtable.clear();
    jdField_d_of_type_JavaUtilHashtable.clear();
    jdField_a_of_type_JavaUtilVector.clear();
    jdField_b_of_type_JavaUtilVector.clear();
    jdField_a_of_type_JavaUtilHashtable.clear();
    jdField_b_of_type_JavaUtilHashtable.clear();
    jdField_c_of_type_JavaUtilHashtable.clear();
    jx localJx = jdField_a_of_type_Jx;
    jdField_a_of_type_Kk.a(305);
    jdField_a_of_type_JavaUtilHashtable.clear();
  }
  
  private static String c(li paramLi)
  {
    return "sc-" + paramLi.c();
  }
  
  private void c()
    throws jm
  {
    Enumeration localEnumeration = jdField_a_of_type_Jj.jdField_a_of_type_JavaUtilHashtable.keys();
    int i = jdField_d_of_type_Int;
    Object localObject1 = new Vector();
    jdField_a_of_type_Kk.a(600);
    while (localEnumeration.hasMoreElements())
    {
      Object localObject3 = (String)localEnumeration.nextElement();
      Object localObject4 = a((String)localObject3, jdField_a_of_type_Jj.a((String)localObject3));
      if (localObject4 != null) {
        if (((String)localObject3).startsWith("r-"))
        {
          jdField_a_of_type_Kk.a(604, new Object[] { localObject3, localObject4 });
          jdField_c_of_type_JavaUtilHashtable.put(new Integer(((li)localObject4).c()), localObject4);
        }
        else
        {
          Object localObject2;
          if (((String)localObject3).startsWith("s-"))
          {
            localObject2 = (lc)localObject4;
            i = Math.max(((lc)localObject2).c(), i);
            Object localObject5;
            if (jdField_a_of_type_Jj.a(c((li)localObject2)))
            {
              localObject5 = (lb)a((String)localObject3, jdField_a_of_type_Jj.a(c((li)localObject2)));
              if (localObject5 != null)
              {
                jdField_a_of_type_Kk.a(605, new Object[] { localObject3, localObject4 });
                jdField_a_of_type_JavaUtilHashtable.put(new Integer(((lb)localObject5).c()), localObject5);
                label251:
                localObject3 = jdField_a_of_type_Jx;
                localObject4 = new Integer(((lc)localObject2).c());
                if (!jdField_a_of_type_JavaUtilHashtable.containsKey(localObject4)) {
                  break label512;
                }
                localObject5 = (jl)jdField_a_of_type_JavaUtilHashtable.get(localObject4);
                if (jdField_a_of_type_Kk.a()) {
                  jdField_a_of_type_Kk.a(302, new Object[] { localObject2, localObject4, localObject5 });
                }
              }
            }
            for (;;)
            {
              jdField_d_of_type_JavaUtilHashtable.put(new Integer(((lc)localObject2).c()), new Integer(((lc)localObject2).c()));
              break;
              jdField_a_of_type_Kk.a(606, new Object[] { localObject3, localObject4 });
              break label251;
              if (a.jdField_a_of_type_Int == 2)
              {
                jdField_a_of_type_Kk.a(607, new Object[] { localObject3, localObject4 });
                jdField_a_of_type_JavaUtilHashtable.put(new Integer(((lc)localObject2).c()), localObject2);
                break label251;
              }
              jdField_a_of_type_Kk.a(608, new Object[] { localObject3, localObject4 });
              jdField_b_of_type_JavaUtilHashtable.put(new Integer(((lc)localObject2).c()), localObject2);
              break label251;
              label512:
              localObject5 = new jl(jdField_a_of_type_Kk, (lc)localObject2);
              jdField_a_of_type_JavaUtilHashtable.put(localObject4, localObject5);
              if (jdField_a_of_type_Kk.a()) {
                jdField_a_of_type_Kk.a(303, new Object[] { localObject2, localObject4, localObject5 });
              }
            }
          }
          if (((String)localObject3).startsWith("sc-"))
          {
            localObject2 = (lb)localObject4;
            if (!jdField_a_of_type_Jj.a(a((li)localObject2))) {
              ((Vector)localObject1).addElement(localObject3);
            }
          }
        }
      }
    }
    localEnumeration = ((Vector)localObject1).elements();
    while (localEnumeration.hasMoreElements())
    {
      localObject1 = (String)localEnumeration.nextElement();
      jdField_a_of_type_Kk.a(609, new Object[] { localObject1 });
      jdField_a_of_type_Jj.a((String)localObject1);
    }
    jdField_d_of_type_Int = i;
  }
  
  private void d()
  {
    jdField_a_of_type_JavaUtilVector = new Vector(jdField_e_of_type_Int);
    jdField_b_of_type_JavaUtilVector = new Vector();
    Enumeration localEnumeration = jdField_a_of_type_JavaUtilHashtable.keys();
    Object localObject1;
    Object localObject2;
    while (localEnumeration.hasMoreElements())
    {
      localObject1 = localEnumeration.nextElement();
      localObject2 = jdField_a_of_type_JavaUtilHashtable.get(localObject1);
      if ((localObject2 instanceof lc))
      {
        jdField_a_of_type_Kk.a(610, new Object[] { localObject1 });
        a(jdField_a_of_type_JavaUtilVector, (lc)localObject2);
      }
      else if ((localObject2 instanceof lb))
      {
        jdField_a_of_type_Kk.a(611, new Object[] { localObject1 });
        a(jdField_b_of_type_JavaUtilVector, (lb)localObject2);
      }
    }
    localEnumeration = jdField_b_of_type_JavaUtilHashtable.keys();
    while (localEnumeration.hasMoreElements())
    {
      localObject1 = localEnumeration.nextElement();
      localObject2 = (lc)jdField_b_of_type_JavaUtilHashtable.get(localObject1);
      jdField_a_of_type_Kk.a(612, new Object[] { localObject1 });
      a(jdField_a_of_type_JavaUtilVector, (li)localObject2);
    }
    jdField_b_of_type_JavaUtilVector = a(jdField_b_of_type_JavaUtilVector);
    jdField_a_of_type_JavaUtilVector = a(jdField_a_of_type_JavaUtilVector);
  }
  
  private void e()
  {
    synchronized (jdField_a_of_type_JavaLangObject)
    {
      jdField_a_of_type_Int -= 1;
      if (jdField_a_of_type_Kk.a()) {
        jdField_a_of_type_Kk.a(646, new Object[] { new Integer(jdField_a_of_type_Int) });
      }
      if (!a()) {
        jdField_a_of_type_JavaLangObject.notifyAll();
      }
      return;
    }
  }
  
  public final jl a(li paramLi)
    throws jm
  {
    if ((paramLi instanceof kr))
    {
      jdField_d_of_type_Boolean = false;
      jdField_e_of_type_Boolean = false;
    }
    if ((paramLi.a()) && (paramLi.c() == 0)) {
      paramLi.a(a());
    }
    if ((paramLi instanceof lc)) {}
    synchronized (jdField_a_of_type_JavaLangObject)
    {
      if (jdField_b_of_type_Boolean)
      {
        if (jdField_a_of_type_Kk.a()) {
          jdField_a_of_type_Kk.a(613, new Object[] { paramLi });
        }
        throw at.a(32102);
      }
    }
  }
  
  protected final li a()
    throws jm
  {
    for (;;)
    {
      li localLi;
      synchronized (jdField_a_of_type_JavaLangObject)
      {
        if ((!jdField_d_of_type_Boolean) || (!jdField_e_of_type_Boolean) || (jdField_c_of_type_Boolean)) {
          break label451;
        }
        jdField_a_of_type_Kk.a(648);
        return null;
        if (!jdField_b_of_type_JavaUtilVector.isEmpty())
        {
          localLi = (li)jdField_b_of_type_JavaUtilVector.elementAt(0);
          jdField_b_of_type_JavaUtilVector.removeElementAt(0);
          a();
          if (localLi != null) {
            break label362;
          }
          if (jdField_a_of_type_JavaUtilVector.isEmpty())
          {
            boolean bool = jdField_b_of_type_JavaUtilVector.isEmpty();
            if (!bool) {}
          }
        }
      }
      try
      {
        jdField_a_of_type_Kk.a(644);
        jdField_a_of_type_JavaLangObject.wait(jdField_a_of_type_Long);
        if (((jdField_b_of_type_JavaUtilVector.isEmpty()) || (!((li)jdField_b_of_type_JavaUtilVector.elementAt(0) instanceof kr))) && (!jdField_c_of_type_Boolean))
        {
          jdField_a_of_type_Kk.a(621);
          return null;
        }
        if ((!jdField_a_of_type_JavaUtilVector.isEmpty()) || (!jdField_b_of_type_JavaUtilVector.isEmpty())) {
          continue;
        }
        localLi = b();
        continue;
        if (jdField_a_of_type_JavaUtilVector.isEmpty()) {
          continue;
        }
        if (jdField_a_of_type_Int == jdField_e_of_type_Int) {
          jdField_a_of_type_Kk.a(622);
        }
        try
        {
          jdField_a_of_type_JavaLangObject.wait(jdField_a_of_type_Long);
          if (!jdField_c_of_type_Boolean)
          {
            jdField_a_of_type_Kk.a(647);
            return null;
          }
          if (jdField_a_of_type_Int >= jdField_e_of_type_Int) {
            continue;
          }
          localLi = (li)jdField_a_of_type_JavaUtilVector.elementAt(0);
          jdField_a_of_type_JavaUtilVector.removeElementAt(0);
          if (localLi == null)
          {
            localLi = b();
            continue;
          }
          jdField_a_of_type_Int += 1;
          if (jdField_a_of_type_Kk.a())
          {
            jdField_a_of_type_Kk.a(623, new Object[] { new Integer(jdField_a_of_type_Int) });
            continue;
            label362:
            if (jdField_a_of_type_Kk.a())
            {
              if (localLi != null)
              {
                i = localLi.c();
                jdField_a_of_type_Kk.a(624, new Object[] { localLi, new Integer(i) });
              }
            }
            else
            {
              if ((localLi instanceof kr)) {
                jdField_d_of_type_Boolean = true;
              }
              return localLi;
              localObject1 = finally;
              throw localObject1;
            }
          }
        }
        catch (InterruptedException localInterruptedException1)
        {
          for (;;) {}
        }
      }
      catch (InterruptedException localInterruptedException2)
      {
        for (;;)
        {
          continue;
          int i = 0;
        }
      }
      continue;
      label451:
      Object localObject2 = null;
    }
  }
  
  protected final void a()
  {
    synchronized (jdField_c_of_type_JavaLangObject)
    {
      jdField_c_of_type_Int -= 1;
      if (jdField_a_of_type_Kk.a()) {
        jdField_a_of_type_Kk.a(643, new Object[] { new Integer(jdField_c_of_type_Int) });
      }
      if (jdField_c_of_type_Int == 0) {
        jdField_c_of_type_JavaLangObject.notifyAll();
      }
      return;
    }
  }
  
  final void a(Vector paramVector)
  {
    jdField_a_of_type_Kk.a(636);
    Enumeration localEnumeration = paramVector.elements();
    jm localJm = at.a(32102);
    while (localEnumeration.hasMoreElements())
    {
      li localLi = (li)localEnumeration.nextElement();
      jl localJl = jdField_a_of_type_Jx.a(localLi);
      Integer localInteger = new Integer(localLi.c());
      if (jdField_a_of_type_JavaUtilHashtable.containsKey(localInteger)) {
        jdField_a_of_type_JavaUtilHashtable.remove(localInteger);
      }
      if (localJl != null)
      {
        localJl.a(localJm);
        jdField_a_of_type_Jx.c(localLi);
      }
      paramVector.removeElement(localLi);
    }
  }
  
  public final void a(jm paramJm)
  {
    jdField_a_of_type_Kk.a(632, null, paramJm);
    synchronized (jdField_a_of_type_JavaLangObject)
    {
      jdField_a_of_type_JavaLangObject.notifyAll();
      Object localObject2 = jdField_a_of_type_Jx;
      jdField_a_of_type_Boolean = true;
      jdField_a_of_type_Jm = paramJm;
      ??? = jdField_a_of_type_JavaUtilHashtable.elements();
      jdField_a_of_type_Kk.a(304, null, paramJm);
      for (;;)
      {
        if (((Enumeration)???).hasMoreElements())
        {
          localObject2 = ((Enumeration)???).nextElement();
          if (localObject2 != null) {
            try
            {
              ((jl)localObject2).a(paramJm);
            }
            finally
            {
              paramJm = finally;
              throw paramJm;
            }
          }
        }
      }
    }
  }
  
  protected final void a(li paramLi)
  {
    jdField_b_of_type_Long = System.currentTimeMillis();
    if (jdField_a_of_type_Kk.a()) {
      jdField_a_of_type_Kk.a(625, new Object[] { paramLi });
    }
    jl localJl = jdField_a_of_type_Jx.a(paramLi);
    jdField_a_of_type_Kk.a(403, new Object[] { localJl });
    synchronized (jdField_a_of_type_JavaLangObject)
    {
      jdField_a_of_type_Li = null;
      jdField_b_of_type_Boolean = false;
    }
    synchronized (jdField_b_of_type_JavaLangObject)
    {
      jdField_a_of_type_Boolean = true;
      jdField_b_of_type_JavaLangObject.notifyAll();
      if (((paramLi instanceof lc)) && (a.jdField_a_of_type_Int == 0))
      {
        localJl.a(null);
        jdField_a_of_type_Jx.c(paramLi);
        jdField_a_of_type_Ju.a(localJl);
        e();
        a(paramLi.c());
      }
      if ((paramLi instanceof ks)) {
        jdField_a_of_type_Jx.c(paramLi);
      }
      return;
      paramLi = finally;
      throw paramLi;
    }
  }
  
  public final void b(jm arg1)
  {
    jdField_a_of_type_Kk.a(633, null, ???);
    jdField_c_of_type_Boolean = false;
    synchronized (jdField_a_of_type_JavaLangObject)
    {
      jdField_a_of_type_JavaLangObject.notifyAll();
    }
    try
    {
      if (jdField_a_of_type_Boolean) {
        b();
      }
      jdField_a_of_type_JavaUtilVector.clear();
      jdField_b_of_type_JavaUtilVector.clear();
      f = false;
      synchronized (jdField_c_of_type_JavaLangObject)
      {
        if (jdField_a_of_type_Kk.a()) {
          jdField_a_of_type_Kk.a(634, new Object[] { new Integer(jdField_c_of_type_Int) });
        }
        for (;;)
        {
          int i = jdField_c_of_type_Int;
          if (i <= 0) {
            break;
          }
          try
          {
            jdField_c_of_type_JavaLangObject.wait();
          }
          catch (InterruptedException localInterruptedException) {}
        }
        localObject1 = finally;
        throw localObject1;
        jdField_a_of_type_Kk.a(635);
        jdField_a_of_type_Jj.jdField_a_of_type_JavaUtilHashtable.clear();
        return;
      }
      return;
    }
    catch (jm ???) {}
  }
  
  protected final void b(li paramLi)
    throws jm
  {
    jdField_c_of_type_Long = System.currentTimeMillis();
    if (jdField_a_of_type_Kk.a()) {
      jdField_a_of_type_Kk.a(627, new Object[] { paramLi, new Integer(paramLi.c()) });
    }
    Object localObject1;
    jl localJl1;
    if ((paramLi instanceof kp))
    {
      localObject1 = (kp)paramLi;
      localJl1 = jdField_a_of_type_Jx.a(paramLi);
      if (((localObject1 instanceof la)) && (jdField_a_of_type_JavaUtilHashtable.containsKey(new Integer(((kp)localObject1).c()))))
      {
        a(new lb((la)localObject1));
        paramLi = (la)localObject1;
        if ((a != null) && (b != null)) {
          jdField_a_of_type_Jj.a("mid-" + a, new kb(b));
        }
      }
    }
    label480:
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            if ((localObject1 instanceof ky))
            {
              if (jdField_a_of_type_Kk.a()) {
                jdField_a_of_type_Kk.a(628, new Object[] { new Integer(((kp)localObject1).c()) });
              }
              jdField_a_of_type_Jj.a(a(paramLi));
              jdField_b_of_type_JavaUtilHashtable.remove(new Integer(((kp)localObject1).c()));
              a(paramLi.c());
              if (((localObject1 instanceof ky)) || ((localObject1 instanceof la)) || ((localObject1 instanceof kz))) {
                e();
              }
              if (!(localObject1 instanceof kx)) {
                break label480;
              }
              jdField_a_of_type_Kk.a(629);
              f = false;
            }
            while (!(paramLi instanceof kq))
            {
              ??? = jdField_a_of_type_Jx;
              paramLi = (kp)paramLi;
              jl localJl2 = ((jx)???).b(paramLi);
              ((jx)???).c(paramLi);
              if (localJl2 != null) {
                localJl2.a(paramLi);
              }
              if (((localObject1 instanceof ky)) || ((localObject1 instanceof kz))) {
                jdField_a_of_type_Ju.a(localJl1);
              }
              a();
              return;
              if (!(localObject1 instanceof kz)) {
                break;
              }
              jdField_a_of_type_JavaUtilHashtable.remove(new Integer(((kp)localObject1).c()));
              jdField_a_of_type_Jj.a(a(paramLi));
              jdField_a_of_type_Jj.a(c(paramLi));
              jdField_b_of_type_Int -= 1;
              if (!jdField_a_of_type_Kk.a()) {
                break;
              }
              jdField_a_of_type_Kk.a(645, new Object[] { new Integer(((kp)localObject1).c()), new Integer(jdField_b_of_type_Int) });
              break;
            }
            if (jdField_a_of_type_Int == 0)
            {
              if (jdField_a_of_type_Boolean) {
                b();
              }
              jdField_b_of_type_Int = 0;
              jdField_a_of_type_Int = 0;
              d();
              jdField_a_of_type_Kk.a(631);
              jdField_c_of_type_Boolean = true;
            }
            for (;;)
            {
              synchronized (jdField_a_of_type_JavaLangObject)
              {
                jdField_a_of_type_JavaLangObject.notifyAll();
              }
              jdField_e_of_type_Boolean = true;
            }
          } while (jdField_b_of_type_Boolean);
          if (!(paramLi instanceof lc)) {
            break;
          }
          localObject1 = (lc)paramLi;
          switch (a.jdField_a_of_type_Int)
          {
          default: 
            return;
          }
        } while (jdField_a_of_type_Ju == null);
        jdField_a_of_type_Ju.a((lc)localObject1);
        return;
        if (jdField_a_of_type_Kk.a()) {
          jdField_a_of_type_Kk.a(630, new Object[] { new Integer(((lc)localObject1).c()) });
        }
        jdField_a_of_type_Jj.a(b(paramLi), (lc)paramLi);
        jdField_c_of_type_JavaUtilHashtable.put(new Integer(((lc)localObject1).c()), localObject1);
        a(new la((lc)localObject1));
        return;
      } while (!(paramLi instanceof lb));
      localObject1 = (lc)jdField_c_of_type_JavaUtilHashtable.get(new Integer(paramLi.c()));
      if (localObject1 == null) {
        break;
      }
    } while (jdField_a_of_type_Ju == null);
    jdField_a_of_type_Ju.a((lc)localObject1);
    return;
    a(new kz(paramLi.c()));
  }
}
