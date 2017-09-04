package a.a.a.a.a;

public class e
{
  public String a;
  public String b;
  public String c;
  public String d;
  public String e;
  
  public e(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramString5;
  }
  
  protected boolean a()
  {
    String[] arrayOfString = new String[5];
    arrayOfString[0] = a;
    arrayOfString[1] = b;
    arrayOfString[2] = c;
    arrayOfString[3] = d;
    arrayOfString[4] = e;
    int i = 0;
    while (i < arrayOfString.length)
    {
      if ((arrayOfString[i] == null) || (arrayOfString[i].length() == 0)) {
        return false;
      }
      i += 1;
    }
    return true;
  }
}
