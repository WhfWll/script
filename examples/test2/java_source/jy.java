import java.util.Hashtable;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;

public final class jy
{
  private int jdField_a_of_type_Int;
  public String a;
  private Hashtable jdField_a_of_type_JavaUtilHashtable;
  public jj a;
  public js a;
  public kk a;
  public String b;
  
  public jy(String paramString1, String paramString2)
    throws jm
  {
    if ((paramString2 == null) || (paramString2.length() == 0) || (paramString2.length() > 23)) {
      throw new IllegalArgumentException();
    }
    jdField_a_of_type_Kk = kk.a(paramString2);
    b = paramString1;
    int i;
    if (paramString1.startsWith("tcp://")) {
      i = 0;
    }
    for (;;)
    {
      jdField_a_of_type_Int = i;
      jdField_a_of_type_JavaLangString = paramString2;
      jdField_a_of_type_Jj = null;
      if (jdField_a_of_type_Jj == null) {
        jdField_a_of_type_Jj = new jj();
      }
      jdField_a_of_type_Kk.a(101, new Object[] { paramString2, paramString1, null });
      jdField_a_of_type_Jj.a();
      jdField_a_of_type_Js = new js(this, jdField_a_of_type_Jj, jdField_a_of_type_Kk);
      jdField_a_of_type_Jj.jdField_a_of_type_JavaUtilHashtable.clear();
      jdField_a_of_type_JavaUtilHashtable = new Hashtable();
      return;
      if (paramString1.startsWith("ssl://"))
      {
        i = 1;
      }
      else
      {
        if (!paramString1.startsWith("local://")) {
          break;
        }
        i = 2;
      }
    }
    throw new IllegalArgumentException();
  }
  
  private static int a(String paramString, int paramInt)
  {
    int i = paramString.lastIndexOf(':');
    if (i == -1) {
      return paramInt;
    }
    return Integer.valueOf(paramString.substring(i + 1)).intValue();
  }
  
  private static String a(String paramString)
  {
    int k = paramString.lastIndexOf('/');
    int j = paramString.lastIndexOf(':');
    int i = j;
    if (j == -1) {
      i = paramString.length();
    }
    return paramString.substring(k + 1, i);
  }
  
  public final jr a(String paramString)
  {
    if ((paramString.indexOf('#') == -1) && (paramString.indexOf('+') == -1))
    {
      jr localJr2 = (jr)jdField_a_of_type_JavaUtilHashtable.get(paramString);
      jr localJr1 = localJr2;
      if (localJr2 == null)
      {
        localJr1 = new jr(paramString, jdField_a_of_type_Js);
        jdField_a_of_type_JavaUtilHashtable.put(paramString, localJr1);
      }
      return localJr1;
    }
    throw new IllegalArgumentException();
  }
  
  public final kc a(String paramString, jk paramJk)
    throws jm
  {
    String str = null;
    Object localObject = a;
    int i;
    switch (jdField_a_of_type_Int)
    {
    default: 
      paramJk = str;
      return paramJk;
    case 0: 
      paramString = paramString.substring(6);
      str = a(paramString);
      i = a(paramString, 1883);
      if (localObject == null)
      {
        paramString = SocketFactory.getDefault();
        a = paramString;
      }
      do
      {
        return new kf(jdField_a_of_type_Kk, paramString, str, i);
        paramString = (String)localObject;
      } while (!(localObject instanceof SSLSocketFactory));
      throw at.a(32105);
    case 1: 
      paramString = paramString.substring(6);
      str = a(paramString);
      i = a(paramString, 8883);
      if (localObject != null) {
        break;
      }
    }
    for (;;)
    {
      try
      {
        paramString = new ki();
        localObject = ki.a();
        localObject = new ke(jdField_a_of_type_Kk, (SSLSocketFactory)localObject, str, i);
        jdField_a_of_type_Int = b;
        paramJk = (jk)localObject;
        if (paramString == null) {
          break;
        }
        paramString = ki.a();
        paramJk = (jk)localObject;
        if (paramString == null) {
          break;
        }
        ((ke)localObject).a(paramString);
        return localObject;
      }
      catch (kg paramString)
      {
        throw at.a(paramString.getCause());
      }
      if (!(localObject instanceof SSLSocketFactory))
      {
        throw at.a(32105);
        return new jz(paramString.substring(8));
      }
      paramString = null;
    }
  }
  
  public final void a(String[] paramArrayOfString, int[] paramArrayOfInt)
    throws jm, jq
  {
    if (paramArrayOfString.length != paramArrayOfInt.length) {
      throw new IllegalArgumentException();
    }
    if (jdField_a_of_type_Kk.a())
    {
      String str1 = "";
      int i = 0;
      while (i < paramArrayOfString.length)
      {
        String str2 = str1;
        if (i > 0) {
          str2 = str1 + ", ";
        }
        str1 = str2 + paramArrayOfString[i] + ":" + paramArrayOfInt[i];
        i += 1;
      }
      jdField_a_of_type_Kk.a(106, new Object[] { str1 });
    }
    paramArrayOfString = new lf(paramArrayOfString, paramArrayOfInt);
    paramArrayOfInt = jdField_a_of_type_Js;
    paramArrayOfInt.a(paramArrayOfString).a(jdField_a_of_type_Int * 1000);
  }
}
