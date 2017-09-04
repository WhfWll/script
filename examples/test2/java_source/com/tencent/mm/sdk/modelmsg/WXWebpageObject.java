package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.b.b;

public class WXWebpageObject
  implements WXMediaMessage.IMediaObject
{
  private static final int LENGTH_LIMIT = 10240;
  private static final String TAG = "MicroMsg.SDK.WXWebpageObject";
  public String extInfo;
  public String webpageUrl;
  
  public WXWebpageObject() {}
  
  public WXWebpageObject(String paramString)
  {
    webpageUrl = paramString;
  }
  
  public boolean checkArgs()
  {
    if ((webpageUrl == null) || (webpageUrl.length() == 0) || (webpageUrl.length() > 10240))
    {
      b.b("MicroMsg.SDK.WXWebpageObject", "checkArgs fail, webpageUrl is invalid");
      return false;
    }
    return true;
  }
  
  public void serialize(Bundle paramBundle)
  {
    paramBundle.putString("_wxwebpageobject_extInfo", extInfo);
    paramBundle.putString("_wxwebpageobject_webpageUrl", webpageUrl);
  }
  
  public int type()
  {
    return 5;
  }
  
  public void unserialize(Bundle paramBundle)
  {
    extInfo = paramBundle.getString("_wxwebpageobject_extInfo");
    webpageUrl = paramBundle.getString("_wxwebpageobject_webpageUrl");
  }
}
