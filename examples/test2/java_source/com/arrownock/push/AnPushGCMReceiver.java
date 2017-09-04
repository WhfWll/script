package com.arrownock.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.bangcle.andjni.JniLib;

public class AnPushGCMReceiver
  extends BroadcastReceiver
{
  public static final String MSG_ARRIVAL = PushService.ACTION_MSG_ARRIVAL;
  
  static
  {
    JniLib.a(AnPushGCMReceiver.class, 214);
  }
  
  public AnPushGCMReceiver() {}
  
  public native void onReceive(Context paramContext, Intent paramIntent);
}
