package com.arrownock.im.callback;

import com.arrownock.exception.ArrownockException;
import com.bangcle.andjni.JniLib;

public class AnIMMessageSentCallbackData
{
  private boolean error = true;
  private ArrownockException exception = null;
  private String msgId = null;
  private long timestamp = -1L;
  
  static
  {
    JniLib.a(AnIMMessageSentCallbackData.class, 204);
  }
  
  public AnIMMessageSentCallbackData(boolean paramBoolean, ArrownockException paramArrownockException, String paramString, long paramLong)
  {
    error = paramBoolean;
    msgId = paramString;
    timestamp = paramLong;
    exception = paramArrownockException;
  }
  
  public native ArrownockException getException();
  
  public native String getMsgId();
  
  public native long getTimestamp();
  
  public native boolean isError();
}
