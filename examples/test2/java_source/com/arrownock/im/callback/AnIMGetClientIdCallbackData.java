package com.arrownock.im.callback;

import com.arrownock.exception.ArrownockException;
import com.bangcle.andjni.JniLib;

public class AnIMGetClientIdCallbackData
  extends AnIMBaseRequestCallbackData
{
  private String clientId = null;
  
  static
  {
    JniLib.a(AnIMGetClientIdCallbackData.class, 198);
  }
  
  public AnIMGetClientIdCallbackData(boolean paramBoolean, ArrownockException paramArrownockException, String paramString)
  {
    super(paramBoolean, paramArrownockException);
    clientId = paramString;
  }
  
  public native String getClientId();
}
