package com.MobileTicket;

import com.bangcle.andjni.JniLib;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

public class CheckCodePlugin
  extends CordovaPlugin
{
  private static final String DECODE_ACTION = "decheckcode";
  private static final String GET_ACTION = "getcheckcode";
  
  static
  {
    JniLib.a(CheckCodePlugin.class, 0);
  }
  
  public CheckCodePlugin() {}
  
  public native boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException;
}
