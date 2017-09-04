package com.arrownock.push;

import com.arrownock.exception.ArrownockException;

public abstract interface IAnPushRegisterAnIdCallback
{
  public abstract void onError(ArrownockException paramArrownockException, int paramInt, String paramString);
  
  public abstract void onSuccess();
}
