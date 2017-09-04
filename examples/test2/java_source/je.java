public final class je
{
  public String a;
  public String b;
  
  public je(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
  }
  
  private static int a(String paramString)
  {
    if (paramString == null) {
      return 1;
    }
    return paramString.hashCode();
  }
  
  private static boolean a(String paramString1, String paramString2)
  {
    if (paramString1 == paramString2) {
      return true;
    }
    if ((paramString1 == null) || (paramString2 == null)) {
      return false;
    }
    return paramString1.equals(paramString2);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof je)) {}
    do
    {
      return false;
      paramObject = (je)paramObject;
    } while ((paramObject != this) && ((!a(a, a)) || (!a(b, b))));
    return true;
  }
  
  public final int hashCode()
  {
    return a(a) + a(b) * 31;
  }
}
