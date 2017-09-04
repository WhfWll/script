package com.worklight.androidgap.plugin;

import android.content.Intent;
import com.bangcle.andjni.JniLib;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

public class NativePage
  extends CordovaPlugin
{
  public static final String ACTION_SHOW = "show";
  public static int NATIVE_ACTIVITY_REQ_CODE = 54681;
  
  static
  {
    JniLib.a(NativePage.class, 1121);
  }
  
  public NativePage() {}
  
  private native Intent createIntentFromJSONData(String paramString)
    throws JSONException;
  
  private native void show(JSONArray paramJSONArray)
    throws Exception;
  
  public native boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException;
}