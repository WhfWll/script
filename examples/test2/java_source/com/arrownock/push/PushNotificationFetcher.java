package com.arrownock.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.bangcle.andjni.JniLib;
import eg;

public class PushNotificationFetcher
  extends BroadcastReceiver
{
  static
  {
    JniLib.a(PushNotificationFetcher.class, 217);
  }
  
  public PushNotificationFetcher() {}
  
  private static native void b(String paramString, Context paramContext, int paramInt, eg paramEg);
  
  public native void onReceive(Context paramContext, Intent paramIntent);
}
