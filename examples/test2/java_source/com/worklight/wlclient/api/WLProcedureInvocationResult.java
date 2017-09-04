package com.worklight.wlclient.api;

import com.bangcle.andjni.JniLib;
import org.json.JSONException;
import org.json.JSONObject;

public class WLProcedureInvocationResult
  extends WLResponse
{
  private static final String JSON_KEY_IS_SUCCESSFUL = "isSuccessful";
  private JSONObject jsonResult;
  
  static
  {
    JniLib.a(WLProcedureInvocationResult.class, 1236);
  }
  
  WLProcedureInvocationResult(WLResponse paramWLResponse)
  {
    super(paramWLResponse);
  }
  
  public native JSONObject getResult()
    throws JSONException;
  
  public native boolean isSuccessful();
  
  public native String toString();
}
