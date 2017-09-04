package com.arrownock.im.callback;

import com.arrownock.exception.ArrownockException;
import com.bangcle.andjni.JniLib;
import java.util.Date;
import java.util.Set;

public class AnIMGetSessionInfoCallbackData
  extends AnIMBaseRequestCallbackData
{
  private Date createdAt = null;
  private Set<String> parties = null;
  private String sessionId = null;
  
  static
  {
    JniLib.a(AnIMGetSessionInfoCallbackData.class, 200);
  }
  
  public AnIMGetSessionInfoCallbackData(boolean paramBoolean, ArrownockException paramArrownockException, String paramString, Set<String> paramSet, Date paramDate)
  {
    super(paramBoolean, paramArrownockException);
    sessionId = paramString;
    parties = paramSet;
    createdAt = paramDate;
  }
  
  public native Date getCreatedAt();
  
  public native Set<String> getParties();
  
  public native String getSessionId();
}
