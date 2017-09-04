package com.worklight.androidgap.plugin.storage;

import com.bangcle.andjni.JniLib;
import org.apache.cordova.api.PluginResult;

public class IsKeyGenRequiredActionDispatcher
  extends BaseActionDispatcher
{
  private static final String PARAM_USERNAME = "username";
  
  static
  {
    JniLib.a(IsKeyGenRequiredActionDispatcher.class, 1168);
  }
  
  protected IsKeyGenRequiredActionDispatcher()
  {
    super("isKeyGenRequired");
    addParameter("username", true, true, new BaseActionDispatcher.ParameterType[] { BaseActionDispatcher.ParameterType.STRING });
  }
  
  private native String getUserName(BaseActionDispatcher.Context paramContext);
  
  public native PluginResult dispatch(BaseActionDispatcher.Context paramContext)
    throws Throwable;
}
