package com.tencent.mm.sdk.modelbiz;

import android.os.Bundle;
import com.tencent.mm.sdk.b.b;
import com.tencent.mm.sdk.modelbase.BaseReq;

public final class JumpToBizTempSession
{
  public static final int SHOW_CHAT = 1;
  public static final int SHOW_MENU = 0;
  
  public JumpToBizTempSession() {}
  
  public static class Req
    extends BaseReq
  {
    private static final int MAX_SESSION_FROM_LENGTH = 1024;
    private static final String TAG = "MicroMsg.SDK.JumpToBizTempSession.Req";
    public String sessionFrom;
    public int showType;
    public String toUserName;
    
    public Req() {}
    
    public boolean checkArgs()
    {
      if ((toUserName == null) || (toUserName.length() <= 0))
      {
        b.b("MicroMsg.SDK.JumpToBizTempSession.Req", "checkArgs fail, toUserName is invalid");
        return false;
      }
      if ((sessionFrom == null) || (sessionFrom.length() > 1024))
      {
        b.b("MicroMsg.SDK.JumpToBizTempSession.Req", "checkArgs fail, sessionFrom is invalid");
        return false;
      }
      return true;
    }
    
    public int getType()
    {
      return 10;
    }
    
    public void toBundle(Bundle paramBundle)
    {
      super.toBundle(paramBundle);
      paramBundle.putString("_wxapi_jump_to_biz_webview_req_to_user_name", toUserName);
      paramBundle.putString("_wxapi_jump_to_biz_webview_req_session_from", sessionFrom);
      paramBundle.putInt("_wxapi_jump_to_biz_webview_req_show_type", showType);
    }
  }
}
