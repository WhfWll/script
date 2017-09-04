package com.sdu.didi.openapi.location;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

public class LocationHelper
{
  private static LocationHelper instance;
  private static HandlerThread thread;
  private Context activity;
  private Handler handler;
  private Location lastLocation = new Location();
  private volatile int locationCount = 0;
  private TLocationListener locationListener;
  private final byte[] lock = new byte[1];
  private LocationManage manage;
  private boolean shouldFire = true;
  
  private LocationHelper(Context paramContext)
  {
    activity = paramContext.getApplicationContext();
    manage = new LocationManage();
  }
  
  public static LocationHelper getInstance(Context paramContext)
  {
    try
    {
      if (instance == null) {
        instance = new LocationHelper(paramContext);
      }
      paramContext = instance;
      return paramContext;
    }
    finally {}
  }
  
  private void location()
  {
    if (locationListener == null)
    {
      locationListener = new TLocationListener();
      manage.registListener(thread.getLooper(), new TLocationListener());
    }
  }
  
  private void onDestroy()
  {
    if (manage != null) {
      manage.unRegistListener();
    }
    locationListener = null;
    lastLocation.reset();
    if (Build.VERSION.SDK_INT >= 18) {
      thread.getLooper().quitSafely();
    }
    for (;;)
    {
      thread = null;
      locationCount = 0;
      return;
      thread.getLooper().quit();
    }
  }
  
  public Location getLocation()
  {
    locationCount = 0;
    synchronized (lock)
    {
      if (thread == null)
      {
        thread = new HandlerThread(getClass().getName());
        thread.start();
        handler = new Handler(thread.getLooper());
        handler.post(new LocationHelper.1(this));
      }
      for (;;)
      {
        if (!lastLocation.isAvail())
        {
          int i = locationCount;
          if (i <= 3) {
            try
            {
              shouldFire = true;
              lock.wait();
            }
            catch (InterruptedException localInterruptedException)
            {
              localInterruptedException.printStackTrace();
            }
          }
        }
      }
    }
    Location localLocation = lastLocation;
    return localLocation;
  }
  
  public static abstract interface LocationListener
  {
    public abstract void location(Location paramLocation);
  }
  
  class TLocationListener
    implements LocationHelper.LocationListener
  {
    TLocationListener() {}
    
    public void location(Location arg1)
    {
      LocationHelper.access$308(LocationHelper.this);
      if (???.isAvail())
      {
        LocationHelper.access$402(LocationHelper.this, ???);
        if (!shouldFire) {}
      }
      synchronized (lock)
      {
        lock.notifyAll();
        LocationHelper.access$502(LocationHelper.this, false);
        if ((lastLocation.isAvail()) || (locationCount < 3) || (!shouldFire)) {}
      }
      synchronized (lock)
      {
        lock.notifyAll();
        LocationHelper.access$502(LocationHelper.this, false);
        if (locationCount >= 8) {
          LocationHelper.this.onDestroy();
        }
        return;
        localObject1 = finally;
        throw localObject1;
      }
    }
  }
}
