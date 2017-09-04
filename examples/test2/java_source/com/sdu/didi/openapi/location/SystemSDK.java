package com.sdu.didi.openapi.location;

import android.content.Context;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import java.util.Iterator;
import java.util.List;

public class SystemSDK
  extends SdkHub
{
  private Context context;
  private LocationListener locationListener;
  private LocationManager manager;
  
  public SystemSDK(Context paramContext)
  {
    Log.e("LocationSDK", "System");
    context = paramContext;
    manager = ((LocationManager)paramContext.getSystemService("location"));
  }
  
  protected Location parseLocation(Object paramObject)
  {
    paramObject = (android.location.Location)paramObject;
    Location localLocation = new Location();
    localLocation.setLat(paramObject.getLatitude() + "");
    localLocation.setLng(paramObject.getLongitude() + "");
    localLocation.setMapType("wgs84");
    return localLocation;
  }
  
  public void registListener(Looper paramLooper, LocationHelper.LocationListener paramLocationListener)
  {
    locationListener = new TListener(paramLocationListener);
    paramLooper = manager.getProviders(true).iterator();
    while (paramLooper.hasNext())
    {
      paramLocationListener = (String)paramLooper.next();
      if ((!paramLocationListener.equals("passive")) && (manager.isProviderEnabled(paramLocationListener))) {
        manager.requestLocationUpdates(paramLocationListener, 1000L, 10.0F, locationListener);
      }
    }
  }
  
  public void unRegistListener()
  {
    if ((manager != null) && (locationListener != null)) {
      manager.removeUpdates(locationListener);
    }
  }
  
  class TListener
    implements LocationListener
  {
    private LocationHelper.LocationListener locationListener;
    
    public TListener(LocationHelper.LocationListener paramLocationListener)
    {
      locationListener = paramLocationListener;
    }
    
    public void onLocationChanged(android.location.Location paramLocation)
    {
      if (locationListener != null) {
        locationListener.location(parseLocation(paramLocation));
      }
    }
    
    public void onProviderDisabled(String paramString) {}
    
    public void onProviderEnabled(String paramString) {}
    
    public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
  }
}
