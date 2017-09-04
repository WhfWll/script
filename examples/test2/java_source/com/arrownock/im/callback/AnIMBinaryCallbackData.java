package com.arrownock.im.callback;

import com.bangcle.andjni.JniLib;
import java.util.Map;
import java.util.Set;

public class AnIMBinaryCallbackData
  extends AnIMBaseMessageCallbackData
{
  private byte[] content = null;
  private Map<String, String> customData = null;
  private String fileType = null;
  private Set<String> parties = null;
  private long timestamp = -1L;
  
  static
  {
    JniLib.a(AnIMBinaryCallbackData.class, 195);
  }
  
  public AnIMBinaryCallbackData(String paramString1, String paramString2, Set<String> paramSet, byte[] paramArrayOfByte, String paramString3, Map<String, String> paramMap, long paramLong)
  {
    super(paramString1, paramString2);
    parties = paramSet;
    content = paramArrayOfByte;
    fileType = paramString3;
    customData = paramMap;
    timestamp = paramLong;
  }
  
  public native byte[] getContent();
  
  public native Map<String, String> getCustomData();
  
  public native String getFileType();
  
  public native Set<String> getParties();
  
  public native long getTimestamp();
}
