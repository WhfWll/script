package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.b.b;

public class WXMusicObject
  implements WXMediaMessage.IMediaObject
{
  private static final int LENGTH_LIMIT = 10240;
  private static final String TAG = "MicroMsg.SDK.WXMusicObject";
  public String musicDataUrl;
  public String musicLowBandDataUrl;
  public String musicLowBandUrl;
  public String musicUrl;
  
  public WXMusicObject() {}
  
  public boolean checkArgs()
  {
    if (((musicUrl == null) || (musicUrl.length() == 0)) && ((musicLowBandUrl == null) || (musicLowBandUrl.length() == 0)))
    {
      b.b("MicroMsg.SDK.WXMusicObject", "both arguments are null");
      return false;
    }
    if ((musicUrl != null) && (musicUrl.length() > 10240))
    {
      b.b("MicroMsg.SDK.WXMusicObject", "checkArgs fail, musicUrl is too long");
      return false;
    }
    if ((musicLowBandUrl != null) && (musicLowBandUrl.length() > 10240))
    {
      b.b("MicroMsg.SDK.WXMusicObject", "checkArgs fail, musicLowBandUrl is too long");
      return false;
    }
    return true;
  }
  
  public void serialize(Bundle paramBundle)
  {
    paramBundle.putString("_wxmusicobject_musicUrl", musicUrl);
    paramBundle.putString("_wxmusicobject_musicLowBandUrl", musicLowBandUrl);
    paramBundle.putString("_wxmusicobject_musicDataUrl", musicDataUrl);
    paramBundle.putString("_wxmusicobject_musicLowBandDataUrl", musicLowBandDataUrl);
  }
  
  public int type()
  {
    return 3;
  }
  
  public void unserialize(Bundle paramBundle)
  {
    musicUrl = paramBundle.getString("_wxmusicobject_musicUrl");
    musicLowBandUrl = paramBundle.getString("_wxmusicobject_musicLowBandUrl");
    musicDataUrl = paramBundle.getString("_wxmusicobject_musicDataUrl");
    musicLowBandDataUrl = paramBundle.getString("_wxmusicobject_musicLowBandDataUrl");
  }
}
