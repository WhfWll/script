package com.worklight.androidgap.plugin.storage;

import com.bangcle.andjni.JniLib;
import com.worklight.androidgap.jsonstore.database.DatabaseSchema;
import com.worklight.androidgap.jsonstore.database.WritableDatabase;
import java.util.LinkedList;
import org.apache.cordova.api.PluginResult;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ReplaceActionDispatcher
  extends DatabaseActionDispatcher
{
  private static final String OPTION_IS_REFRESH = "isRefresh";
  private static final String PARAM_OPTIONS = "options";
  private static final String PARAM_TO_UPDATE = "toUpdate";
  
  static
  {
    JniLib.a(ReplaceActionDispatcher.class, 1176);
  }
  
  protected ReplaceActionDispatcher()
  {
    super("replace");
    addParameter("toUpdate", true, new BaseActionDispatcher.ParameterType[] { BaseActionDispatcher.ParameterType.ARRAY, BaseActionDispatcher.ParameterType.OBJECT });
    addParameter("options", false, new BaseActionDispatcher.ParameterType[] { BaseActionDispatcher.ParameterType.OBJECT });
  }
  
  private native JSONObject getOptions(BaseActionDispatcher.Context paramContext);
  
  private native Object getToUpdate(DatabaseActionDispatcher.Context paramContext);
  
  public native PluginResult dispatch(DatabaseActionDispatcher.Context paramContext)
    throws Throwable;
  
  private class ReplaceAction
    implements DatabaseActionDispatcher.WritableDatabaseAction<Object>
  {
    private boolean isRefresh;
    private LinkedList<JSONObject> objs;
    
    static
    {
      JniLib.a(ReplaceAction.class, 1175);
    }
    
    private ReplaceAction(JSONArray paramJSONArray, boolean paramBoolean)
      throws JSONException
    {
      this(paramBoolean);
      int j = paramJSONArray.length();
      int i = 0;
      while (i < j)
      {
        objs.add(paramJSONArray.getJSONObject(i));
        i += 1;
      }
    }
    
    private ReplaceAction(JSONObject paramJSONObject, boolean paramBoolean)
    {
      this(paramBoolean);
      objs.add(paramJSONObject);
    }
    
    private ReplaceAction(boolean paramBoolean)
    {
      isRefresh = paramBoolean;
      objs = new LinkedList();
    }
    
    public native Object performAction(DatabaseSchema paramDatabaseSchema, WritableDatabase paramWritableDatabase)
      throws Throwable;
  }
}
