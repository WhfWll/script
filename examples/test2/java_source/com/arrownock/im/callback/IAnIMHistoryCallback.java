package com.arrownock.im.callback;

import com.arrownock.exception.ArrownockException;
import com.arrownock.im.AnIMMessage;
import java.util.List;

public abstract interface IAnIMHistoryCallback
{
  public abstract void onError(ArrownockException paramArrownockException);
  
  public abstract void onSuccess(List<AnIMMessage> paramList, int paramInt);
}
