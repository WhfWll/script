package org.apache.cordova;

import android.location.LocationManager;

public class GPSListener
  extends CordovaLocationListener
{
  public GPSListener(LocationManager paramLocationManager, GeoBroker paramGeoBroker)
  {
    super(paramLocationManager, paramGeoBroker, "[Cordova GPSListener]");
  }
  
  protected void start()
  {
    if (!running)
    {
      if (locationManager.getProvider("gps") != null)
      {
        running = true;
        locationManager.requestLocationUpdates("gps", 60000L, 0.0F, this);
      }
    }
    else {
      return;
    }
    fail(CordovaLocationListener.POSITION_UNAVAILABLE, "GPS provider is not available.");
  }
}
