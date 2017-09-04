package com.tencent.mm.sdk.modelbiz;

import android.os.Bundle;
import com.tencent.mm.sdk.modelbase.BaseReq;

public class OpenBusiLuckyMoney
{
  public OpenBusiLuckyMoney() {}
  
  public static class Req
    extends BaseReq
  {
    private static final int MAX_URL_LENGHT = 10240;
    public String appId;
    public String nonceStr;
    public String packageExt;
    public String signType;
    public String signature;
    public String timeStamp;
    
    public Req() {}
    
    public boolean checkArgs()
    {
      if ((appId == null) || (appId.length() <= 0)) {}
      while ((timeStamp == null) || (timeStamp.length() <= 0) || (nonceStr == null) || (nonceStr.length() <= 0) || (signType == null) || (signType.length() <= 0) || (signature == null) || (signature.length() <= 0)) {
        return false;
      }
      return true;
    }
    
    public int getType()
    {
      return 13;
    }
    
    public void toBundle(Bundle paramBundle)
    {
      super.toBundle(paramBundle);
      paramBundle.putString("_wxapi_open_busi_lucky_money_appid", appId);
      paramBundle.putString("_wxapi_open_busi_lucky_money_timeStamp", timeStamp);
      paramBundle.putString("_wxapi_open_busi_lucky_money_nonceStr", nonceStr);
      paramBundle.putString("_wxapi_open_busi_lucky_money_signType", signType);
      paramBundle.putString("_wxapi_open_busi_lucky_money_signature", signature);
      paramBundle.putString("_wxapi_open_busi_lucky_money_package", packageExt);
    }
  }
}
