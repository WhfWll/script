public final class fu
  extends IllegalStateException
{
  private Throwable a;
  
  public fu(String paramString)
  {
    super(paramString);
  }
  
  public fu(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    a = paramThrowable;
  }
  
  public final Throwable getCause()
  {
    return a;
  }
}
