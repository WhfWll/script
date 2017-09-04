import java.io.IOException;
import java.io.InputStream;

public final class hf
  implements fr
{
  private hw a;
  
  hf(hw paramHw)
  {
    a = paramHw;
  }
  
  public final fv a()
    throws IOException
  {
    return new he(a.a());
  }
  
  public final InputStream a()
  {
    return a;
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
