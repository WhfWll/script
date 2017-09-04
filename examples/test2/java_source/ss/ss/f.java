package ss.ss;

public abstract class f
  implements Runnable
{
  protected final String a;
  
  public f(String paramString, Object... paramVarArgs)
  {
    a = String.format(paramString, paramVarArgs);
  }
  
  protected abstract void a();
  
  public final void run()
  {
    String str = Thread.currentThread().getName();
    Thread.currentThread().setName(a);
    try
    {
      a();
      return;
    }
    finally
    {
      Thread.currentThread().setName(str);
    }
  }
}
