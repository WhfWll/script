public final class ja
  extends IllegalStateException
{
  private Throwable a;
  
  ja(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    a = paramThrowable;
  }
  
  public final Throwable getCause()
  {
    return a;
  }
}
