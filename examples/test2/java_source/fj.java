import java.io.IOException;

public final class fj
  extends IOException
{
  private Throwable a;
  
  fj(String paramString)
  {
    super(paramString);
  }
  
  fj(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    a = paramThrowable;
  }
  
  public final Throwable getCause()
  {
    return a;
  }
}
