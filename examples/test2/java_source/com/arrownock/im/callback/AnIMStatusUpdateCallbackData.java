package com.arrownock.im.callback;

import com.arrownock.exception.ArrownockException;
import com.arrownock.im.AnIMStatus;
import com.bangcle.andjni.JniLib;

public class AnIMStatusUpdateCallbackData
{
  private ArrownockException exception = null;
  private AnIMStatus status = AnIMStatus.OFFLINE;
  
  static
  {
    JniLib.a(AnIMStatusUpdateCallbackData.class, 207);
  }
  
  public AnIMStatusUpdateCallbackData(AnIMStatus paramAnIMStatus, ArrownockException paramArrownockException)
  {
    status = paramAnIMStatus;
    exception = paramArrownockException;
  }
  
  public native ArrownockException getException();
  
  public native AnIMStatus getStatus();
}
