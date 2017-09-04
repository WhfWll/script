package org.json.alipay;

public final class a
  extends Exception
{
  private Throwable a;
  
  public a(String paramString)
  {
    super(paramString);
  }
  
  public a(Throwable paramThrowable)
  {
    super(paramThrowable.getMessage());
    a = paramThrowable;
  }
  
  public final Throwable getCause()
  {
    return a;
  }
}
