package com.sdu.didi.openapi.location;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class SosoSdk
  extends SdkHub
{
  private Context context;
  private Object soso;
  private Class sosoManage;
  private Object sosoObject;
  
  public SosoSdk(Context paramContext)
  {
    Log.e("LocationSDK", "SOSO");
    context = paramContext;
  }
  
  protected Location parseLocation(Object paramObject)
  {
    Location localLocation = new Location();
    try
    {
      Class localClass = Class.forName("com.tencent.map.geolocation.TencentLocation");
      double d1 = ((Double)localClass.getMethod("getLatitude", new Class[0]).invoke(paramObject, new Object[0])).doubleValue();
      double d2 = ((Double)localClass.getMethod("getLongitude", new Class[0]).invoke(paramObject, new Object[0])).doubleValue();
      localLocation.setLat(d1 + "");
      localLocation.setLng(d2 + "");
      localLocation.setMapType("soso");
      return localLocation;
    }
    catch (ClassNotFoundException paramObject)
    {
      paramObject.printStackTrace();
      return localLocation;
    }
    catch (NoSuchMethodException paramObject)
    {
      paramObject.printStackTrace();
      return localLocation;
    }
    catch (InvocationTargetException paramObject)
    {
      paramObject.printStackTrace();
      return localLocation;
    }
    catch (IllegalAccessException paramObject)
    {
      paramObject.printStackTrace();
    }
    return localLocation;
  }
  
  public void registListener(Looper paramLooper, LocationHelper.LocationListener paramLocationListener)
  {
    try
    {
      sosoManage = Class.forName("com.tencent.map.geolocation.TencentLocationManager");
      sosoObject = sosoManage.getMethod("getInstance", new Class[] { Context.class }).invoke(sosoManage, new Object[] { context });
      Class localClass = Class.forName("com.tencent.map.geolocation.TencentLocationListener");
      Object localObject = localClass.getClassLoader();
      paramLocationListener = new SosoSdk.1(this, paramLocationListener);
      soso = Proxy.newProxyInstance((ClassLoader)localObject, new Class[] { localClass }, paramLocationListener);
      paramLocationListener = Class.forName("com.tencent.map.geolocation.TencentLocationRequest");
      localObject = paramLocationListener.getMethod("create", new Class[0]).invoke(paramLocationListener, new Object[0]);
      paramLocationListener.getMethod("setInterval", new Class[] { Long.TYPE }).invoke(localObject, new Object[] { Long.valueOf(2000L) });
      ((Integer)sosoManage.getMethod("requestLocationUpdates", new Class[] { paramLocationListener, localClass, Looper.class }).invoke(sosoObject, new Object[] { localObject, soso, paramLooper })).intValue();
      return;
    }
    catch (Exception paramLooper)
    {
      paramLooper.printStackTrace();
    }
  }
  
  public void unRegistListener()
  {
    try
    {
      Class localClass = Class.forName("com.tencent.map.geolocation.TencentLocationListener");
      if ((sosoObject != null) && (soso != null)) {
        sosoObject.getClass().getMethod("removeUpdates", new Class[] { localClass }).invoke(sosoObject, new Object[] { soso });
      }
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localNoSuchMethodException.printStackTrace();
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      localInvocationTargetException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
    }
  }
}
