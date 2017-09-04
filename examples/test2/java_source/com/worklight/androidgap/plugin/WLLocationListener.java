package com.worklight.androidgap.plugin;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import org.apache.cordova.api.CallbackContext;

public abstract class WLLocationListener
  implements LocationListener
{
  public static int PERMISSION_DENIED = 1;
  public static int POSITION_UNAVAILABLE = 2;
  public static int TIMEOUT = 3;
  private String TAG = "[Worklight Location Listener]";
  protected HashMap<String, CallbackContext> callbacks = new HashMap();
  protected LocationManager locationManager;
  protected int maximumAge = 0;
  protected int minChangeDistance = 10;
  protected int minChangeTime = 60000;
  private WLGeolocationPlugin owner;
  protected String provider;
  protected boolean running = false;
  protected HashMap<String, CallbackContext> watches = new HashMap();
  
  public WLLocationListener(LocationManager paramLocationManager, WLGeolocationPlugin paramWLGeolocationPlugin, String paramString)
  {
    locationManager = paramLocationManager;
    owner = paramWLGeolocationPlugin;
    TAG = ("[WL " + paramString + " Listener]");
    provider = paramString;
  }
  
  private void stop()
  {
    if (running)
    {
      locationManager.removeUpdates(this);
      running = false;
    }
  }
  
  private void win(Location paramLocation)
  {
    long l = System.currentTimeMillis() - paramLocation.getTime();
    if (l > maximumAge) {
      Log.d(TAG, "Acquired location age: " + l + " milliseconds. More than maximumAge of " + maximumAge + " milliseconds. Ignoring.");
    }
    do
    {
      return;
      Iterator localIterator = callbacks.values().iterator();
      while (localIterator.hasNext()) {
        owner.win(paramLocation, (CallbackContext)localIterator.next(), false);
      }
      if ((owner.isGlobalListener(this)) && (watches.size() == 0))
      {
        Log.d(TAG, "Stopping global listener");
        stop();
      }
      callbacks.clear();
      localIterator = watches.values().iterator();
      while (localIterator.hasNext()) {
        owner.win(paramLocation, (CallbackContext)localIterator.next(), true);
      }
    } while (!watches.isEmpty());
    stop();
  }
  
  public void addCallback(String paramString, CallbackContext paramCallbackContext, int paramInt)
  {
    maximumAge = paramInt;
    callbacks.put(paramString, paramCallbackContext);
    if (size() == 1) {
      start();
    }
  }
  
  public void addWatch(String paramString, CallbackContext paramCallbackContext, int paramInt1, int paramInt2)
  {
    minChangeDistance = paramInt1;
    minChangeTime = paramInt2;
    watches.put(paramString, paramCallbackContext);
    stop();
    start();
  }
  
  public void clearWatch(String paramString)
  {
    watches.remove(paramString);
    if (size() == 0) {
      stop();
    }
  }
  
  public void destroy()
  {
    stop();
  }
  
  protected void fail(int paramInt, String paramString)
  {
    Iterator localIterator = callbacks.values().iterator();
    while (localIterator.hasNext()) {
      owner.fail(paramInt, paramString, (CallbackContext)localIterator.next(), false);
    }
    if ((owner.isGlobalListener(this)) && (watches.size() == 0))
    {
      Log.d(TAG, "Stopping global listener");
      stop();
    }
    callbacks.clear();
    localIterator = watches.values().iterator();
    while (localIterator.hasNext()) {
      owner.fail(paramInt, paramString, (CallbackContext)localIterator.next(), true);
    }
  }
  
  public Location getLastKnownLocation()
  {
    try
    {
      Location localLocation = locationManager.getLastKnownLocation(provider);
      return localLocation;
    }
    catch (SecurityException localSecurityException) {}
    return null;
  }
  
  public void onLocationChanged(Location paramLocation)
  {
    Log.d(TAG, "The location has been updated!");
    win(paramLocation);
  }
  
  public void onProviderDisabled(String paramString)
  {
    Log.d(TAG, "Location provider '" + paramString + "' disabled.");
    fail(POSITION_UNAVAILABLE, paramString + " provider disabled.");
  }
  
  public void onProviderEnabled(String paramString)
  {
    Log.d(TAG, "Location provider " + paramString + " has been enabled");
  }
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
    Log.d(TAG, "The status of the provider " + paramString + " has changed");
    if (paramInt == 0)
    {
      Log.d(TAG, paramString + " is OUT OF SERVICE");
      fail(POSITION_UNAVAILABLE, "Provider " + paramString + " is out of service.");
      return;
    }
    if (paramInt == 1)
    {
      Log.d(TAG, paramString + " is TEMPORARILY_UNAVAILABLE");
      return;
    }
    Log.d(TAG, paramString + " is AVAILABLE");
  }
  
  public void removeCallback(String paramString)
  {
    callbacks.remove(paramString);
    if (size() == 0) {
      stop();
    }
  }
  
  public int size()
  {
    return watches.size() + callbacks.size();
  }
  
  protected void start()
  {
    if (!running)
    {
      if (locationManager.getProvider("network") != null)
      {
        running = true;
        locationManager.requestLocationUpdates("network", minChangeTime, minChangeDistance, this);
      }
    }
    else {
      return;
    }
    fail(POSITION_UNAVAILABLE, "Network provider is not available.");
  }
}
