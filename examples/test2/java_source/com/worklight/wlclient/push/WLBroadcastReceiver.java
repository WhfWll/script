package com.worklight.wlclient.push;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import com.google.android.gcm.GCMBroadcastReceiver;

public class WLBroadcastReceiver
  extends GCMBroadcastReceiver
{
  private static final String INTENT_SERVICE = "com.worklight.wlclient.push.GCMIntentService";
  
  static
  {
    JniLib.a(WLBroadcastReceiver.class, 1257);
  }
  
  public WLBroadcastReceiver() {}
  
  protected native String getGCMIntentServiceClassName(Context paramContext);
}
