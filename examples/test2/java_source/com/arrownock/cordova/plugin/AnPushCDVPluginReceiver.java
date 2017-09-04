package com.arrownock.cordova.plugin;

import android.content.Context;
import com.arrownock.push.PushBroadcastReceiver;
import com.bangcle.andjni.JniLib;
import org.json.JSONObject;

public class AnPushCDVPluginReceiver
  extends PushBroadcastReceiver
{
  static
  {
    JniLib.a(AnPushCDVPluginReceiver.class, 190);
  }
  
  public AnPushCDVPluginReceiver() {}
  
  public native void showNotification(Context paramContext, JSONObject paramJSONObject, int paramInt);
}
