package com.arrownock.push;

import com.arrownock.exception.ArrownockException;

public abstract interface IAnPushRegistrationCallback
{
  public abstract void onError(ArrownockException paramArrownockException);
  
  public abstract void onSuccess(String paramString);
}
