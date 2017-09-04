package com.worklight.androidgap.plugin.storage;

import com.bangcle.andjni.JniLib;
import org.apache.cordova.api.PluginResult;

public class DestroyDBFileAndKeychainActionDispatcher
  extends BaseActionDispatcher
{
  private static final String PARAM_OPTIONS = "options";
  
  static
  {
    JniLib.a(DestroyDBFileAndKeychainActionDispatcher.class, 1158);
  }
  
  protected DestroyDBFileAndKeychainActionDispatcher()
  {
    super("destroyDbFileAndKeychain");
    addParameter("options", false, new BaseActionDispatcher.ParameterType[] { BaseActionDispatcher.ParameterType.OBJECT });
  }
  
  public native PluginResult dispatch(BaseActionDispatcher.Context paramContext)
    throws Throwable;
}
