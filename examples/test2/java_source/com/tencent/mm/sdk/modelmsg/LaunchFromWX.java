package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.b.b;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;

public class LaunchFromWX
{
  private LaunchFromWX() {}
  
  public static class Req
    extends BaseReq
  {
    private static final int MESSAGE_ACTION_LENGTH_LIMIT = 2048;
    private static final int MESSAGE_EXT_LENGTH_LIMIT = 2048;
    private static final String TAG = "MicroMsg.SDK.LaunchFromWX.Req";
    public String country;
    public String lang;
    public String messageAction;
    public String messageExt;
    
    public Req() {}
    
    public Req(Bundle paramBundle)
    {
      fromBundle(paramBundle);
    }
    
    public boolean checkArgs()
    {
      if ((messageAction != null) && (messageAction.length() > 2048))
      {
        b.b("MicroMsg.SDK.LaunchFromWX.Req", "checkArgs fail, messageAction is too long");
        return false;
      }
      if ((messageExt != null) && (messageExt.length() > 2048))
      {
        b.b("MicroMsg.SDK.LaunchFromWX.Req", "checkArgs fail, messageExt is too long");
        return false;
      }
      return true;
    }
    
    public void fromBundle(Bundle paramBundle)
    {
      super.fromBundle(paramBundle);
      messageAction = paramBundle.getString("_wxobject_message_action");
      messageExt = paramBundle.getString("_wxobject_message_ext");
      lang = paramBundle.getString("_wxapi_launch_req_lang");
      country = paramBundle.getString("_wxapi_launch_req_country");
    }
    
    public int getType()
    {
      return 6;
    }
    
    public void toBundle(Bundle paramBundle)
    {
      super.toBundle(paramBundle);
      paramBundle.putString("_wxobject_message_action", messageAction);
      paramBundle.putString("_wxobject_message_ext", messageExt);
      paramBundle.putString("_wxapi_launch_req_lang", lang);
      paramBundle.putString("_wxapi_launch_req_country", country);
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
      return 6;
    }
  }
}
