package com.google.android.gcm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.bangcle.andjni.JniLib;

public class GCMBroadcastReceiver
  extends BroadcastReceiver
{
  private static final String TAG = "GCMBroadcastReceiver";
  
  static
  {
    JniLib.a(GCMBroadcastReceiver.class, 306);
  }
  
  public GCMBroadcastReceiver() {}
  
  protected native String getGCMIntentServiceClassName(Context paramContext);
  
  public final native void onReceive(Context paramContext, Intent paramIntent);
}
