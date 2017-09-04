package com.worklight.androidgap.plugin.storage;

import com.bangcle.andjni.JniLib;
import com.worklight.androidgap.jsonstore.util.JsonstoreUtil;
import com.worklight.androidgap.jsonstore.util.Logger;
import com.worklight.androidgap.jsonstore.util.jackson.JsonOrgModule;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.PluginResult;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class BaseActionDispatcher
  implements ActionDispatcher
{
  protected static final int RC_FALSE = 0;
  protected static final int RC_OK = 0;
  protected static final int RC_TRUE = 1;
  protected Logger logger = JsonstoreUtil.getCoreLogger();
  private String name;
  private LinkedList<Parameter> parameters;
  
  public BaseActionDispatcher(String paramString)
  {
    name = paramString;
    parameters = new LinkedList();
  }
  
  private void collectParameters(Context paramContext, JSONArray paramJSONArray)
    throws Throwable
  {
    int i = 0;
    Iterator localIterator = parameters.iterator();
    while (localIterator.hasNext())
    {
      Parameter localParameter = (Parameter)localIterator.next();
      int m = 0;
      ParameterType[] arrayOfParameterType = localParameter.getTypes();
      int n = arrayOfParameterType.length;
      int j = 0;
      for (;;)
      {
        int k = m;
        if (j < n)
        {
          Object localObject = convertParameter(paramJSONArray, i, arrayOfParameterType[j]);
          if (localObject != null)
          {
            k = 1;
            paramContext.addParameter(localParameter.getName(), localObject);
          }
        }
        else
        {
          if ((!localParameter.isRequired()) || (k != 0)) {
            break;
          }
          throw new Throwable("invalid type for parameter \"" + localParameter.getName() + "\" in action dispatcher \"" + getName() + "\"");
        }
        j += 1;
      }
      i += 1;
    }
  }
  
  private Object convertParameter(JSONArray paramJSONArray, int paramInt, ParameterType paramParameterType)
    throws Throwable
  {
    try
    {
      switch (1.$SwitchMap$com$worklight$androidgap$plugin$storage$BaseActionDispatcher$ParameterType[paramParameterType.ordinal()])
      {
      case 1: 
        return JsonOrgModule.deserializeJSONArray(paramJSONArray.getString(paramInt));
      }
    }
    catch (JSONException paramJSONArray)
    {
      return null;
    }
    return Boolean.valueOf(paramJSONArray.getBoolean(paramInt));
    return Double.valueOf(paramJSONArray.getDouble(paramInt));
    return Integer.valueOf(paramJSONArray.getInt(paramInt));
    return Long.valueOf(paramJSONArray.getLong(paramInt));
    return JsonOrgModule.deserializeJSONObject(paramJSONArray.getString(paramInt));
    paramJSONArray = paramJSONArray.getString(paramInt);
    return paramJSONArray;
    return null;
  }
  
  protected void addParameter(String paramString, boolean paramBoolean1, boolean paramBoolean2, ParameterType... paramVarArgs)
  {
    parameters.add(new Parameter(paramString, paramBoolean1, paramBoolean2, paramVarArgs, null));
  }
  
  protected void addParameter(String paramString, boolean paramBoolean, ParameterType... paramVarArgs)
  {
    parameters.add(new Parameter(paramString, paramBoolean, true, paramVarArgs, null));
  }
  
  public abstract PluginResult dispatch(Context paramContext)
    throws Throwable;
  
  public PluginResult dispatch(CordovaInterface paramCordovaInterface, JSONArray paramJSONArray)
    throws Throwable
  {
    paramCordovaInterface = new Context(paramCordovaInterface);
    collectParameters(paramCordovaInterface, paramJSONArray);
    if (logger.isLoggable(3))
    {
      logger.logDebug("invoking action dispatcher \"" + name + "\" with parameters:");
      paramJSONArray = parameters.iterator();
      while (paramJSONArray.hasNext())
      {
        Parameter localParameter = (Parameter)paramJSONArray.next();
        String str = localParameter.getName();
        if (localParameter.isLoggable()) {
          logger.logDebug("   " + str + "=" + paramCordovaInterface.getUntypedParameter(str));
        } else {
          logger.logDebug("   " + str + "=[value not logged]");
        }
      }
    }
    return dispatch(paramCordovaInterface);
  }
  
  public String getName()
  {
    return name;
  }
  
  public static class Context
  {
    private CordovaInterface cordovaContext;
    private HashMap<String, Object> parameters;
    
    static
    {
      JniLib.a(Context.class, 1152);
    }
    
    protected Context(CordovaInterface paramCordovaInterface)
    {
      cordovaContext = paramCordovaInterface;
      parameters = new HashMap();
    }
    
    private native void addParameter(String paramString, Object paramObject);
    
    public native JSONArray getArrayParameter(String paramString);
    
    public native Boolean getBooleanParameter(String paramString);
    
    public native CordovaInterface getCordovaContext();
    
    public native float getFloatParameter(String paramString);
    
    public native int getIntParameter(String paramString);
    
    public native JSONObject getObjectParameter(String paramString);
    
    public native String getStringParameter(String paramString);
    
    public native Object getUntypedParameter(String paramString);
  }
  
  private class Parameter
  {
    private boolean loggable;
    private String name;
    private boolean required;
    private BaseActionDispatcher.ParameterType[] types;
    
    static
    {
      JniLib.a(Parameter.class, 1153);
    }
    
    private Parameter(String paramString, boolean paramBoolean1, boolean paramBoolean2, BaseActionDispatcher.ParameterType[] paramArrayOfParameterType)
    {
      name = paramString;
      required = paramBoolean1;
      loggable = paramBoolean2;
      types = paramArrayOfParameterType;
    }
    
    public native String getName();
    
    public native BaseActionDispatcher.ParameterType[] getTypes();
    
    public native boolean isLoggable();
    
    public native boolean isRequired();
  }
  
  public static enum ParameterType
  {
    ARRAY,  BOOLEAN,  DOUBLE,  INTEGER,  LONG,  OBJECT,  STRING;
    
    private ParameterType() {}
  }
}
