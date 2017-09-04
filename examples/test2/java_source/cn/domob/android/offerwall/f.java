package cn.domob.android.offerwall;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.database.Cursor;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

class f
{
  private static m a = new m(f.class.getSimpleName());
  private static String b;
  private static int c = 0;
  private static String d;
  private static String e;
  private static String f;
  private static String g;
  private static String h;
  private static String i;
  private static String j;
  private static String k;
  private static String l;
  private static float m = 0.0F;
  private static float n = 0.0F;
  private static int o = 0;
  private static int p = 0;
  private static int q = 0;
  private static int r = 0;
  private static String s;
  private static final String t = "sdk";
  private static final String u = "unknown";
  private static final String v = "gprs";
  private static final String w = "wifi";
  
  f() {}
  
  protected static String A(Context paramContext)
  {
    a localA = a.a();
    paramContext = a.a(localA, paramContext);
    if (paramContext != null) {
      return a.a(localA, paramContext);
    }
    return null;
  }
  
  private static void B(Context paramContext)
  {
    a.b(f.class.getSimpleName(), "Start to get app info.");
    for (;;)
    {
      Object localObject;
      try
      {
        localObject = paramContext.getPackageManager();
        if (localObject != null)
        {
          PackageInfo localPackageInfo = ((PackageManager)localObject).getPackageInfo(paramContext.getPackageName(), 0);
          if (localPackageInfo != null)
          {
            b = packageName;
            c = versionCode;
            d = versionName;
          }
        }
        localObject = ((PackageManager)localObject).getApplicationInfo(paramContext.getPackageName(), 128);
        if (localObject == null) {
          break;
        }
        if (labelRes != 0)
        {
          e = paramContext.getResources().getString(labelRes);
          return;
        }
        if (nonLocalizedLabel == null)
        {
          paramContext = null;
          e = paramContext;
          return;
        }
      }
      catch (Exception paramContext)
      {
        a.e(f.class.getSimpleName(), "Failed in getting app info.");
        a.a(paramContext);
        return;
      }
      paramContext = nonLocalizedLabel.toString();
    }
  }
  
  protected static String a()
  {
    try
    {
      InetAddress localInetAddress;
      do
      {
        localObject = NetworkInterface.getNetworkInterfaces();
        Enumeration localEnumeration;
        while (!localEnumeration.hasMoreElements())
        {
          if (!((Enumeration)localObject).hasMoreElements()) {
            break;
          }
          localEnumeration = ((NetworkInterface)((Enumeration)localObject).nextElement()).getInetAddresses();
        }
        localInetAddress = (InetAddress)localEnumeration.nextElement();
      } while (localInetAddress.isLoopbackAddress());
      Object localObject = localInetAddress.getHostAddress().toString();
      return localObject;
    }
    catch (Exception localException)
    {
      a.a(localException);
    }
    return null;
  }
  
  protected static String a(Context paramContext)
  {
    if (b == null) {
      B(paramContext);
    }
    return b;
  }
  
  protected static boolean a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {
      if (Build.VERSION.SDK_INT < paramInt) {}
    }
    while (Build.VERSION.SDK_INT > paramInt)
    {
      return true;
      return false;
    }
    return false;
  }
  
  protected static boolean a(Context paramContext, String paramString)
  {
    if ((paramString != null) && (!paramString.equals(""))) {
      try
      {
        if (paramContext.getPackageManager().getPackageInfo(paramString, 1) != null)
        {
          a.a("Already insalled pkgName = " + paramString);
          return true;
        }
      }
      catch (PackageManager.NameNotFoundException paramContext) {}
    }
    return false;
  }
  
  protected static int b(Context paramContext)
  {
    if (b == null) {
      B(paramContext);
    }
    return c;
  }
  
  protected static String b()
  {
    return new SimpleDateFormat("Z").format(new Date());
  }
  
  protected static int c()
  {
    return a.a(a.a());
  }
  
  protected static String c(Context paramContext)
  {
    if (b == null) {
      B(paramContext);
    }
    return d;
  }
  
  protected static int d()
  {
    return a.b(a.a());
  }
  
  protected static String d(Context paramContext)
  {
    if (b == null) {
      B(paramContext);
    }
    return e;
  }
  
  protected static long e()
  {
    return a.c(a.a());
  }
  
  protected static String e(Context paramContext)
  {
    StringBuffer localStringBuffer;
    if (l == null)
    {
      localStringBuffer = new StringBuffer();
      localStringBuffer.append("android");
      localStringBuffer.append(",");
      localStringBuffer.append(",");
      if (Build.VERSION.RELEASE.length() <= 0) {
        break label204;
      }
      localStringBuffer.append(Build.VERSION.RELEASE.replaceAll(",", "_"));
    }
    for (;;)
    {
      localStringBuffer.append(",");
      localStringBuffer.append(",");
      String str = Build.MODEL;
      if (str.length() > 0) {
        localStringBuffer.append(str.replaceAll(",", "_"));
      }
      localStringBuffer.append(",");
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperatorName();
      if (paramContext != null) {
        localStringBuffer.append(paramContext.replaceAll(",", "_"));
      }
      localStringBuffer.append(",");
      localStringBuffer.append(",");
      localStringBuffer.append(",");
      l = localStringBuffer.toString();
      a.b(l.class.getSimpleName(), "getUserAgent:" + l);
      return l;
      label204:
      localStringBuffer.append("1.5");
    }
  }
  
  protected static String f(Context paramContext)
  {
    if (f == null)
    {
      if (!g(paramContext)) {
        break label32;
      }
      a.b("Use emulator id");
    }
    for (f = "-1,-1,emulator";; f = j(paramContext))
    {
      return f;
      label32:
      a.b("Generate device id");
    }
  }
  
  protected static boolean g(Context paramContext)
  {
    if (h == null) {
      h = l(paramContext);
    }
    return (h == null) && (i(paramContext)) && ("sdk".equalsIgnoreCase(Build.MODEL));
  }
  
  protected static boolean h(Context paramContext)
  {
    return (i(paramContext)) && ("sdk".equalsIgnoreCase(Build.MODEL));
  }
  
  protected static boolean i(Context paramContext)
  {
    paramContext = k(paramContext);
    if (paramContext == null) {
      return true;
    }
    return paramContext.replaceAll("0", "").equals("");
  }
  
  protected static String j(Context paramContext)
  {
    a.b("Start to generate device id");
    localStringBuffer = new StringBuffer();
    for (;;)
    {
      try
      {
        String str = k(paramContext);
        if (str == null) {
          continue;
        }
        localStringBuffer.append(str);
        localStringBuffer.append(",");
        str = ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
        if (str == null) {
          continue;
        }
        localStringBuffer.append(str);
      }
      catch (SecurityException localSecurityException)
      {
        a.a(localSecurityException);
        Log.e("DomobSDK", "you must set READ_PHONE_STATE permisson in AndroidManifest.xml");
        continue;
        localStringBuffer.append("-1");
        continue;
      }
      catch (Exception localException)
      {
        a.a(localException);
        continue;
        a.a("Android ID is null, use -1 instead");
        localStringBuffer.append("-1");
        continue;
      }
      localStringBuffer.append(",");
      paramContext = l(paramContext);
      if (paramContext == null) {
        continue;
      }
      localStringBuffer.append(paramContext);
      a.b("Generated device id: " + localStringBuffer.toString());
      return localStringBuffer.toString();
      localStringBuffer.append("-1");
    }
  }
  
  protected static String k(Context paramContext)
  {
    try
    {
      if (g == null) {
        g = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      }
      return g;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        a.e(f.class.getSimpleName(), "Failed to get android ID.");
        a.a(paramContext);
      }
    }
  }
  
  protected static String l(Context paramContext)
  {
    try
    {
      if (h == null) {
        h = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
      }
      return h;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        a.e(f.class.getSimpleName(), "Failed to get android ID.");
        a.a(paramContext);
      }
    }
  }
  
  protected static String m(Context paramContext)
  {
    if (i == null) {
      if (Build.VERSION.RELEASE.length() <= 0) {
        break label33;
      }
    }
    label33:
    for (i = Build.VERSION.RELEASE.replace(",", "_");; i = "1.5") {
      return i;
    }
  }
  
  protected static String n(Context paramContext)
  {
    if ((j == null) && (Build.MODEL.length() > 0)) {
      j = Build.MODEL.replace(",", "_");
    }
    return j;
  }
  
  protected static String o(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1)
    {
      a.e(f.class.getSimpleName(), "Cannot access user's network type.  Permissions are not set.");
      paramContext = "unknown";
    }
    int i1;
    String str;
    do
    {
      return paramContext;
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (paramContext == null) {
        break label79;
      }
      i1 = paramContext.getType();
      if (i1 != 0) {
        break;
      }
      str = paramContext.getSubtypeName();
      paramContext = str;
    } while (str != null);
    return "gprs";
    if (i1 == 1) {
      return "wifi";
    }
    label79:
    return "unknown";
  }
  
  protected static boolean p(Context paramContext)
  {
    try
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (paramContext != null)
      {
        boolean bool = paramContext.isConnected();
        if (bool) {
          return true;
        }
      }
      return false;
    }
    catch (Exception paramContext)
    {
      a.a(paramContext);
    }
    return false;
  }
  
  protected static String q(Context paramContext)
  {
    try
    {
      if (k == null) {
        k = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperatorName();
      }
      return k;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        a.a(paramContext);
      }
    }
  }
  
  protected static String r(Context paramContext)
  {
    s = "v";
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    if ((paramContext.getOrientation() == 1) || (paramContext.getOrientation() == 3)) {
      s = "h";
    }
    return s;
  }
  
  protected static float s(Context paramContext)
  {
    try
    {
      if (m == 0.0F)
      {
        paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        paramContext.getMetrics(localDisplayMetrics);
        m = density;
      }
      return m;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        a.a(paramContext);
      }
    }
  }
  
  protected static float t(Context paramContext)
  {
    try
    {
      if (n == 0.0F) {
        n = getResourcesgetDisplayMetricsdensity;
      }
      return n;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        a.a(paramContext);
      }
    }
  }
  
  protected static int u(Context paramContext)
  {
    o = Math.round(w(paramContext) * (s(paramContext) / t(paramContext)));
    return o;
  }
  
  protected static int v(Context paramContext)
  {
    p = Math.round(x(paramContext) * (s(paramContext) / t(paramContext)));
    return p;
  }
  
  protected static int w(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    if (paramContext != null) {
      q = paramContext.getWidth();
    }
    return q;
  }
  
  protected static int x(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    if (paramContext != null) {
      r = paramContext.getHeight();
    }
    return r;
  }
  
  protected static String y(Context paramContext)
  {
    paramContext = z(paramContext);
    if ((paramContext != null) && (paramContext.getCount() > 0))
    {
      paramContext.moveToFirst();
      String str = paramContext.getString(paramContext.getColumnIndexOrThrow("apn"));
      paramContext.close();
      return str;
    }
    return "";
  }
  
  protected static Cursor z(Context paramContext)
  {
    Object localObject = o(paramContext);
    if ((localObject != null) && (((String)localObject).equals("wifi")))
    {
      a.b("network is wifi, don't read apn.");
      return null;
    }
    localObject = Uri.parse("content://telephony/carriers/preferapn");
    return paramContext.getContentResolver().query((Uri)localObject, null, null, null, null);
  }
  
  private static class a
  {
    private static a a = new a();
    private static final long f = 600000L;
    private Location b;
    private int c = -1;
    private int d = -1;
    private boolean e = true;
    
    private a() {}
    
    private Location a(Context paramContext)
    {
      try
      {
        if (!e) {
          return null;
        }
        LocationManager localLocationManager = (LocationManager)paramContext.getSystemService("location");
        if (localLocationManager != null) {
          if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") != 0) {
            break label271;
          }
        }
        label266:
        Object localObject3;
        label271:
        for (Object localObject1 = localLocationManager.getLastKnownLocation("gps");; localObject3 = null)
        {
          if (localObject1 == null)
          {
            localObject1 = localLocationManager.getLastKnownLocation("network");
            if ((localObject1 != null) && (System.currentTimeMillis() - ((Location)localObject1).getTime() < 600000L))
            {
              c = 2;
              b = ((Location)localObject1);
              return localObject1;
            }
          }
          else if (System.currentTimeMillis() - ((Location)localObject1).getTime() < 600000L)
          {
            c = 0;
            b = ((Location)localObject1);
            return localObject1;
          }
          if ((paramContext != null) && ((b == null) || (System.currentTimeMillis() > b.getTime() + 600000L))) {}
          for (;;)
          {
            try
            {
              if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0) {
                break label266;
              }
              f.f().b("Trying to get locations from the network.");
              localObject1 = new Criteria();
              ((Criteria)localObject1).setAccuracy(2);
              ((Criteria)localObject1).setCostAllowed(false);
              localObject1 = localLocationManager.getBestProvider((Criteria)localObject1, true);
              if (localObject1 == null)
              {
                f.f().b(f.class.getSimpleName(), "No location providers are available.  Ads will not be geotargeted.");
                d = 0;
                return null;
              }
              f.f().b(f.class.getSimpleName(), "Location provider setup successfully.");
              localLocationManager.requestLocationUpdates((String)localObject1, 0L, 0.0F, new b(localLocationManager), paramContext.getMainLooper());
              b(paramContext);
              d = 2;
              return null;
            }
            finally {}
            paramContext = b;
            return paramContext;
            localObject3 = null;
          }
        }
        return null;
      }
      catch (Exception paramContext) {}
    }
    
    protected static a a()
    {
      return a;
    }
    
    private String a(Location paramLocation)
    {
      String str = null;
      if (paramLocation != null)
      {
        str = paramLocation.getLatitude() + "," + paramLocation.getLongitude();
        f.f().b(f.class.getSimpleName(), "User coordinates are " + str);
      }
      return str;
    }
    
    private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
      throws Exception
    {
      Object localObject1 = new JSONObject();
      ((JSONObject)localObject1).put("version", "1.1.0");
      ((JSONObject)localObject1).put("host", "maps.google.com");
      ((JSONObject)localObject1).put("request_address", true);
      Object localObject2 = new JSONArray();
      Object localObject3 = new JSONObject();
      ((JSONObject)localObject3).put("cell_id", paramInt1);
      ((JSONObject)localObject3).put("location_area_code", paramInt2);
      ((JSONObject)localObject3).put("mobile_country_code", paramInt4);
      ((JSONObject)localObject3).put("mobile_network_code", paramInt3);
      ((JSONArray)localObject2).put(localObject3);
      ((JSONObject)localObject1).put("cell_towers", localObject2);
      f.f().a("Location send:" + ((JSONObject)localObject1).toString());
      localObject2 = new DefaultHttpClient();
      localObject3 = new HttpPost("http://www.google.com/loc/json");
      ((HttpPost)localObject3).setEntity(new StringEntity(((JSONObject)localObject1).toString()));
      localObject1 = ((DefaultHttpClient)localObject2).execute((HttpUriRequest)localObject3).getEntity();
      if (localObject1 != null)
      {
        localObject2 = new BufferedReader(new InputStreamReader(((HttpEntity)localObject1).getContent()));
        localObject3 = new StringBuffer();
        for (localObject1 = ((BufferedReader)localObject2).readLine(); localObject1 != null; localObject1 = ((BufferedReader)localObject2).readLine()) {
          ((StringBuffer)localObject3).append((String)localObject1);
        }
        if (localObject3 != null)
        {
          localObject2 = new JSONObject(new JSONTokener(((StringBuffer)localObject3).toString()));
          if ((localObject2 != null) && (((JSONObject)localObject2).has("location")))
          {
            localObject1 = ((JSONObject)localObject2).optJSONObject("location").optString("longitude");
            localObject2 = ((JSONObject)localObject2).optJSONObject("location").optString("latitude");
            long l = System.currentTimeMillis();
            localObject3 = new Location("jizhan");
            ((Location)localObject3).setLongitude(Double.parseDouble((String)localObject1));
            ((Location)localObject3).setLatitude(Double.parseDouble((String)localObject2));
            ((Location)localObject3).setTime(l);
            a((Location)localObject3, 1);
          }
        }
      }
    }
    
    private void a(Location paramLocation, int paramInt)
    {
      b = paramLocation;
      c = paramInt;
    }
    
    private int b()
    {
      switch (c)
      {
      default: 
        f.f().b(f.class.getSimpleName(), "Unknown");
      }
      for (;;)
      {
        return c;
        f.f().b(f.class.getSimpleName(), "GPS");
        continue;
        f.f().b(f.class.getSimpleName(), "Base");
        continue;
        f.f().b(f.class.getSimpleName(), "Wifi");
      }
    }
    
    private void b(final Context paramContext)
    {
      new Thread(new Runnable()
      {
        public void run()
        {
          f.f().a(f.class.getSimpleName(), "getLocationBasedService");
          try
          {
            TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
            if (localTelephonyManager != null)
            {
              f.f().a(f.class.getSimpleName(), "tManager is not null");
              f.f().a(f.class.getSimpleName(), "Network Operator: " + localTelephonyManager.getNetworkOperator());
              if ((localTelephonyManager.getNetworkOperator() != null) && (localTelephonyManager.getNetworkOperator().length() >= 5)) {
                switch (localTelephonyManager.getPhoneType())
                {
                case 1: 
                  GsmCellLocation localGsmCellLocation = (GsmCellLocation)localTelephonyManager.getCellLocation();
                  if (localGsmCellLocation != null)
                  {
                    int i = ((GsmCellLocation)localGsmCellLocation).getCid();
                    int j = ((GsmCellLocation)localGsmCellLocation).getLac();
                    int k = Integer.valueOf(localTelephonyManager.getNetworkOperator().substring(0, 3)).intValue();
                    int m = Integer.valueOf(localTelephonyManager.getNetworkOperator().substring(3, 5)).intValue();
                    f.a.a(f.a.this, i, j, m, k);
                    return;
                  }
                  break;
                }
              }
            }
          }
          catch (Exception localException)
          {
            f.f().a(localException);
            return;
          }
        }
      }).start();
    }
    
    private int c()
    {
      switch (d)
      {
      }
      return d;
    }
    
    private long d()
    {
      if (b != null) {
        return b.getTime();
      }
      return 0L;
    }
    
    private class a
    {
      static final int a = 0;
      static final int b = 1;
      static final int c = 2;
      
      private a() {}
    }
    
    private class b
      implements LocationListener
    {
      protected LocationManager a;
      
      b(LocationManager paramLocationManager)
      {
        a = paramLocationManager;
      }
      
      public final void onLocationChanged(Location paramLocation)
      {
        f.f().a(f.class.getSimpleName(), "onLocationChanged");
        f.a.a(f.a.this, paramLocation, 2);
        a.removeUpdates(this);
      }
      
      public final void onProviderDisabled(String paramString) {}
      
      public final void onProviderEnabled(String paramString) {}
      
      public final void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
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
