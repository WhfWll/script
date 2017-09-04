package cn.domob.android.i;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class e
{
  private static f a = new f(e.class.getSimpleName());
  
  public e() {}
  
  public static int a()
  {
    return a.a(a.a());
  }
  
  public static String a(Context paramContext)
  {
    a localA = a.a();
    paramContext = a.a(localA, paramContext);
    if (paramContext != null) {
      return a.a(localA, paramContext);
    }
    return null;
  }
  
  public static int b()
  {
    return a.b(a.a());
  }
  
  public static String[] b(Context paramContext)
  {
    int j = -1;
    a.a(c.class.getSimpleName(), "getLocationBasedService");
    String[] arrayOfString = new String[4];
    arrayOfString[0] = "-1";
    arrayOfString[1] = "-1";
    arrayOfString[2] = "-1";
    arrayOfString[3] = "-1";
    if ((!a.a(paramContext, "android.permission.ACCESS_COARSE_LOCATION")) && (!a.a(paramContext, "android.permission.ACCESS_FINE_LOCATION")))
    {
      a.d("No permission to access locationBaseInfo");
      return arrayOfString;
    }
    try
    {
      paramContext = (TelephonyManager)paramContext.getSystemService("phone");
      if (paramContext == null) {
        return arrayOfString;
      }
      a.a(c.class.getSimpleName(), "tManager is not null");
      a.a(c.class.getSimpleName(), "Network Operator: " + paramContext.getNetworkOperator());
      i = paramContext.getPhoneType();
      localObject = paramContext.getCellLocation();
      if (localObject == null) {
        break label193;
      }
      switch (i)
      {
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        Object localObject;
        a.a(paramContext);
        break;
        continue;
        int i = -1;
      }
    }
    a.b("无法获取基站信息");
    break label340;
    for (;;)
    {
      arrayOfString[0] = String.valueOf(j);
      arrayOfString[1] = String.valueOf(i);
      label193:
      if ((paramContext.getNetworkOperator() == null) || (paramContext.getNetworkOperator().length() < 5)) {
        return arrayOfString;
      }
      i = Integer.valueOf(paramContext.getNetworkOperator().substring(0, 3)).intValue();
      j = Integer.valueOf(paramContext.getNetworkOperator().substring(3, 5)).intValue();
      arrayOfString[2] = String.valueOf(i);
      arrayOfString[3] = String.valueOf(j);
      return arrayOfString;
      localObject = (GsmCellLocation)localObject;
      if (localObject == null) {
        break;
      }
      j = ((GsmCellLocation)localObject).getCid();
      i = ((GsmCellLocation)localObject).getLac();
      continue;
      localObject = (CdmaCellLocation)localObject;
      if (localObject == null) {
        break;
      }
      j = ((CdmaCellLocation)localObject).getBaseStationId();
      i = ((CdmaCellLocation)localObject).getNetworkId();
    }
    label340:
    return arrayOfString;
  }
  
  public static int c()
  {
    return a.c(a.a());
  }
  
  public static long d()
  {
    return a.d(a.a());
  }
  
  private static class a
  {
    private static final a a = new a();
    private static final int b = 3;
    private static final int c = 600000;
    private static volatile int d = 0;
    private static volatile long e = 0L;
    private static final long f = 600000L;
    private static final int g = 120000;
    private static final int h = 1200000;
    private static final int i = 90000;
    private Location j;
    private int k = -1;
    
    private a() {}
    
    private Location a(Context paramContext)
    {
      paramContext = paramContext.getApplicationContext();
      k = 2;
      if (paramContext == null) {
        return null;
      }
      boolean bool1;
      LocationManager localLocationManager;
      try
      {
        bool1 = a.a(paramContext, "android.permission.ACCESS_FINE_LOCATION");
        if ((bool1) || (a.a(paramContext, "android.permission.ACCESS_COARSE_LOCATION")))
        {
          localLocationManager = (LocationManager)paramContext.getSystemService("location");
          if (localLocationManager != null)
          {
            Iterator localIterator = localLocationManager.getProviders(true).iterator();
            while (localIterator.hasNext())
            {
              Location localLocation = localLocationManager.getLastKnownLocation((String)localIterator.next());
              if ((localLocation != null) && (a(localLocation, j)))
              {
                j = localLocation;
                continue;
                return j;
              }
            }
          }
        }
      }
      catch (Exception paramContext)
      {
        e.e().a(paramContext);
      }
      for (;;)
      {
        if ((j == null) || (System.currentTimeMillis() > j.getTime() + 300000L)) {
          a(localLocationManager, paramContext);
        }
        if (j == null)
        {
          boolean bool2 = localLocationManager.isProviderEnabled("network");
          if ((localLocationManager == null) || ((!bool2) && (!bool1)) || ((!bool2) && (bool1) && (!localLocationManager.isProviderEnabled("gps"))))
          {
            k = 0;
            continue;
            k = 1;
          }
        }
      }
    }
    
    private String a(Location paramLocation)
    {
      String str = null;
      if (paramLocation != null)
      {
        str = paramLocation.getLatitude() + "," + paramLocation.getLongitude();
        e.e().b(c.class.getSimpleName(), "User coordinates are " + str);
      }
      return str;
    }
    
    private void a(Context paramContext, LocationManager paramLocationManager, String paramString)
    {
      b localB = new b(paramLocationManager);
      e.e().b(paramString + " start to listener position");
      paramLocationManager.requestLocationUpdates(paramString, 0L, 0.0F, localB, paramContext.getMainLooper());
      if (paramString.equals("network")) {
        a(paramLocationManager, localB, 1200000, paramString);
      }
      while (!paramString.equals("gps")) {
        return;
      }
      a(paramLocationManager, localB, 90000, paramString);
    }
    
    private void a(LocationManager paramLocationManager, Context paramContext)
    {
      if (paramLocationManager == null) {
        return;
      }
      for (;;)
      {
        String str;
        try
        {
          Object localObject = new Criteria();
          ((Criteria)localObject).setAltitudeRequired(false);
          ((Criteria)localObject).setBearingRequired(false);
          ((Criteria)localObject).setSpeedRequired(false);
          ((Criteria)localObject).setCostAllowed(false);
          ((Criteria)localObject).setAccuracy(2);
          localObject = paramLocationManager.getProviders((Criteria)localObject, true).iterator();
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
          str = (String)((Iterator)localObject).next();
          if (str.equals("gps"))
          {
            if (!c()) {
              continue;
            }
            e = System.currentTimeMillis();
            a(paramContext, paramLocationManager, str);
            continue;
          }
        }
        catch (Exception paramLocationManager)
        {
          e.e().a(paramLocationManager);
          break;
        }
        finally {}
        if ((str.equals("network")) || (str.equals("passive"))) {
          a(paramContext, paramLocationManager, str);
        } else {
          e.e().b(String.format("Detected an unknown location provider %s, but taking into account security, there is no use.", new Object[] { str }));
        }
      }
    }
    
    private void a(final LocationManager paramLocationManager, final b paramB, int paramInt, final String paramString)
    {
      new Timer().schedule(new TimerTask()
      {
        public void run()
        {
          if (paramString.equals("gps")) {
            e.a.a(e.a.this, paramB);
          }
          paramLocationManager.removeUpdates(paramB);
          e.e().b("remove the listener of " + paramString);
        }
      }, paramInt);
    }
    
    private void a(b paramB)
    {
      if (!paramB.a())
      {
        d += 1;
        e.e().b("gps locate failed, and the current total failed times is " + d);
      }
    }
    
    private boolean a(Location paramLocation1, Location paramLocation2)
    {
      if (paramLocation2 == null) {}
      int n;
      int i1;
      label99:
      int m;
      label126:
      label132:
      label135:
      for (;;)
      {
        return true;
        long l1 = System.currentTimeMillis() - paramLocation1.getTime();
        long l2 = System.currentTimeMillis() - paramLocation2.getTime();
        if ((l1 > 600000L) || (l2 <= 600000L))
        {
          if ((l1 > 600000L) && (l2 <= 600000L)) {
            return false;
          }
          l1 = paramLocation1.getTime() - paramLocation2.getTime();
          if (l1 > 120000L)
          {
            n = 1;
            if (l1 >= -120000L) {
              break label126;
            }
            i1 = 1;
            if (l1 <= 0L) {
              break label132;
            }
          }
          for (m = 1;; m = 0)
          {
            if (n != 0) {
              break label135;
            }
            if (i1 == 0) {
              break label137;
            }
            return false;
            n = 0;
            break;
            i1 = 0;
            break label99;
          }
        }
      }
      label137:
      int i2 = (int)(paramLocation1.getAccuracy() - paramLocation2.getAccuracy());
      if (i2 > 0)
      {
        n = 1;
        label157:
        if (i2 >= 0) {
          break label226;
        }
        i1 = 1;
        label165:
        if (i2 <= 200) {
          break label232;
        }
      }
      label226:
      label232:
      for (i2 = 1;; i2 = 0)
      {
        boolean bool = a(paramLocation1.getProvider(), paramLocation2.getProvider());
        if ((i1 != 0) || ((m != 0) && (n == 0)) || ((m != 0) && (i2 == 0) && (bool))) {
          break;
        }
        return false;
        n = 0;
        break label157;
        i1 = 0;
        break label165;
      }
    }
    
    private boolean a(String paramString1, String paramString2)
    {
      if (paramString1 == null) {
        if (paramString2 != null) {}
      }
      while (paramString2 == null)
      {
        return true;
        return false;
      }
      return paramString1.equals(paramString2);
    }
    
    private static a b()
    {
      return a;
    }
    
    private boolean c()
    {
      if (3 <= d)
      {
        e.e().b(String.format("gps positioning has failed %d times, has reached or exceeded the maximum allowed number(%d) of failures", new Object[] { Integer.valueOf(d), Integer.valueOf(3) }));
        return false;
      }
      if (System.currentTimeMillis() < e + 600000L)
      {
        e.e().b("Now can not be gps positioning, because just evoke gps positioning time");
        return false;
      }
      return true;
    }
    
    private int d()
    {
      if (j != null)
      {
        String str = j.getProvider();
        e.e().b("This location is obtained via " + str);
        if (str != null)
        {
          if (str.equals("network")) {
            return 1;
          }
          if (str.equals("gps")) {
            return 0;
          }
          if (str.equals("passive")) {
            return 2;
          }
        }
      }
      return 3;
    }
    
    private int e()
    {
      if (j == null) {}
      for (int m = 0;; m = (int)j.getAccuracy())
      {
        e.e().b("location accuracy is " + m + " meters");
        return m;
      }
    }
    
    private int f()
    {
      switch (k)
      {
      }
      for (;;)
      {
        return k;
        e.e().b("Location can not be obtained due to USER_CLOSE");
        continue;
        e.e().b("Location can not be obtained due to NO_PERSSION");
        continue;
        e.e().b("Location can not be obtained due to NO_AVAILABLE_LOCATION");
      }
    }
    
    private long g()
    {
      if (j != null)
      {
        long l1 = j.getTime();
        long l2 = (System.currentTimeMillis() - l1) / 1000L;
        e.e().b(c.class.getSimpleName(), String.format("The location is %s minutes %s seconds ago acquired", new Object[] { String.valueOf(l2 / 60L), String.valueOf(l2 % 60L) }));
        return l1;
      }
      return 0L;
    }
    
    private class a
    {
      static final int a = 0;
      static final int b = 1;
      static final int c = 2;
      static final int d = 3;
      
      private a() {}
    }
    
    private class b
      implements LocationListener
    {
      public LocationManager a;
      private boolean c = false;
      
      b(LocationManager paramLocationManager)
      {
        a = paramLocationManager;
      }
      
      public boolean a()
      {
        return c;
      }
      
      public void onLocationChanged(Location paramLocation)
      {
        if (paramLocation != null)
        {
          c = true;
          paramLocation = paramLocation.getProvider();
          if ((paramLocation != null) && (!paramLocation.equals("network")))
          {
            e.e().b("remove the listener of " + paramLocation);
            a.removeUpdates(this);
          }
        }
      }
      
      public void onProviderDisabled(String paramString) {}
      
      public void onProviderEnabled(String paramString) {}
      
      public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
    }
    
    private class c
    {
      static final int a = 0;
      static final int b = 1;
      static final int c = 2;
      
      private c() {}
    }
  }
}
