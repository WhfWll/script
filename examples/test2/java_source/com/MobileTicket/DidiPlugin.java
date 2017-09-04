package com.MobileTicket;

import com.bangcle.andjni.JniLib;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

public class DidiPlugin
  extends CordovaPlugin
{
  static
  {
    JniLib.a(DidiPlugin.class, 4);
  }
  
  public DidiPlugin() {}
  
  public native boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException;
}
