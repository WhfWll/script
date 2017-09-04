package com.tencent.mm.sdk.modelmsg;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.Bundle;
import com.tencent.mm.sdk.b.b;
import java.io.ByteArrayOutputStream;

public final class WXMediaMessage
{
  public static final String ACTION_WXAPPMESSAGE = "com.tencent.mm.sdk.openapi.Intent.ACTION_WXAPPMESSAGE";
  private static final int DESCRIPTION_LENGTH_LIMIT = 1024;
  private static final int MEDIA_TAG_NAME_LENGTH_LIMIT = 64;
  private static final int MESSAGE_ACTION_LENGTH_LIMIT = 2048;
  private static final int MESSAGE_EXT_LENGTH_LIMIT = 2048;
  private static final String TAG = "MicroMsg.SDK.WXMediaMessage";
  public static final int THUMB_LENGTH_LIMIT = 32768;
  private static final int TITLE_LENGTH_LIMIT = 512;
  public String description;
  public IMediaObject mediaObject;
  public String mediaTagName;
  public String messageAction;
  public String messageExt;
  public int sdkVer;
  public byte[] thumbData;
  public String title;
  
  public WXMediaMessage()
  {
    this(null);
  }
  
  public WXMediaMessage(IMediaObject paramIMediaObject)
  {
    mediaObject = paramIMediaObject;
  }
  
  final boolean checkArgs()
  {
    if ((getType() == 8) && ((thumbData == null) || (thumbData.length == 0)))
    {
      b.b("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, thumbData should not be null when send emoji");
      return false;
    }
    if ((thumbData != null) && (thumbData.length > 32768))
    {
      b.b("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, thumbData is invalid");
      return false;
    }
    if ((title != null) && (title.length() > 512))
    {
      b.b("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, title is invalid");
      return false;
    }
    if ((description != null) && (description.length() > 1024))
    {
      b.b("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, description is invalid");
      return false;
    }
    if (mediaObject == null)
    {
      b.b("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, mediaObject is null");
      return false;
    }
    if ((mediaTagName != null) && (mediaTagName.length() > 64))
    {
      b.b("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, mediaTagName is too long");
      return false;
    }
    if ((messageAction != null) && (messageAction.length() > 2048))
    {
      b.b("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, messageAction is too long");
      return false;
    }
    if ((messageExt != null) && (messageExt.length() > 2048))
    {
      b.b("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, messageExt is too long");
      return false;
    }
    return mediaObject.checkArgs();
  }
  
  public final int getType()
  {
    if (mediaObject == null) {
      return 0;
    }
    return mediaObject.type();
  }
  
  public final void setThumbImage(Bitmap paramBitmap)
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, 85, localByteArrayOutputStream);
      thumbData = localByteArrayOutputStream.toByteArray();
      localByteArrayOutputStream.close();
      return;
    }
    catch (Exception paramBitmap)
    {
      paramBitmap.printStackTrace();
      b.b("MicroMsg.SDK.WXMediaMessage", "put thumb failed");
    }
  }
  
  public static class Builder
  {
    public static final String KEY_IDENTIFIER = "_wxobject_identifier_";
    
    public Builder() {}
    
    public static WXMediaMessage fromBundle(Bundle paramBundle)
    {
      WXMediaMessage localWXMediaMessage = new WXMediaMessage();
      sdkVer = paramBundle.getInt("_wxobject_sdkVer");
      title = paramBundle.getString("_wxobject_title");
      description = paramBundle.getString("_wxobject_description");
      thumbData = paramBundle.getByteArray("_wxobject_thumbdata");
      mediaTagName = paramBundle.getString("_wxobject_mediatagname");
      messageAction = paramBundle.getString("_wxobject_message_action");
      messageExt = paramBundle.getString("_wxobject_message_ext");
      String str = pathOldToNew(paramBundle.getString("_wxobject_identifier_"));
      if ((str == null) || (str.length() <= 0)) {
        return localWXMediaMessage;
      }
      try
      {
        mediaObject = ((WXMediaMessage.IMediaObject)Class.forName(str).newInstance());
        mediaObject.unserialize(paramBundle);
        return localWXMediaMessage;
      }
      catch (Exception paramBundle)
      {
        paramBundle.printStackTrace();
        b.b("MicroMsg.SDK.WXMediaMessage", "get media object from bundle failed: unknown ident " + str + ", ex = " + paramBundle.getMessage());
      }
      return localWXMediaMessage;
    }
    
    private static String pathNewToOld(String paramString)
    {
      if ((paramString == null) || (paramString.length() == 0))
      {
        b.b("MicroMsg.SDK.WXMediaMessage", "pathNewToOld fail, newPath is null");
        return paramString;
      }
      return paramString.replace("com.tencent.mm.sdk.modelmsg", "com.tencent.mm.sdk.openapi");
    }
    
    private static String pathOldToNew(String paramString)
    {
      if ((paramString == null) || (paramString.length() == 0))
      {
        b.b("MicroMsg.SDK.WXMediaMessage", "pathOldToNew fail, oldPath is null");
        return paramString;
      }
      return paramString.replace("com.tencent.mm.sdk.openapi", "com.tencent.mm.sdk.modelmsg");
    }
    
    public static Bundle toBundle(WXMediaMessage paramWXMediaMessage)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("_wxobject_sdkVer", sdkVer);
      localBundle.putString("_wxobject_title", title);
      localBundle.putString("_wxobject_description", description);
      localBundle.putByteArray("_wxobject_thumbdata", thumbData);
      if (mediaObject != null)
      {
        localBundle.putString("_wxobject_identifier_", pathNewToOld(mediaObject.getClass().getName()));
        mediaObject.serialize(localBundle);
      }
      localBundle.putString("_wxobject_mediatagname", mediaTagName);
      localBundle.putString("_wxobject_message_action", messageAction);
      localBundle.putString("_wxobject_message_ext", messageExt);
      return localBundle;
    }
  }
  
  public static abstract interface IMediaObject
  {
    public static final int TYPE_APPDATA = 7;
    public static final int TYPE_CARD_SHARE = 16;
    public static final int TYPE_DESIGNER_SHARED = 25;
    public static final int TYPE_DEVICE_ACCESS = 12;
    public static final int TYPE_EMOJI = 8;
    public static final int TYPE_EMOTICON_GIFT = 11;
    public static final int TYPE_EMOTICON_SHARED = 15;
    public static final int TYPE_FILE = 6;
    public static final int TYPE_IMAGE = 2;
    public static final int TYPE_LOCATION_SHARE = 17;
    public static final int TYPE_MALL_PRODUCT = 13;
    public static final int TYPE_MUSIC = 3;
    public static final int TYPE_OLD_TV = 14;
    public static final int TYPE_PRODUCT = 10;
    public static final int TYPE_RECORD = 19;
    public static final int TYPE_TEXT = 1;
    public static final int TYPE_TV = 20;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_URL = 5;
    public static final int TYPE_VIDEO = 4;
    
    public abstract boolean checkArgs();
    
    public abstract void serialize(Bundle paramBundle);
    
    public abstract int type();
    
    public abstract void unserialize(Bundle paramBundle);
  }
}
