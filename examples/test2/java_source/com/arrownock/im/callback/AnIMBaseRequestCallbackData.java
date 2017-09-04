package com.arrownock.im.callback;

import com.arrownock.exception.ArrownockException;

public abstract class AnIMBaseRequestCallbackData
{
  private boolean error = false;
  private ArrownockException exception = null;
  
  public AnIMBaseRequestCallbackData(boolean paramBoolean, ArrownockException paramArrownockException)
  {
    error = paramBoolean;
    exception = paramArrownockException;
  }
  
  public ArrownockException getException()
  {
    return exception;
  }
  
  public boolean isError()
  {
    return error;
  }
}
