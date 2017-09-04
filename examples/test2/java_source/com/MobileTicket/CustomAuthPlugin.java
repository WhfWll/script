package com.MobileTicket;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

public class CustomAuthPlugin
  extends CordovaPlugin
{
  static
  {
    JniLib.a(CustomAuthPlugin.class, 2);
  }
  
  public CustomAuthPlugin() {}
  
  public native String a1(Context paramContext, String paramString);
  
  public native boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException;
}
