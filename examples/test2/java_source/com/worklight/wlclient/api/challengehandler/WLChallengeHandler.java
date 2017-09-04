package com.worklight.wlclient.api.challengehandler;

import com.worklight.wlclient.WLRequest;
import org.json.JSONObject;

public abstract class WLChallengeHandler
  extends BaseChallengeHandler<JSONObject>
{
  public WLChallengeHandler(String paramString)
  {
    super(paramString);
  }
  
  public abstract void handleFailure(JSONObject paramJSONObject);
  
  public abstract void handleSuccess(JSONObject paramJSONObject);
  
  public void submitChallengeAnswer(Object paramObject)
  {
    if (paramObject == null) {
      activeRequest.removeExpectedAnswer(getRealm());
    }
    for (;;)
    {
      activeRequest = null;
      return;
      activeRequest.submitAnswer(getRealm(), paramObject);
    }
  }
}
