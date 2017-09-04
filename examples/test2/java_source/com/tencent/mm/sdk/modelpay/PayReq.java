package com.tencent.mm.sdk.modelpay;

import android.os.Bundle;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.b;
import com.tencent.mm.sdk.modelbase.BaseReq;

public class PayReq
  extends BaseReq
{
  private static final int EXTDATA_MAX_LENGTH = 1024;
  private static final String TAG = "MicroMsg.PaySdk.PayReq";
  public String appId;
  public String extData;
  public String nonceStr;
  public Options options;
  public String packageValue;
  public String partnerId;
  public String prepayId;
  public String sign;
  public String signType;
  public String timeStamp;
  
  public PayReq() {}
  
  public boolean checkArgs()
  {
    if ((appId == null) || (appId.length() == 0))
    {
      b.b("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid appId");
      return false;
    }
    if ((partnerId == null) || (partnerId.length() == 0))
    {
      b.b("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid partnerId");
      return false;
    }
    if ((prepayId == null) || (prepayId.length() == 0))
    {
      b.b("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid prepayId");
      return false;
    }
    if ((nonceStr == null) || (nonceStr.length() == 0))
    {
      b.b("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid nonceStr");
      return false;
    }
    if ((timeStamp == null) || (timeStamp.length() == 0))
    {
      b.b("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid timeStamp");
      return false;
    }
    if ((packageValue == null) || (packageValue.length() == 0))
    {
      b.b("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid packageValue");
      return false;
    }
    if ((sign == null) || (sign.length() == 0))
    {
      b.b("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid sign");
      return false;
    }
    if ((extData != null) && (extData.length() > 1024))
    {
      b.b("MicroMsg.PaySdk.PayReq", "checkArgs fail, extData length too long");
      return false;
    }
    return true;
  }
  
  public void fromBundle(Bundle paramBundle)
  {
    super.fromBundle(paramBundle);
    appId = a.b(paramBundle, "_wxapi_payreq_appid");
    partnerId = a.b(paramBundle, "_wxapi_payreq_partnerid");
    prepayId = a.b(paramBundle, "_wxapi_payreq_prepayid");
    nonceStr = a.b(paramBundle, "_wxapi_payreq_noncestr");
    timeStamp = a.b(paramBundle, "_wxapi_payreq_timestamp");
    packageValue = a.b(paramBundle, "_wxapi_payreq_packagevalue");
    sign = a.b(paramBundle, "_wxapi_payreq_sign");
    extData = a.b(paramBundle, "_wxapi_payreq_extdata");
    signType = a.b(paramBundle, "_wxapi_payreq_sign_type");
    options = new Options();
    options.fromBundle(paramBundle);
  }
  
  public int getType()
  {
    return 5;
  }
  
  public void toBundle(Bundle paramBundle)
  {
    super.toBundle(paramBundle);
    paramBundle.putString("_wxapi_payreq_appid", appId);
    paramBundle.putString("_wxapi_payreq_partnerid", partnerId);
    paramBundle.putString("_wxapi_payreq_prepayid", prepayId);
    paramBundle.putString("_wxapi_payreq_noncestr", nonceStr);
    paramBundle.putString("_wxapi_payreq_timestamp", timeStamp);
    paramBundle.putString("_wxapi_payreq_packagevalue", packageValue);
    paramBundle.putString("_wxapi_payreq_sign", sign);
    paramBundle.putString("_wxapi_payreq_extdata", extData);
    paramBundle.putString("_wxapi_payreq_sign_type", signType);
    if (options != null) {
      options.toBundle(paramBundle);
    }
  }
  
  public static class Options
  {
    public static final int INVALID_FLAGS = -1;
    public String callbackClassName;
    public int callbackFlags = -1;
    
    public Options() {}
    
    public void fromBundle(Bundle paramBundle)
    {
      callbackClassName = a.b(paramBundle, "_wxapi_payoptions_callback_classname");
      callbackFlags = a.a(paramBundle, "_wxapi_payoptions_callback_flags");
    }
    
    public void toBundle(Bundle paramBundle)
    {
      paramBundle.putString("_wxapi_payoptions_callback_classname", callbackClassName);
      paramBundle.putInt("_wxapi_payoptions_callback_flags", callbackFlags);
    }
  }
}
