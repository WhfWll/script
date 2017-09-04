package com.arrownock.cordova.plugin;

import com.bangcle.andjni.JniLib;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

public class DeviceManagerCDVPlugin
  extends CordovaPlugin
{
  private static final String ACTION_SET_HOST = "setHost";
  
  static
  {
    JniLib.a(DeviceManagerCDVPlugin.class, 191);
  }
  
  public DeviceManagerCDVPlugin() {}
  
  public native boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException;
}
