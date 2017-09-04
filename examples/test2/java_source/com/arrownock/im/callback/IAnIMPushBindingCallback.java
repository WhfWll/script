package com.arrownock.im.callback;

import com.arrownock.exception.ArrownockException;

public abstract interface IAnIMPushBindingCallback
{
  public abstract void onError(ArrownockException paramArrownockException);
  
  public abstract void onSuccess();
}
