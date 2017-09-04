package com.alipay.sdk.util;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.bangcle.andjni.JniLib;

final class i
  implements ServiceConnection
{
  static
  {
    JniLib.a(i.class, 179);
  }
  
  i(h paramH) {}
  
  public final native void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder);
  
  public final native void onServiceDisconnected(ComponentName paramComponentName);
}
