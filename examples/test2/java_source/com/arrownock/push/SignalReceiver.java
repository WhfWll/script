package com.arrownock.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.bangcle.andjni.JniLib;

public class SignalReceiver
  extends BroadcastReceiver
{
  static
  {
    JniLib.a(SignalReceiver.class, 219);
  }
  
  public SignalReceiver() {}
  
  public native void onReceive(Context paramContext, Intent paramIntent);
}
