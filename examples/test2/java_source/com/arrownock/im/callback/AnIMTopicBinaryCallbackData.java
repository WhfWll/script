package com.arrownock.im.callback;

import com.bangcle.andjni.JniLib;
import java.util.Map;

public class AnIMTopicBinaryCallbackData
  extends AnIMBaseMessageCallbackData
{
  private byte[] content = null;
  private Map<String, String> customData = null;
  private String fileType = null;
  private long timestamp = -1L;
  private String topic = null;
  
  static
  {
    JniLib.a(AnIMTopicBinaryCallbackData.class, 208);
  }
  
  public AnIMTopicBinaryCallbackData(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte, String paramString4, Map<String, String> paramMap, long paramLong)
  {
    super(paramString1, paramString2);
    topic = paramString3;
    content = paramArrayOfByte;
    fileType = paramString4;
    customData = paramMap;
    timestamp = paramLong;
  }
  
  public native byte[] getContent();
  
  public native Map<String, String> getCustomData();
  
  public native String getFileType();
  
  public native long getTimestamp();
  
  public native String getTopic();
}
