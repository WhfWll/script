package com.worklight.androidgap.plugin;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.bangcle.andjni.JniLib;
import org.apache.cordova.Notification;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.json.JSONArray;

public class WLCustomDialog
  extends Notification
{
  static
  {
    JniLib.a(WLCustomDialog.class, 1138);
  }
  
  public WLCustomDialog() {}
  
  public native void confirm(String paramString1, String paramString2, JSONArray paramJSONArray, CallbackContext paramCallbackContext);
}
