package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.mm.sdk.b.b;

public class WXEmojiSharedObject
  implements WXMediaMessage.IMediaObject
{
  private static final String TAG = "MicroMsg.SDK.WXEmojiSharedObject";
  public int packageflag;
  public String packageid;
  public String thumburl;
  public String url;
  
  public WXEmojiSharedObject() {}
  
  public WXEmojiSharedObject(String paramString1, int paramInt, String paramString2, String paramString3)
  {
    thumburl = paramString1;
    packageflag = paramInt;
    packageid = paramString2;
    url = paramString3;
  }
  
  public boolean checkArgs()
  {
    if ((TextUtils.isEmpty(packageid)) || (TextUtils.isEmpty(thumburl)) || (TextUtils.isEmpty(url)) || (packageflag == -1))
    {
      b.b("MicroMsg.SDK.WXEmojiSharedObject", "checkArgs fail, packageid or thumburl is invalid");
      return false;
    }
    return true;
  }
  
  public void serialize(Bundle paramBundle)
  {
    paramBundle.putString("_wxemojisharedobject_thumburl", thumburl);
    paramBundle.putInt("_wxemojisharedobject_packageflag", packageflag);
    paramBundle.putString("_wxemojisharedobject_packageid", packageid);
    paramBundle.putString("_wxemojisharedobject_url", url);
  }
  
  public int type()
  {
    return 15;
  }
  
  public void unserialize(Bundle paramBundle)
  {
    thumburl = paramBundle.getString("_wxwebpageobject_thumburl");
    packageflag = paramBundle.getInt("_wxwebpageobject_packageflag");
    packageid = paramBundle.getString("_wxwebpageobject_packageid");
    url = paramBundle.getString("_wxwebpageobject_url");
  }
}
