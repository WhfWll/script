package com.arrownock.im.callback;

import com.arrownock.exception.ArrownockException;

public abstract interface IAnIMGetClientsStatusCallback
{
  public abstract void onError(ArrownockException paramArrownockException);
  
  public abstract void onSuccess(AnIMGetClientsStatusCallbackData paramAnIMGetClientsStatusCallbackData);
}
