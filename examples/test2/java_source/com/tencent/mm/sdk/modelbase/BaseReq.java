package com.tencent.mm.sdk.modelbase;

import android.os.Bundle;
import com.tencent.mm.sdk.b.a;

public abstract class BaseReq
{
  public String openId;
  public String transaction;
  
  public BaseReq() {}
  
  public abstract boolean checkArgs();
  
  public void fromBundle(Bundle paramBundle)
  {
    transaction = a.b(paramBundle, "_wxapi_basereq_transaction");
    openId = a.b(paramBundle, "_wxapi_basereq_openid");
  }
  
  public abstract int getType();
  
  public void toBundle(Bundle paramBundle)
  {
    paramBundle.putInt("_wxapi_command_type", getType());
    paramBundle.putString("_wxapi_basereq_transaction", transaction);
    paramBundle.putString("_wxapi_basereq_openid", openId);
  }
}
