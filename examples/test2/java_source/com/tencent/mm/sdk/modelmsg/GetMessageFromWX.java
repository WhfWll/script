package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.b.b;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;

public final class GetMessageFromWX
{
  private GetMessageFromWX() {}
  
  public static class Req
    extends BaseReq
  {
    public String country;
    public String lang;
    public String username;
    
    public Req() {}
    
    public Req(Bundle paramBundle)
    {
      fromBundle(paramBundle);
    }
    
    public boolean checkArgs()
    {
      return true;
    }
    
    public void fromBundle(Bundle paramBundle)
    {
      super.fromBundle(paramBundle);
      lang = paramBundle.getString("_wxapi_getmessage_req_lang");
      country = paramBundle.getString("_wxapi_getmessage_req_country");
    }
    
    public int getType()
    {
      return 3;
    }
    
    public void toBundle(Bundle paramBundle)
    {
      super.toBundle(paramBundle);
      paramBundle.putString("_wxapi_getmessage_req_lang", lang);
      paramBundle.putString("_wxapi_getmessage_req_country", country);
    }
  }
  
  public static class Resp
    extends BaseResp
  {
    private static final String TAG = "MicroMsg.SDK.GetMessageFromWX.Resp";
    public WXMediaMessage message;
    
    public Resp() {}
    
    public Resp(Bundle paramBundle)
    {
      fromBundle(paramBundle);
    }
    
    public boolean checkArgs()
    {
      if (message == null)
      {
        b.b("MicroMsg.SDK.GetMessageFromWX.Resp", "checkArgs fail, message is null");
        return false;
      }
      return message.checkArgs();
    }
    
    public void fromBundle(Bundle paramBundle)
    {
      super.fromBundle(paramBundle);
      message = WXMediaMessage.Builder.fromBundle(paramBundle);
    }
    
    public int getType()
    {
      return 3;
    }
    
    public void toBundle(Bundle paramBundle)
    {
      super.toBundle(paramBundle);
      paramBundle.putAll(WXMediaMessage.Builder.toBundle(message));
    }
  }
}
