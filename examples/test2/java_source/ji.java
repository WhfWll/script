import java.util.Hashtable;
import javax.net.ssl.SSLSocketFactory;

public final class ji
{
  private int jdField_a_of_type_Int;
  public dz a;
  public ea a;
  public String a;
  private jy jdField_a_of_type_Jy = null;
  public boolean a;
  private int jdField_b_of_type_Int = 900;
  public String b;
  private boolean jdField_b_of_type_Boolean;
  private String jdField_c_of_type_JavaLangString;
  private boolean jdField_c_of_type_Boolean = false;
  private String jdField_d_of_type_JavaLangString;
  private boolean jdField_d_of_type_Boolean = false;
  private String jdField_e_of_type_JavaLangString;
  private boolean jdField_e_of_type_Boolean = false;
  private String f;
  private String g;
  
  public ji(String paramString1, int paramInt1, String paramString2, String paramString3, dz paramDz, int paramInt2)
  {
    this(paramString1, paramInt1, false, null, null, null, paramString2, paramString3, paramDz, "JKS", paramInt2);
  }
  
  public ji(String paramString1, int paramInt, String paramString2, String paramString3, dz paramDz, String paramString4)
  {
    this(paramString1, paramInt, false, null, null, null, paramString2, paramString3, paramDz, "JKS", 60, paramString4);
  }
  
  public ji(String paramString1, int paramInt, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, dz paramDz, String paramString7, String paramString8)
  {
    this(paramString1, paramInt, true, paramString2, paramString3, paramString4, paramString5, paramString6, paramDz, paramString7, 60, paramString8);
  }
  
  public ji(String paramString1, int paramInt1, boolean paramBoolean, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, dz paramDz, String paramString7, int paramInt2)
  {
    this(paramString1, paramInt1, paramBoolean, paramString2, paramString3, paramString4, paramString5, paramString6, paramDz, paramString7, paramInt2, null);
  }
  
  private ji(String paramString1, int paramInt1, boolean paramBoolean, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, dz paramDz, String paramString7, int paramInt2, String paramString8)
  {
    jdField_a_of_type_Dz = null;
    jdField_a_of_type_Ea = ea.jdField_a_of_type_Ea;
    jdField_a_of_type_Boolean = true;
    jdField_d_of_type_JavaLangString = paramString1;
    jdField_a_of_type_Int = paramInt1;
    jdField_b_of_type_Boolean = paramBoolean;
    jdField_a_of_type_JavaLangString = paramString5;
    jdField_c_of_type_JavaLangString = paramString6;
    jdField_a_of_type_Dz = paramDz;
    jdField_e_of_type_JavaLangString = paramString2;
    f = paramString3;
    g = paramString4;
    jdField_b_of_type_JavaLangString = paramString7;
    jdField_b_of_type_Int = paramInt2;
    paramString2 = new StringBuilder();
    if (jdField_b_of_type_Boolean) {
      paramString1 = "ssl://";
    }
    for (;;)
    {
      paramString1 = paramString1 + jdField_d_of_type_JavaLangString + ":" + jdField_a_of_type_Int;
      try
      {
        jdField_a_of_type_Jy = new jy(paramString1, jdField_a_of_type_JavaLangString);
      }
      catch (jm paramString1)
      {
        try
        {
          for (;;)
          {
            jdField_a_of_type_Jy.jdField_a_of_type_Js.jdField_a_of_type_Ju.a(this);
            a(paramString7, paramString8);
            return;
            paramString1 = "tcp://";
            break;
            paramString1 = paramString1;
            if (jdField_a_of_type_Dz != null) {
              jdField_a_of_type_Dz.a(paramString1);
            }
          }
        }
        catch (jm paramString1)
        {
          for (;;)
          {
            jdField_a_of_type_Dz.a(paramString1);
          }
        }
      }
    }
  }
  
  private SSLSocketFactory a(String paramString)
  {
    try
    {
      paramString = at.a(jdField_e_of_type_JavaLangString, f, g, "", paramString);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public final void a()
  {
    if (jdField_a_of_type_Ea.equals(ea.c)) {
      jdField_d_of_type_Boolean = true;
    }
    label154:
    do
    {
      do
      {
        for (;;)
        {
          return;
          jdField_a_of_type_Ea = ea.b;
          try
          {
            localJy = jdField_a_of_type_Jy;
            jdField_a_of_type_Kk.a(104, new Object[] { new Long(30000L) });
            localKs = new ks();
          }
          catch (Exception localException)
          {
            try
            {
              jy localJy;
              ks localKs;
              jdField_a_of_type_Js.a(localKs);
              jdField_a_of_type_Ea = ea.jdField_a_of_type_Ea;
              if (jdField_a_of_type_Dz == null) {
                continue;
              }
              jdField_a_of_type_Dz.b(null);
              jdField_d_of_type_Boolean = false;
              if (!jdField_e_of_type_Boolean) {
                break label154;
              }
              b();
              return;
            }
            catch (jm localJm)
            {
              jdField_a_of_type_Kk.a(105, null, localJm);
              throw localJm;
            }
            localException = localException;
            jdField_a_of_type_Ea = ea.e;
          }
        }
      } while (jdField_a_of_type_Dz == null);
      jdField_a_of_type_Dz.d(localException);
      return;
    } while (!jdField_c_of_type_Boolean);
    a(jdField_b_of_type_JavaLangString, null);
  }
  
  public final void a(String paramString)
  {
    a("clearSession", paramString, "", true, 0);
  }
  
  public final void a(String paramString1, String paramString2)
  {
    if (jdField_a_of_type_Ea.equals(ea.b)) {
      jdField_c_of_type_Boolean = true;
    }
    label101:
    label106:
    do
    {
      for (;;)
      {
        return;
        jdField_a_of_type_Ea = ea.c;
        jk localJk;
        try
        {
          localJk = new jk();
          jdField_a_of_type_Boolean = false;
          jdField_a_of_type_Int = jdField_b_of_type_Int;
          if (paramString2 == null) {
            break label106;
          }
          if ((paramString2 == null) || (!paramString2.trim().equals(""))) {
            break label101;
          }
          throw new IllegalArgumentException();
        }
        catch (Exception paramString1)
        {
          jdField_a_of_type_Ea = ea.e;
        }
        if (jdField_a_of_type_Dz != null)
        {
          jdField_a_of_type_Dz.c(paramString1);
          return;
          jdField_a_of_type_JavaLangString = paramString2;
          if (jdField_b_of_type_Boolean) {
            jdField_a_of_type_JavaxNetSocketFactory = a(paramString1);
          }
          paramString1 = jdField_a_of_type_Jy;
          if (jdField_a_of_type_Js.jdField_a_of_type_Boolean) {
            throw at.a(32100);
          }
          if (jdField_a_of_type_Kk.a()) {
            jdField_a_of_type_Kk.a(103, new Object[] { new Boolean(jdField_a_of_type_Boolean), new Integer(jdField_b_of_type_Int), new Integer(jdField_a_of_type_Int), jdField_a_of_type_JavaLangString, "[null]", "[null]" });
          }
          jdField_a_of_type_Js.jdField_a_of_type_Kc = paramString1.a(jdField_b_of_type_JavaLangString, localJk);
          paramString2 = jdField_a_of_type_Jj;
          String str = jdField_a_of_type_JavaLangString;
          str = jdField_b_of_type_JavaLangString;
          paramString2.a();
          if (jdField_a_of_type_Boolean) {
            jdField_a_of_type_Jj.a.clear();
          }
          jdField_a_of_type_Js.a(new kr(jdField_a_of_type_JavaLangString, jdField_a_of_type_Boolean, jdField_a_of_type_Int, jdField_a_of_type_JavaLangString), jdField_b_of_type_Int, jdField_a_of_type_Int, jdField_a_of_type_Boolean);
          paramString1 = jdField_c_of_type_JavaLangString;
          try
          {
            jdField_a_of_type_Jy.a(new String[] { paramString1 }, new int[] { 2 });
            jdField_a_of_type_Ea = ea.d;
            if (jdField_a_of_type_Dz != null) {
              jdField_a_of_type_Dz.b();
            }
            if (jdField_a_of_type_Dz != null)
            {
              jdField_a_of_type_Dz.a();
              jdField_c_of_type_Boolean = false;
              if (jdField_e_of_type_Boolean)
              {
                b();
                return;
              }
            }
          }
          catch (Exception paramString1)
          {
            for (;;)
            {
              jdField_a_of_type_Ea = ea.jdField_a_of_type_Ea;
              if (jdField_a_of_type_Dz != null) {
                jdField_a_of_type_Dz.e(paramString1);
              }
            }
          }
        }
      }
    } while (!jdField_d_of_type_Boolean);
    a();
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, boolean paramBoolean, int paramInt)
  {
    try
    {
      paramString2 = jdField_a_of_type_Jy.a(paramString2);
      paramString3 = new jn(paramString3.getBytes());
      paramString3.a(paramInt);
      paramString3.a(paramBoolean);
      jdField_a_of_type_Js.a(new lc(jdField_a_of_type_JavaLangString, paramString3)).a(-1L);
      if (jdField_a_of_type_Dz != null) {
        if (jdField_a_of_type_Jy.jdField_a_of_type_Jj != null)
        {
          paramString2 = jdField_a_of_type_Jy.jdField_a_of_type_Jj.a("mid-" + paramString1);
          if ((paramString2 instanceof kb)) {
            jdField_a_of_type_Dz.a(paramString1, jdField_a_of_type_JavaLangString);
          }
          for (;;)
          {
            jdField_a_of_type_Jy.jdField_a_of_type_Jj.a("mid-" + paramString1);
            return;
            jdField_a_of_type_Dz.a(paramString1, null);
          }
        }
      }
      return;
    }
    catch (Exception paramString2)
    {
      if (jdField_a_of_type_Dz != null)
      {
        jdField_a_of_type_Dz.a(paramString1, paramString2);
        return;
        jdField_a_of_type_Dz.a(paramString1, null);
      }
    }
  }
  
  public final void b()
  {
    if ((jdField_a_of_type_Ea.equals(ea.c)) || (jdField_a_of_type_Ea.equals(ea.b)))
    {
      jdField_e_of_type_Boolean = true;
      return;
    }
    jdField_a_of_type_Jy = null;
    jdField_a_of_type_Ea = ea.jdField_a_of_type_Ea;
  }
}
