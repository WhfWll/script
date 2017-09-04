package com.arrownock.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.bangcle.andjni.JniLib;
import org.json.JSONObject;

public class PushBroadcastReceiver
  extends BroadcastReceiver
{
  public static final String LOG_TAG = PushBroadcastReceiver.class.getName();
  public static final String MSG_ARRIVAL = PushService.ACTION_MSG_ARRIVAL;
  
  static
  {
    JniLib.a(PushBroadcastReceiver.class, 189);
  }
  
  public PushBroadcastReceiver() {}
  
  public native void onReceive(Context paramContext, Intent paramIntent);
  
  public native void showNotification(Context paramContext, JSONObject paramJSONObject);
  
  public native void showNotification(Context paramContext, JSONObject paramJSONObject, int paramInt);
}
