package com.worklight.wlclient.challengehandler;

import com.bangcle.andjni.JniLib;
import com.worklight.wlclient.api.challengehandler.BaseDeviceAuthChallengeHandler;
import org.json.JSONException;
import org.json.JSONObject;

public class NoProvisioningChallengeHandler
  extends BaseDeviceAuthChallengeHandler
{
  static
  {
    JniLib.a(NoProvisioningChallengeHandler.class, 1253);
  }
  
  public NoProvisioningChallengeHandler(String paramString)
  {
    super(paramString);
  }
  
  public native void handleChallenge(JSONObject paramJSONObject);
  
  public native void handleFailure(JSONObject paramJSONObject);
  
  public native void handleSuccess(JSONObject paramJSONObject);
  
  protected native void onDeviceAuthDataReady(JSONObject paramJSONObject)
    throws JSONException;
}
