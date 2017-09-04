package com.arrownock.im.callback;

import com.arrownock.exception.ArrownockException;
import com.bangcle.andjni.JniLib;
import java.util.Map;

public class AnIMGetClientsStatusCallbackData
  extends AnIMBaseRequestCallbackData
{
  Map<String, Boolean> clientsStatus = null;
  
  static
  {
    JniLib.a(AnIMGetClientsStatusCallbackData.class, 199);
  }
  
  public AnIMGetClientsStatusCallbackData(boolean paramBoolean, ArrownockException paramArrownockException, Map<String, Boolean> paramMap)
  {
    super(paramBoolean, paramArrownockException);
    clientsStatus = paramMap;
  }
  
  public native Map<String, Boolean> getClientsStatus();
}
