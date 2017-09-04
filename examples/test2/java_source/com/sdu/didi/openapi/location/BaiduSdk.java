package com.sdu.didi.openapi.location;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class BaiduSdk
  extends SdkHub
{
  private Context context;
  private Object listenerObject;
  private Object manageObject;
  
  public BaiduSdk(Context paramContext)
  {
    Log.e("LocationSDK", "BAIDU");
    context = paramContext;
  }
  
  protected Location parseLocation(Object paramObject)
  {
    Location localLocation = new Location();
    try
    {
      Class localClass = Class.forName("com.baidu.location.BDLocation");
      int i = ((Integer)localClass.getMethod("getLocType", new Class[0]).invoke(paramObject, new Object[0])).intValue();
      if ((i == 61) || (i == 161))
      {
        double d1 = ((Double)localClass.getMethod("getLatitude", new Class[0]).invoke(paramObject, new Object[0])).doubleValue();
        double d2 = ((Double)localClass.getMethod("getLongitude", new Class[0]).invoke(paramObject, new Object[0])).doubleValue();
        localLocation.setLat(d1 + "");
        localLocation.setLng(d2 + "");
        localLocation.setMapType("soso");
      }
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
      paramLooper = Class.forName("com.baidu.location.LocationClient");
      manageObject = paramLooper.getConstructor(new Class[] { Context.class }).newInstance(new Object[] { context.getApplicationContext() });
      Class localClass = Class.forName("com.baidu.location.LocationClientOption");
      Object localObject = localClass.getConstructor(new Class[0]).newInstance(new Object[0]);
      Method localMethod1 = localClass.getMethod("setScanSpan", new Class[] { Integer.TYPE });
      localClass.getMethod("setIgnoreKillProcess", new Class[] { Boolean.TYPE }).invoke(localObject, new Object[] { Boolean.valueOf(false) });
      Method localMethod2 = localClass.getMethod("setIsNeedAddress", new Class[] { Boolean.TYPE });
      Method localMethod3 = localClass.getMethod("setIsNeedLocationDescribe", new Class[] { Boolean.TYPE });
      Method localMethod4 = localClass.getMethod("setLocationNotify", new Class[] { Boolean.TYPE });
      localMethod2.invoke(localObject, new Object[] { Boolean.valueOf(true) });
      localMethod3.invoke(localObject, new Object[] { Boolean.valueOf(true) });
      localMethod4.invoke(localObject, new Object[] { Boolean.valueOf(true) });
      localMethod1.invoke(localObject, new Object[] { Integer.valueOf(2000) });
      paramLooper.getMethod("setLocOption", new Class[] { localClass }).invoke(manageObject, new Object[] { localObject });
      localClass = Class.forName("com.baidu.location.BDLocationListener");
      localObject = localClass.getClassLoader();
      paramLocationListener = new BaiduSdk.1(this, paramLocationListener);
      listenerObject = Proxy.newProxyInstance((ClassLoader)localObject, new Class[] { localClass }, paramLocationListener);
      paramLooper.getMethod("registerLocationListener", new Class[] { localClass }).invoke(manageObject, new Object[] { listenerObject });
      paramLooper.getMethod("start", new Class[0]).invoke(manageObject, new Object[0]);
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
      if ((manageObject != null) && (listenerObject != null))
      {
        Class localClass = Class.forName("com.baidu.location.BDLocationListener");
        manageObject.getClass().getMethod("unRegisterLocationListener", new Class[] { localClass }).invoke(manageObject, new Object[] { listenerObject });
        manageObject.getClass().getMethod("stop", new Class[0]).invoke(manageObject, new Object[0]);
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
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
    }
  }
}
