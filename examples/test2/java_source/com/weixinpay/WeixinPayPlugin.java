package com.weixinpay;

import android.util.Log;
import com.MobileTicket.MyApplication;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;
import com.tencent.mm.sdk.modelpay.PayReq;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class WeixinPayPlugin
  extends CordovaPlugin
  implements IWXAPIEventHandler
{
  private IWXAPI api;
  private CallbackContext mCallbackContext;
  
  public WeixinPayPlugin() {}
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    if (paramString.equalsIgnoreCase("wxpay"))
    {
      Object localObject = paramJSONArray.getJSONObject(0);
      paramString = ((JSONObject)localObject).getString("prepayId");
      String str1 = ((JSONObject)localObject).getString("sign");
      String str2 = ((JSONObject)localObject).getString("nonceStr");
      String str3 = ((JSONObject)localObject).getString("appId");
      String str4 = ((JSONObject)localObject).getString("partnerId");
      localObject = ((JSONObject)localObject).getString("timestamp");
      api = WXAPIFactory.createWXAPI(MyApplication.getContext(), null);
      api.registerApp(str3);
      mCallbackContext = paramCallbackContext;
      Log.d("MobileTicket", "payWXstart,args=" + paramJSONArray.toString());
      gotoPay(paramString, str1, str2, str3, str4, (String)localObject);
    }
    return true;
  }
  
  public void gotoPay(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    PayReq localPayReq = new PayReq();
    appId = paramString4;
    partnerId = paramString5;
    prepayId = paramString1;
    packageValue = "Sign=WXPay";
    nonceStr = paramString3;
    timeStamp = paramString6;
    sign = paramString2;
    api.sendReq(localPayReq);
  }
  
  public void onReq(BaseReq paramBaseReq) {}
  
  public void onResp(BaseResp paramBaseResp)
  {
    Log.d("MobileTicket", "payWXfinish,errorcode=" + errCode);
    if (paramBaseResp.getType() == 5)
    {
      if (errCode == 0) {
        sendCmd("payOk");
      }
    }
    else {
      return;
    }
    if (errCode == -2)
    {
      sendCmd("payCancel");
      return;
    }
    sendCmd("payFail");
  }
  
  public void sendCmd(String paramString)
  {
    if (mCallbackContext != null)
    {
      paramString = new PluginResult(PluginResult.Status.OK, paramString);
      paramString.setKeepCallback(true);
      mCallbackContext.sendPluginResult(paramString);
    }
  }
}
