package com.arrownock.social;

import org.json.JSONObject;

public abstract interface IAnSocialCallback
{
  public abstract void onFailure(JSONObject paramJSONObject);
  
  public abstract void onSuccess(JSONObject paramJSONObject);
}
