import java.io.IOException;

public final class hl
  implements fz
{
  private ga a;
  
  hl(ga paramGa)
  {
    a = paramGa;
  }
  
  public final fv a()
    throws IOException
  {
    return new hk(a.a());
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
