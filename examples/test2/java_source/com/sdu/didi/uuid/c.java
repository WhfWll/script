package com.sdu.didi.uuid;

import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.GpsStatus.Listener;
import android.location.LocationManager;
import java.util.Iterator;
import java.util.List;

class c
  implements GpsStatus.Listener
{
  c(a paramA) {}
  
  public void onGpsStatusChanged(int paramInt)
  {
    switch (paramInt)
    {
    case 1: 
    case 2: 
    case 3: 
    default: 
      return;
    }
    ??? = a.e(a).getGpsStatus(null);
    Iterator localIterator = ((GpsStatus)???).getSatellites().iterator();
    int i = ((GpsStatus)???).getMaxSatellites();
    for (;;)
    {
      synchronized (a.f(a))
      {
        a.g(a).clear();
        paramInt = 0;
        if ((localIterator.hasNext()) && (paramInt < i))
        {
          GpsSatellite localGpsSatellite = (GpsSatellite)localIterator.next();
          if (localGpsSatellite.usedInFix()) {
            a.g(a).add(localGpsSatellite);
          }
        }
        else
        {
          return;
        }
      }
      paramInt += 1;
    }
  }
}
