package com.tencent.mm.sdk.modelbiz;

import android.os.Bundle;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;
import java.net.URLEncoder;

public class OpenWebview
{
  public OpenWebview() {}
  
  public static class Req
    extends BaseReq
  {
    private static final int MAX_URL_LENGHT = 10240;
    public String url;
    
    public Req() {}
    
    public boolean checkArgs()
    {
      if ((url == null) || (url.length() < 0)) {}
      while (url.length() > 10240) {
        return false;
      }
      return true;
    }
    
    public int getType()
    {
      return 12;
    }
    
    public void toBundle(Bundle paramBundle)
    {
      super.toBundle(paramBundle);
      paramBundle.putString("_wxapi_jump_to_webview_url", URLEncoder.encode(url));
    }
  }
  
  public static class Resp
    extends BaseResp
  {
    public String result;
    
    public Resp() {}
    
    public Resp(Bundle paramBundle)
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
      result = paramBundle.getString("_wxapi_open_webview_result");
    }
    
    public int getType()
    {
      return 12;
    }
    
    public void toBundle(Bundle paramBundle)
    {
      super.toBundle(paramBundle);
      paramBundle.putString("_wxapi_open_webview_result", result);
    }
  }
}
