package com.arrownock.im.callback;

import com.arrownock.exception.ArrownockException;
import com.bangcle.andjni.JniLib;

@Deprecated
public class AnIMUpdateTopicCallbackData
  extends AnIMBaseRequestCallbackData
{
  @Deprecated
  private String topic = null;
  
  static
  {
    JniLib.a(AnIMUpdateTopicCallbackData.class, 210);
  }
  
  @Deprecated
  public AnIMUpdateTopicCallbackData(boolean paramBoolean, ArrownockException paramArrownockException, String paramString)
  {
    super(paramBoolean, paramArrownockException);
    topic = paramString;
  }
  
  @Deprecated
  public native String getTopic();
}
