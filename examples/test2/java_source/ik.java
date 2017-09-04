import java.security.BasicPermission;
import java.security.Permission;
import java.util.StringTokenizer;

public final class ik
  extends BasicPermission
{
  private final int jdField_a_of_type_Int;
  private final String jdField_a_of_type_JavaLangString;
  
  public ik(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
    jdField_a_of_type_JavaLangString = paramString2;
    jdField_a_of_type_Int = a(paramString2);
  }
  
  private static int a(String paramString)
  {
    paramString = new StringTokenizer(at.a(paramString), " ,");
    int i = 0;
    while (paramString.hasMoreTokens())
    {
      String str = paramString.nextToken();
      if (str.equals("threadlocalecimplicitlyca")) {
        i |= 0x1;
      } else if (str.equals("ecimplicitlyca")) {
        i |= 0x2;
      } else if (str.equals("threadlocaldhdefaultparams")) {
        i |= 0x4;
      } else if (str.equals("dhdefaultparams")) {
        i |= 0x8;
      } else if (str.equals("all")) {
        i |= 0xF;
      }
    }
    if (i == 0) {
      throw new IllegalArgumentException("unknown permissions passed to mask");
    }
    return i;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof ik)) {
        break;
      }
      paramObject = (ik)paramObject;
    } while ((jdField_a_of_type_Int == jdField_a_of_type_Int) && (getName().equals(paramObject.getName())));
    return false;
    return false;
  }
  
  public final String getActions()
  {
    return jdField_a_of_type_JavaLangString;
  }
  
  public final int hashCode()
  {
    return getName().hashCode() + jdField_a_of_type_Int;
  }
  
  public final boolean implies(Permission paramPermission)
  {
    if (!(paramPermission instanceof ik)) {}
    do
    {
      do
      {
        return false;
      } while (!getName().equals(paramPermission.getName()));
      paramPermission = (ik)paramPermission;
    } while ((jdField_a_of_type_Int & jdField_a_of_type_Int) != jdField_a_of_type_Int);
    return true;
  }
}
