public final class io
  extends ip
{
  private Throwable a;
  
  public io(String paramString)
  {
    super(paramString);
  }
  
  public io(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    a = paramThrowable;
  }
  
  public final Throwable getCause()
  {
    return a;
  }
}
