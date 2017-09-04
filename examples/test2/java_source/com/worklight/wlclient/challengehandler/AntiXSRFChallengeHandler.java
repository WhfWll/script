package com.worklight.wlclient.challengehandler;

import com.bangcle.andjni.JniLib;
import com.worklight.wlclient.api.challengehandler.WLChallengeHandler;
import org.json.JSONObject;

public class AntiXSRFChallengeHandler
  extends WLChallengeHandler
{
  private static final String PROTOCOL_ERROR_MESSAGE = "Application will exit because wrong JSON arrived when processing it from AntiXSRFChallengeHandler with ";
  
  static
  {
    JniLib.a(AntiXSRFChallengeHandler.class, 1250);
  }
  
  public AntiXSRFChallengeHandler(String paramString)
  {
    super(paramString);
  }
  
  public native void handleChallenge(JSONObject paramJSONObject);
  
  public native void handleFailure(JSONObject paramJSONObject);
  
  public native void handleSuccess(JSONObject paramJSONObject);
}
