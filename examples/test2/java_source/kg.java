public class kg
  extends Exception
{
  private Throwable a = null;
  
  public kg() {}
  
  public kg(Throwable paramThrowable)
  {
    a = paramThrowable;
  }
  
  public Throwable getCause()
  {
    return a;
  }
}
