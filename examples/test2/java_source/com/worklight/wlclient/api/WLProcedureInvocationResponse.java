package com.worklight.wlclient.api;

import com.bangcle.andjni.JniLib;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
public class WLProcedureInvocationResponse
  extends WLProcedureInvocationResult
{
  static
  {
    JniLib.a(WLProcedureInvocationResponse.class, 1237);
  }
  
  @Deprecated
  public WLProcedureInvocationResponse(WLResponse paramWLResponse)
  {
    super(paramWLResponse);
  }
  
  @Deprecated
  public native JSONObject getJSONResult()
    throws JSONException;
}
