package com.arrownock.push;

import com.arrownock.exception.ArrownockException;

public abstract class AnPushCallbackAdapter
  implements IAnPushCallback
{
  public AnPushCallbackAdapter() {}
  
  @Deprecated
  public void clearMute(boolean paramBoolean, ArrownockException paramArrownockException) {}
  
  @Deprecated
  public void clearSilentPeriod(boolean paramBoolean, ArrownockException paramArrownockException) {}
  
  @Deprecated
  public void register(boolean paramBoolean, String paramString, ArrownockException paramArrownockException) {}
  
  @Deprecated
  public void setBadge(boolean paramBoolean, ArrownockException paramArrownockException) {}
  
  @Deprecated
  public void setMute(boolean paramBoolean, ArrownockException paramArrownockException) {}
  
  @Deprecated
  public void setScheduledMute(boolean paramBoolean, ArrownockException paramArrownockException) {}
  
  @Deprecated
  public void setSilentPeriod(boolean paramBoolean, ArrownockException paramArrownockException) {}
  
  public void statusChanged(AnPushStatus paramAnPushStatus, ArrownockException paramArrownockException) {}
  
  @Deprecated
  public void unregister(boolean paramBoolean, ArrownockException paramArrownockException) {}
}