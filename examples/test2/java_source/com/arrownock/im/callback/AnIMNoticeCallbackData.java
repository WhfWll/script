package com.arrownock.im.callback;

import com.bangcle.andjni.JniLib;
import java.util.Map;

public class AnIMNoticeCallbackData
  extends AnIMBaseMessageCallbackData
{
  private Map<String, String> customData = null;
  private String notice = null;
  private long timestamp = -1L;
  private String topic = null;
  
  static
  {
    JniLib.a(AnIMNoticeCallbackData.class, 205);
  }
  
  public AnIMNoticeCallbackData(String paramString1, String paramString2, String paramString3, Map<String, String> paramMap, long paramLong)
  {
    this(paramString1, paramString2, paramString3, paramMap, paramLong, null);
  }
  
  public AnIMNoticeCallbackData(String paramString1, String paramString2, String paramString3, Map<String, String> paramMap, long paramLong, String paramString4)
  {
    super(paramString1, paramString2);
    notice = paramString3;
    customData = paramMap;
    timestamp = paramLong;
    topic = paramString4;
  }
  
  public native Map<String, String> getCustomData();
  
  public native String getNotice();
  
  public native long getTimestamp();
  
  public native String getTopic();
}
