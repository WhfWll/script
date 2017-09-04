package com.arrownock.im.callback;

import com.bangcle.andjni.JniLib;
import java.util.Map;

public class AnIMTopicMessageCallbackData
  extends AnIMBaseMessageCallbackData
{
  private Map<String, String> customData = null;
  private String message = null;
  private long timestamp = -1L;
  private String topic = null;
  
  static
  {
    JniLib.a(AnIMTopicMessageCallbackData.class, 209);
  }
  
  public AnIMTopicMessageCallbackData(String paramString1, String paramString2, String paramString3, String paramString4, Map<String, String> paramMap, long paramLong)
  {
    super(paramString1, paramString2);
    topic = paramString3;
    message = paramString4;
    customData = paramMap;
    timestamp = paramLong;
  }
  
  public native Map<String, String> getCustomData();
  
  public native String getMessage();
  
  public native long getTimestamp();
  
  public native String getTopic();
}
