package com.arrownock.push;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import com.xiaomi.mipush.sdk.MiPushCommandMessage;
import com.xiaomi.mipush.sdk.MiPushMessage;
import com.xiaomi.mipush.sdk.PushMessageReceiver;

public class MiPushReceiver
  extends PushMessageReceiver
{
  public static final String LOG_TAG = MiPushReceiver.class.getName();
  public static final String MSG_ARRIVAL = PushService.ACTION_MSG_ARRIVAL;
  static final String PENDING_PUSH_NOTIFICATIONS = "com.arrownock.push.PENDING_PUSH_NOTIFICATIONS";
  static final String PENDING_PUSH_STORAGE = "com.arrownock.push.PENDING_PUSH_STORAGE";
  
  static
  {
    JniLib.a(MiPushReceiver.class, 215);
  }
  
  public MiPushReceiver() {}
  
  public native void onCommandResult(Context paramContext, MiPushCommandMessage paramMiPushCommandMessage);
  
  public native void onReceiveMessage(Context paramContext, MiPushMessage paramMiPushMessage);
}
