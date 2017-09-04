import java.io.IOException;

public class ip
  extends IOException
{
  private Exception a;
  
  public ip(String paramString)
  {
    super(paramString);
  }
  
  public ip(String paramString, Exception paramException)
  {
    super(paramString);
    a = paramException;
  }
  
  public Throwable getCause()
  {
    return a;
  }
}
