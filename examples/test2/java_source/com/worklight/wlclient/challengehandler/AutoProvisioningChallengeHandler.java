package com.worklight.wlclient.challengehandler;

import com.bangcle.andjni.JniLib;
import com.worklight.wlclient.api.challengehandler.BaseProvisioningChallengeHandler;
import org.json.JSONObject;

public class AutoProvisioningChallengeHandler
  extends BaseProvisioningChallengeHandler
{
  static
  {
    JniLib.a(AutoProvisioningChallengeHandler.class, 1252);
  }
  
  public AutoProvisioningChallengeHandler(String paramString)
  {
    super(paramString);
  }
  
  protected native JSONObject createJsonCsr(String paramString1, String paramString2, String paramString3);
  
  public native void handleChallenge(JSONObject paramJSONObject);
  
  public native void handleFailure(JSONObject paramJSONObject);
  
  public native void handleSuccess(JSONObject paramJSONObject);
}
