package com.arrownock.im.callback;

import com.arrownock.exception.ArrownockException;

public abstract interface IAnIMGetTopicListCallback
{
  public abstract void onError(ArrownockException paramArrownockException);
  
  public abstract void onSuccess(AnIMGetTopicListCallbackData paramAnIMGetTopicListCallbackData);
}
