package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.b.b;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;

public final class SendAuth
{
  private SendAuth() {}
  
  public static class Req
    extends BaseReq
  {
    private static final int LENGTH_LIMIT = 1024;
    private static final String TAG = "MicroMsg.SDK.SendAuth.Req";
    public String scope;
    public String state;
    
    public Req() {}
    
    public Req(Bundle paramBundle)
    {
      fromBundle(paramBundle);
    }
    
    public boolean checkArgs()
    {
      if ((scope == null) || (scope.length() == 0) || (scope.length() > 1024))
      {
        b.b("MicroMsg.SDK.SendAuth.Req", "checkArgs fail, scope is invalid");
        return false;
      }
      if ((state != null) && (state.length() > 1024))
      {
        b.b("MicroMsg.SDK.SendAuth.Req", "checkArgs fail, state is invalid");
        return false;
      }
      return true;
    }
    
    public void fromBundle(Bundle paramBundle)
    {
      super.fromBundle(paramBundle);
      scope = paramBundle.getString("_wxapi_sendauth_req_scope");
      state = paramBundle.getString("_wxapi_sendauth_req_state");
    }
    
    public int getType()
    {
      return 1;
    }
    
    public void toBundle(Bundle paramBundle)
    {
      super.toBundle(paramBundle);
      paramBundle.putString("_wxapi_sendauth_req_scope", scope);
      paramBundle.putString("_wxapi_sendauth_req_state", state);
    }
  }
  
  public static class Resp
    extends BaseResp
  {
    private static final int LENGTH_LIMIT = 1024;
    private static final String TAG = "MicroMsg.SDK.SendAuth.Resp";
    public String code;
    public String country;
    public String lang;
    public String state;
    public String url;
    
    public Resp() {}
    
    public Resp(Bundle paramBundle)
    {
      fromBundle(paramBundle);
    }
    
    public boolean checkArgs()
    {
      if ((state != null) && (state.length() > 1024))
      {
        b.b("MicroMsg.SDK.SendAuth.Resp", "checkArgs fail, state is invalid");
        return false;
      }
      return true;
    }
    
    public void fromBundle(Bundle paramBundle)
    {
      super.fromBundle(paramBundle);
      code = paramBundle.getString("_wxapi_sendauth_resp_token");
      state = paramBundle.getString("_wxapi_sendauth_resp_state");
      url = paramBundle.getString("_wxapi_sendauth_resp_url");
      lang = paramBundle.getString("_wxapi_sendauth_resp_lang");
      country = paramBundle.getString("_wxapi_sendauth_resp_country");
    }
    
    public int getType()
    {
      return 1;
    }
    
    public void toBundle(Bundle paramBundle)
    {
      super.toBundle(paramBundle);
      paramBundle.putString("_wxapi_sendauth_resp_token", code);
      paramBundle.putString("_wxapi_sendauth_resp_state", state);
      paramBundle.putString("_wxapi_sendauth_resp_url", url);
      paramBundle.putString("_wxapi_sendauth_resp_lang", lang);
      paramBundle.putString("_wxapi_sendauth_resp_country", country);
    }
  }
}
