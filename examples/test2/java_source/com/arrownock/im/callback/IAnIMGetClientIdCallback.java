package com.arrownock.im.callback;

import com.arrownock.exception.ArrownockException;

public abstract interface IAnIMGetClientIdCallback
{
  public abstract void onError(ArrownockException paramArrownockException);
  
  public abstract void onSuccess(String paramString);
}
