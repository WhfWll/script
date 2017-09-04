package com.arrownock.push;

import com.arrownock.exception.ArrownockException;

public abstract interface IAnPushSettingsCallback
{
  public abstract void onError(ArrownockException paramArrownockException);
  
  public abstract void onSuccess();
}
