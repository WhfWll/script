package com.arrownock.im.callback;

public abstract class AnIMBaseMessageCallbackData
{
  private String from = null;
  private String msgId = null;
  
  public AnIMBaseMessageCallbackData(String paramString1, String paramString2)
  {
    msgId = paramString1;
    from = paramString2;
  }
  
  public String getFrom()
  {
    return from;
  }
  
  public String getMsgId()
  {
    return msgId;
  }
}
