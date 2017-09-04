package com.worklight.wlclient.api;

import com.bangcle.andjni.JniLib;
import java.util.List;
import org.apache.http.HttpResponse;
import org.json.JSONException;
import org.json.JSONObject;

public final class WLProcedureInvocationFailResponse
  extends WLFailResponse
{
  private static final String JSON_KEY_ERROR_MESSAGES = "errors";
  private JSONObject jsonResult;
  
  static
  {
    JniLib.a(WLProcedureInvocationFailResponse.class, 1235);
  }
  
  WLProcedureInvocationFailResponse(WLFailResponse paramWLFailResponse)
  {
    super(paramWLFailResponse);
    setErrorCode(paramWLFailResponse.getErrorCode());
    setErrorMsg(paramWLFailResponse.getErrorMsg());
  }
  
  WLProcedureInvocationFailResponse(WLResponse paramWLResponse)
  {
    super(paramWLResponse);
  }
  
  WLProcedureInvocationFailResponse(HttpResponse paramHttpResponse)
  {
    super(paramHttpResponse);
  }
  
  @Deprecated
  public native JSONObject getJSONResult()
    throws JSONException;
  
  public native List<String> getProcedureInvocationErrors();
  
  public native JSONObject getResult()
    throws JSONException;
}
