package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.b.b;
import java.io.File;

public class WXAppExtendObject
  implements WXMediaMessage.IMediaObject
{
  private static final int CONTENT_LENGTH_LIMIT = 10485760;
  private static final int EXTINFO_LENGTH_LIMIT = 2048;
  private static final int PATH_LENGTH_LIMIT = 10240;
  private static final String TAG = "MicroMsg.SDK.WXAppExtendObject";
  public String extInfo;
  public byte[] fileData;
  public String filePath;
  
  public WXAppExtendObject() {}
  
  public WXAppExtendObject(String paramString1, String paramString2)
  {
    extInfo = paramString1;
    filePath = paramString2;
  }
  
  public WXAppExtendObject(String paramString, byte[] paramArrayOfByte)
  {
    extInfo = paramString;
    fileData = paramArrayOfByte;
  }
  
  private int getFileSize(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {}
    do
    {
      return 0;
      paramString = new File(paramString);
    } while (!paramString.exists());
    return (int)paramString.length();
  }
  
  public boolean checkArgs()
  {
    if (((extInfo == null) || (extInfo.length() == 0)) && ((filePath == null) || (filePath.length() == 0)) && ((fileData == null) || (fileData.length == 0)))
    {
      b.b("MicroMsg.SDK.WXAppExtendObject", "checkArgs fail, all arguments is null");
      return false;
    }
    if ((extInfo != null) && (extInfo.length() > 2048))
    {
      b.b("MicroMsg.SDK.WXAppExtendObject", "checkArgs fail, extInfo is invalid");
      return false;
    }
    if ((filePath != null) && (filePath.length() > 10240))
    {
      b.b("MicroMsg.SDK.WXAppExtendObject", "checkArgs fail, filePath is invalid");
      return false;
    }
    if ((filePath != null) && (getFileSize(filePath) > 10485760))
    {
      b.b("MicroMsg.SDK.WXAppExtendObject", "checkArgs fail, fileSize is too large");
      return false;
    }
    if ((fileData != null) && (fileData.length > 10485760))
    {
      b.b("MicroMsg.SDK.WXAppExtendObject", "checkArgs fail, fileData is too large");
      return false;
    }
    return true;
  }
  
  public void serialize(Bundle paramBundle)
  {
    paramBundle.putString("_wxappextendobject_extInfo", extInfo);
    paramBundle.putByteArray("_wxappextendobject_fileData", fileData);
    paramBundle.putString("_wxappextendobject_filePath", filePath);
  }
  
  public int type()
  {
    return 7;
  }
  
  public void unserialize(Bundle paramBundle)
  {
    extInfo = paramBundle.getString("_wxappextendobject_extInfo");
    fileData = paramBundle.getByteArray("_wxappextendobject_fileData");
    filePath = paramBundle.getString("_wxappextendobject_filePath");
  }
}
