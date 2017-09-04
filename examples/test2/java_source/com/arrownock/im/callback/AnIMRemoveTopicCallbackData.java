package com.arrownock.im.callback;

import com.arrownock.exception.ArrownockException;
import com.bangcle.andjni.JniLib;

@Deprecated
public class AnIMRemoveTopicCallbackData
  extends AnIMBaseRequestCallbackData
{
  @Deprecated
  private String topic = null;
  
  static
  {
    JniLib.a(AnIMRemoveTopicCallbackData.class, 206);
  }
  
  @Deprecated
  public AnIMRemoveTopicCallbackData(boolean paramBoolean, ArrownockException paramArrownockException, String paramString)
  {
    super(paramBoolean, paramArrownockException);
    topic = paramString;
  }
  
  @Deprecated
  public native String getTopic();
}
