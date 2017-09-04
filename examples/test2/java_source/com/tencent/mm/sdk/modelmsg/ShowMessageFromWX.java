package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;

public class ShowMessageFromWX
{
  private ShowMessageFromWX() {}
  
  public static class Req
    extends BaseReq
  {
    public String country;
    public String lang;
    public WXMediaMessage message;
    
    public Req() {}
    
    public Req(Bundle paramBundle)
    {
      fromBundle(paramBundle);
    }
    
    public boolean checkArgs()
    {
      if (message == null) {
        return false;
      }
      return message.checkArgs();
    }
    
    public void fromBundle(Bundle paramBundle)
    {
      super.fromBundle(paramBundle);
      lang = paramBundle.getString("_wxapi_showmessage_req_lang");
      country = paramBundle.getString("_wxapi_showmessage_req_country");
      message = WXMediaMessage.Builder.fromBundle(paramBundle);
    }
    
    public int getType()
    {
      return 4;
    }
    
    public void toBundle(Bundle paramBundle)
    {
      Bundle localBundle = WXMediaMessage.Builder.toBundle(message);
      super.toBundle(localBundle);
      paramBundle.putString("_wxapi_showmessage_req_lang", lang);
      paramBundle.putString("_wxapi_showmessage_req_country", country);
      paramBundle.putAll(localBundle);
    }
  }
  
  public static class Resp
    extends BaseResp
  {
    public Resp() {}
    
    public Resp(Bundle paramBundle)
    {
      fromBundle(paramBundle);
    }
    
    public boolean checkArgs()
    {
      return true;
    }
    
    public int getType()
    {
      return 4;
    }
  }
}
