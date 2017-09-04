package com.sdu.didi.openapi.location;

import android.os.Looper;

public abstract class SdkHub
{
  public SdkHub() {}
  
  protected abstract Location parseLocation(Object paramObject);
  
  public abstract void registListener(Looper paramLooper, LocationHelper.LocationListener paramLocationListener);
  
  public abstract void unRegistListener();
}
