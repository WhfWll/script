package com.tencent.mm.sdk.modelbase;

import android.os.Bundle;

public abstract class BaseResp
{
  public int errCode;
  public String errStr;
  public String openId;
  public String transaction;
  
  public BaseResp() {}
  
  public abstract boolean checkArgs();
  
  public void fromBundle(Bundle paramBundle)
  {
    errCode = paramBundle.getInt("_wxapi_baseresp_errcode");
    errStr = paramBundle.getString("_wxapi_baseresp_errstr");
    transaction = paramBundle.getString("_wxapi_baseresp_transaction");
    openId = paramBundle.getString("_wxapi_baseresp_openId");
  }
  
  public abstract int getType();
  
  public void toBundle(Bundle paramBundle)
  {
    paramBundle.putInt("_wxapi_command_type", getType());
    paramBundle.putInt("_wxapi_baseresp_errcode", errCode);
    paramBundle.putString("_wxapi_baseresp_errstr", errStr);
    paramBundle.putString("_wxapi_baseresp_transaction", transaction);
    paramBundle.putString("_wxapi_baseresp_openId", openId);
  }
  
  public static abstract interface ErrCode
  {
    public static final int ERR_AUTH_DENIED = -4;
    public static final int ERR_BAN = -6;
    public static final int ERR_COMM = -1;
    public static final int ERR_OK = 0;
    public static final int ERR_SENT_FAILED = -3;
    public static final int ERR_UNSUPPORT = -5;
    public static final int ERR_USER_CANCEL = -2;
  }
}
