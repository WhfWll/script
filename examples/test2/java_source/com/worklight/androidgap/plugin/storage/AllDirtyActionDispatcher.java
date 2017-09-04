package com.worklight.androidgap.plugin.storage;

import com.bangcle.andjni.JniLib;
import com.worklight.androidgap.jsonstore.database.DatabaseSchema;
import com.worklight.androidgap.jsonstore.database.ReadableDatabase;
import java.util.List;
import org.apache.cordova.api.PluginResult;
import org.json.JSONObject;

public class AllDirtyActionDispatcher
  extends DatabaseActionDispatcher
{
  private static final String PARAM_SELECTED_DOCS = "selectedDocs";
  private static final String SQL_ALL_DIRTY = "SELECT {0}, {1}, {2}, {3} FROM {4} WHERE {3} > 0 ORDER BY {3}";
  
  static
  {
    JniLib.a(AllDirtyActionDispatcher.class, 1151);
  }
  
  protected AllDirtyActionDispatcher()
  {
    super("allDirty");
    addParameter("selectedDocs", false, new BaseActionDispatcher.ParameterType[] { BaseActionDispatcher.ParameterType.ARRAY, BaseActionDispatcher.ParameterType.OBJECT });
  }
  
  private native Object getSelectedDocs(DatabaseActionDispatcher.Context paramContext);
  
  public native PluginResult dispatch(DatabaseActionDispatcher.Context paramContext)
    throws Throwable;
  
  private class AllDirtyAction
    implements DatabaseActionDispatcher.ReadableDatabaseAction<List<JSONObject>>
  {
    private DatabaseActionDispatcher.Context context;
    
    static
    {
      JniLib.a(AllDirtyAction.class, 1150);
    }
    
    private AllDirtyAction(DatabaseActionDispatcher.Context paramContext)
    {
      context = paramContext;
    }
    
    public native List<JSONObject> performAction(DatabaseSchema paramDatabaseSchema, ReadableDatabase paramReadableDatabase)
      throws Throwable;
  }
}
