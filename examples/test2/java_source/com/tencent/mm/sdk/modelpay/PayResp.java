package com.tencent.mm.sdk.modelpay;

import android.os.Bundle;
import com.tencent.mm.sdk.modelbase.BaseResp;

public class PayResp
  extends BaseResp
{
  public String extData;
  public String prepayId;
  public String returnKey;
  
  public PayResp() {}
  
  public PayResp(Bundle paramBundle)
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
    prepayId = paramBundle.getString("_wxapi_payresp_prepayid");
    returnKey = paramBundle.getString("_wxapi_payresp_returnkey");
    extData = paramBundle.getString("_wxapi_payresp_extdata");
  }
  
  public int getType()
  {
    return 5;
  }
  
  public void toBundle(Bundle paramBundle)
  {
    super.toBundle(paramBundle);
    paramBundle.putString("_wxapi_payresp_prepayid", prepayId);
    paramBundle.putString("_wxapi_payresp_returnkey", returnKey);
    paramBundle.putString("_wxapi_payresp_extdata", extData);
  }
}
