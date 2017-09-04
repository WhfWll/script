package com.MobileTicket;

import com.bangcle.andjni.JniLib;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

public class PushMsgPlugin
  extends CordovaPlugin
{
  private static final String DEC_ACTION = "decrypt";
  private static final String ENC_ACTION = "encrypt";
  
  static
  {
    JniLib.a(PushMsgPlugin.class, 15);
  }
  
  public PushMsgPlugin() {}
  
  public native boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException;
}
