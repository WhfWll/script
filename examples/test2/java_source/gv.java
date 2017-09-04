import java.io.IOException;

public final class gv
  implements fg, hx
{
  private ga a;
  
  public gv(ga paramGa)
  {
    a = paramGa;
  }
  
  public final fv a()
    throws IOException
  {
    try
    {
      gu localGu = new gu(a.a());
      return localGu;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new fj(localIllegalArgumentException.getMessage(), localIllegalArgumentException);
    }
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
      throw new fu("unable to get DER object", localIOException);
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new fu("unable to get DER object", localIllegalArgumentException);
    }
  }
}
