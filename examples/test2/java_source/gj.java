import java.io.IOException;

public final class gj
  implements fx
{
  private ga a;
  
  gj(ga paramGa)
  {
    a = paramGa;
  }
  
  public final fv a()
    throws IOException
  {
    return new gi(a.a());
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
      throw new IllegalStateException(localIOException.getMessage());
    }
  }
}
