package com.worklight.androidgap.plugin.storage;

import com.bangcle.andjni.JniLib;
import com.worklight.androidgap.jsonstore.database.DatabaseSchema;
import com.worklight.androidgap.jsonstore.database.ReadableDatabase;
import org.apache.cordova.api.PluginResult;
import org.json.JSONArray;

public class FindByIdActionDispatcher
  extends DatabaseActionDispatcher
{
  private static final String PARAM_IDS = "ids";
  
  static
  {
    JniLib.a(FindByIdActionDispatcher.class, 1166);
  }
  
  protected FindByIdActionDispatcher()
  {
    super("findById");
    addParameter("ids", true, new BaseActionDispatcher.ParameterType[] { BaseActionDispatcher.ParameterType.ARRAY });
  }
  
  private native JSONArray getIds(DatabaseActionDispatcher.Context paramContext);
  
  public native PluginResult dispatch(DatabaseActionDispatcher.Context paramContext)
    throws Throwable;
  
  private class FindByIdAction
    implements DatabaseActionDispatcher.ReadableDatabaseAction<JSONArray>
  {
    private JSONArray ids;
    
    static
    {
      JniLib.a(FindByIdAction.class, 1165);
    }
    
    private FindByIdAction(JSONArray paramJSONArray)
    {
      ids = paramJSONArray;
    }
    
    public native JSONArray performAction(DatabaseSchema paramDatabaseSchema, ReadableDatabase paramReadableDatabase)
      throws Throwable;
  }
}