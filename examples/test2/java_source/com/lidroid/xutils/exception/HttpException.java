package com.lidroid.xutils.exception;

public class HttpException
  extends BaseException
{
  private static final long serialVersionUID = 1L;
  private int exceptionCode;
  
  public HttpException() {}
  
  public HttpException(int paramInt)
  {
    exceptionCode = paramInt;
  }
  
  public HttpException(int paramInt, String paramString)
  {
    super(paramString);
    exceptionCode = paramInt;
  }
  
  public HttpException(int paramInt, String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    exceptionCode = paramInt;
  }
  
  public HttpException(int paramInt, Throwable paramThrowable)
  {
    super(paramThrowable);
    exceptionCode = paramInt;
  }
  
  public HttpException(String paramString)
  {
    super(paramString);
  }
  
  public HttpException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public HttpException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
  
  public int getExceptionCode()
  {
    return exceptionCode;
  }
}
