import java.io.IOException;

public final class gl
  implements fz
{
  private ga a;
  
  gl(ga paramGa)
  {
    a = paramGa;
  }
  
  public final fv a()
    throws IOException
  {
    return new gk(a.a());
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
      throw new fu(localIOException.getMessage(), localIOException);
    }
  }
}
