package ss;

import java.io.IOException;

public enum ae
{
  private final String e;
  
  private ae(String paramString)
  {
    e = paramString;
  }
  
  public static ae a(String paramString)
    throws IOException
  {
    if (paramString.equals(ae)) {
      return a;
    }
    if (paramString.equals(be)) {
      return b;
    }
    if (paramString.equals(de)) {
      return d;
    }
    if (paramString.equals(ce)) {
      return c;
    }
    throw new IOException("Unexpected protocol: " + paramString);
  }
  
  public String toString()
  {
    return e;
  }
}
