package com.lidroid.xutils.http.client.multipart.content;

import com.lidroid.xutils.http.client.multipart.MultipartEntity.CallBackInfo;

public abstract class AbstractContentBody
  implements ContentBody
{
  protected MultipartEntity.CallBackInfo callBackInfo = MultipartEntity.CallBackInfo.DEFAULT;
  private final String mediaType;
  private final String mimeType;
  private final String subType;
  
  public AbstractContentBody(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("MIME type may not be null");
    }
    mimeType = paramString;
    int i = paramString.indexOf('/');
    if (i != -1)
    {
      mediaType = paramString.substring(0, i);
      subType = paramString.substring(i + 1);
      return;
    }
    mediaType = paramString;
    subType = null;
  }
  
  public String getMediaType()
  {
    return mediaType;
  }
  
  public String getMimeType()
  {
    return mimeType;
  }
  
  public String getSubType()
  {
    return subType;
  }
  
  public void setCallBackInfo(MultipartEntity.CallBackInfo paramCallBackInfo)
  {
    callBackInfo = paramCallBackInfo;
  }
}
