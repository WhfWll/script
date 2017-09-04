package com.sdu.didi.openapi.location;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class GaodeSdk
  extends SdkHub
{
  private Context context;
  private Object listenObject;
  private Object manageObject;
  
  public GaodeSdk(Context paramContext)
  {
    context = paramContext;
    Log.e("LocationSDK", "GAODE");
  }
  
  protected Location parseLocation(Object paramObject)
  {
    Location localLocation = new Location();
    try
    {
      Class localClass = paramObject.getClass();
      if (((Integer)localClass.getMethod("getErrorCode", new Class[0]).invoke(paramObject, new Object[0])).intValue() == 0)
      {
        double d1 = ((Double)localClass.getMethod("getLatitude", new Class[0]).invoke(paramObject, new Object[0])).doubleValue();
        double d2 = ((Double)localClass.getMethod("getLongitude", new Class[0]).invoke(paramObject, new Object[0])).doubleValue();
        localLocation.setLng(d2 + "");
        localLocation.setLat(d1 + "");
        localLocation.setMapType("soso");
      }
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
      paramLooper = Class.forName("com.amap.api.location.AMapLocationClient");
      manageObject = paramLooper.getConstructor(new Class[] { Context.class }).newInstance(new Object[] { context.getApplicationContext() });
      Class localClass = Class.forName("com.amap.api.location.AMapLocationClientOption");
      Object localObject = localClass.getConstructor(new Class[0]).newInstance(new Object[0]);
      localClass.getMethod("setInterval", new Class[] { Long.TYPE }).invoke(localObject, new Object[] { Long.valueOf(2000L) });
      paramLooper.getMethod("setLocationOption", new Class[] { localClass }).invoke(manageObject, new Object[] { localObject });
      localClass = Class.forName("com.amap.api.location.AMapLocationListener");
      localObject = paramLooper.getMethod("setLocationListener", new Class[] { localClass });
      ClassLoader localClassLoader = localClass.getClassLoader();
      paramLocationListener = new GaodeSdk.1(this, paramLocationListener);
      listenObject = Proxy.newProxyInstance(localClassLoader, new Class[] { localClass }, paramLocationListener);
      ((Method)localObject).invoke(manageObject, new Object[] { listenObject });
      paramLooper.getMethod("startLocation", new Class[0]).invoke(manageObject, new Object[0]);
      return;
    }
    catch (ClassNotFoundException paramLooper)
    {
      paramLooper.printStackTrace();
      return;
    }
    catch (NoSuchMethodException paramLooper)
    {
      paramLooper.printStackTrace();
      return;
    }
    catch (InvocationTargetException paramLooper)
    {
      paramLooper.printStackTrace();
      return;
    }
    catch (InstantiationException paramLooper)
    {
      paramLooper.printStackTrace();
      return;
    }
    catch (IllegalAccessException paramLooper)
    {
      paramLooper.printStackTrace();
    }
  }
  
  public void unRegistListener()
  {
    try
    {
      if ((manageObject != null) && (listenObject != null))
      {
        Class localClass = manageObject.getClass();
        localClass.getMethod("stopLocation", new Class[0]).invoke(manageObject, new Object[0]);
        localClass.getMethod("onDestroy", new Class[0]).invoke(manageObject, new Object[0]);
      }
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
