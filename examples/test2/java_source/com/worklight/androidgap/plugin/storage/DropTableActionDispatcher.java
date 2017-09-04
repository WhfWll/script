package com.worklight.androidgap.plugin.storage;

import com.bangcle.andjni.JniLib;
import org.apache.cordova.api.PluginResult;

public class DropTableActionDispatcher
  extends DatabaseActionDispatcher
{
  private static final String PARAM_OPTIONS = "options";
  
  static
  {
    JniLib.a(DropTableActionDispatcher.class, 1162);
  }
  
  protected DropTableActionDispatcher()
  {
    super("dropTable");
    addParameter("options", false, new BaseActionDispatcher.ParameterType[] { BaseActionDispatcher.ParameterType.OBJECT });
  }
  
  public native PluginResult dispatch(DatabaseActionDispatcher.Context paramContext)
    throws Throwable;
}
