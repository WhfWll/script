public final class iy
  extends IllegalStateException
{
  private Throwable a;
  
  iy(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    a = paramThrowable;
  }
  
  public final Throwable getCause()
  {
    return a;
  }
}
