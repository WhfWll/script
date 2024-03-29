package org.apache.cordova;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.apache.cordova.api.CallbackContext;

public class CordovaLocationListener
  implements LocationListener
{
  public static int PERMISSION_DENIED = 1;
  public static int POSITION_UNAVAILABLE = 2;
  public static int TIMEOUT = 3;
  private String TAG = "[Cordova Location Listener]";
  private List<CallbackContext> callbacks = new ArrayList();
  protected LocationManager locationManager;
  private GeoBroker owner;
  protected boolean running = false;
  public HashMap<String, CallbackContext> watches = new HashMap();
  
  public CordovaLocationListener(LocationManager paramLocationManager, GeoBroker paramGeoBroker, String paramString)
  {
    locationManager = paramLocationManager;
    owner = paramGeoBroker;
    TAG = paramString;
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
    Iterator localIterator = callbacks.iterator();
    while (localIterator.hasNext())
    {
      CallbackContext localCallbackContext = (CallbackContext)localIterator.next();
      owner.win(paramLocation, localCallbackContext);
    }
    if (owner.isGlobalListener(this))
    {
      Log.d(TAG, "Stopping global listener");
      stop();
    }
    callbacks.clear();
    localIterator = watches.values().iterator();
    while (localIterator.hasNext()) {
      owner.win(paramLocation, (CallbackContext)localIterator.next());
    }
  }
  
  public void addCallback(CallbackContext paramCallbackContext)
  {
    callbacks.add(paramCallbackContext);
    if (size() == 1) {
      start();
    }
  }
  
  public void addWatch(String paramString, CallbackContext paramCallbackContext)
  {
    watches.put(paramString, paramCallbackContext);
    if (size() == 1) {
      start();
    }
  }
  
  public void clearWatch(String paramString)
  {
    if (watches.containsKey(paramString)) {
      watches.remove(paramString);
    }
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
    Iterator localIterator = callbacks.iterator();
    while (localIterator.hasNext())
    {
      CallbackContext localCallbackContext = (CallbackContext)localIterator.next();
      owner.fail(paramInt, paramString, localCallbackContext);
    }
    if (owner.isGlobalListener(this))
    {
      Log.d(TAG, "Stopping global listener");
      stop();
    }
    callbacks.clear();
    localIterator = watches.values().iterator();
    while (localIterator.hasNext()) {
      owner.fail(paramInt, paramString, (CallbackContext)localIterator.next());
    }
  }
  
  public void onLocationChanged(Location paramLocation)
  {
    Log.d(TAG, "The location has been updated!");
    win(paramLocation);
  }
  
  public void onProviderDisabled(String paramString)
  {
    Log.d(TAG, "Location provider '" + paramString + "' disabled.");
    fail(POSITION_UNAVAILABLE, "GPS provider disabled.");
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
        locationManager.requestLocationUpdates("network", 60000L, 10.0F, this);
      }
    }
    else {
      return;
    }
    fail(POSITION_UNAVAILABLE, "Network provider is not available.");
  }
}
