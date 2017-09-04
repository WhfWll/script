package com.arrownock.live;

import com.arrownock.exception.ArrownockException;

public abstract interface IStartCallCallback
{
  public abstract void onFailure(ArrownockException paramArrownockException);
  
  public abstract void onReady(String paramString);
}
