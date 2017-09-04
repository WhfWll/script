package com.worklight.androidgap.plugin;

import android.location.LocationManager;
import com.bangcle.andjni.JniLib;

public class WLGPSListener
  extends WLLocationListener
{
  static
  {
    JniLib.a(WLGPSListener.class, 1139);
  }
  
  public WLGPSListener(LocationManager paramLocationManager, WLGeolocationPlugin paramWLGeolocationPlugin)
  {
    super(paramLocationManager, paramWLGeolocationPlugin, "gps");
  }
  
  protected native void start();
}
