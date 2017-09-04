package com.worklight.androidgap.plugin;

import com.bangcle.andjni.JniLib;
import org.apache.cordova.NetworkManager;

public class WLNetworkManager
  extends NetworkManager
{
  static
  {
    JniLib.a(WLNetworkManager.class, 1142);
  }
  
  public WLNetworkManager() {}
  
  public native boolean isSynch(String paramString);
}
