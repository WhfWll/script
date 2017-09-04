package com.tencent.mm.sdk.modelbiz;

import android.os.Bundle;
import com.tencent.mm.sdk.b.b;
import com.tencent.mm.sdk.modelbase.BaseReq;

public final class JumpToBizWebview
{
  public JumpToBizWebview() {}
  
  public static class Req
    extends BaseReq
  {
    private static final int EXT_MSG_LENGTH = 1024;
    private static final String TAG = "MicroMsg.SDK.JumpToBizWebview.Req";
    public String extMsg;
    public int scene = 1;
    public String toUserName;
    public int webType;
    
    public Req() {}
    
    public boolean checkArgs()
    {
      if ((toUserName == null) || (toUserName.length() <= 0))
      {
        b.b("MicroMsg.SDK.JumpToBizWebview.Req", "checkArgs fail, toUserName is invalid");
        return false;
      }
      if ((extMsg != null) && (extMsg.length() > 1024))
      {
        b.b("MicroMsg.SDK.JumpToBizWebview.Req", "ext msg is not null, while the length exceed 1024 bytes");
        return false;
      }
      return true;
    }
    
    public int getType()
    {
      return 8;
    }
    
    public void toBundle(Bundle paramBundle)
    {
      super.toBundle(paramBundle);
      paramBundle.putString("_wxapi_jump_to_biz_webview_req_to_user_name", toUserName);
      paramBundle.putString("_wxapi_jump_to_biz_webview_req_ext_msg", extMsg);
      paramBundle.putInt("_wxapi_jump_to_biz_webview_req_web_type", webType);
      paramBundle.putInt("_wxapi_jump_to_biz_webview_req_scene", scene);
    }
  }
}
