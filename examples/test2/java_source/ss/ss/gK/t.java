package ss.ss.gK;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class t
  extends Exception
{
  private static final Method a;
  private IOException b;
  
  static
  {
    try
    {
      Method localMethod = Throwable.class.getDeclaredMethod("addSuppressed", new Class[] { Throwable.class });
      a = localMethod;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject = null;
      }
    }
  }
  
  public t(IOException paramIOException)
  {
    super(paramIOException);
    b = paramIOException;
  }
  
  private void a(IOException paramIOException1, IOException paramIOException2)
  {
    if (a != null) {}
    try
    {
      a.invoke(paramIOException1, new Object[] { paramIOException2 });
      return;
    }
    catch (InvocationTargetException paramIOException1) {}catch (IllegalAccessException paramIOException1) {}
  }
  
  public IOException a()
  {
    return b;
  }
  
  public void a(IOException paramIOException)
  {
    a(paramIOException, b);
    b = paramIOException;
  }
}
