import java.io.IOException;
import java.io.InputStream;

public final class gh
  implements fr
{
  private ga a;
  
  gh(ga paramGa)
  {
    a = paramGa;
  }
  
  public final fv a()
    throws IOException
  {
    return new gf(jd.a(a()));
  }
  
  public final InputStream a()
  {
    return new go(a);
  }
  
  public final fv b()
  {
    try
    {
      fv localFv = a();
      return localFv;
    }
    catch (IOException localIOException)
    {
      throw new fu("IOException converting stream to byte array: " + localIOException.getMessage(), localIOException);
    }
  }
}
