package com.worklight.wlclient.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.bangcle.andjni.JniLib;
import com.worklight.androidgap.push.WLGCMIntentService;

public class GCMIntentService
  extends WLGCMIntentService
{
  private static boolean isAppForeground = true;
  private BroadcastReceiver resultReceiver = new BroadcastReceiver()
  {
    static
    {
      JniLib.a(1.class, 1255);
    }
    
    public native void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent);
  };
  
  static
  {
    JniLib.a(GCMIntentService.class, 1256);
  }
  
  public GCMIntentService()
  {
    setBroadcastReceiver(resultReceiver);
  }
  
  public static native boolean isAppForeground();
  
  public static native void setAppForeground(boolean paramBoolean);
  
  protected native String getNotificationTitle(Context paramContext);
  
  protected native String[] getSenderIds(Context paramContext);
  
  protected native void setResources();
}
