package cn.domob.android.i;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.PowerManager;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;

public class c
{
  private static f a = new f(c.class.getSimpleName());
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
  private static String m;
  private static Boolean n;
  private static float o = 0.0F;
  private static float p = 0.0F;
  private static int q = 0;
  private static int r = 0;
  private static String s;
  private static String t;
  private static final String u = "unknown";
  private static final String v = "gprs";
  private static final String w = "wifi";
  private static final String x = "com.android.browser";
  private static final String y = "com.google.android.browser";
  private static final String z = "com.android.browser.BrowserActivity";
  
  public c() {}
  
  public static Boolean A(Context paramContext)
  {
    if (n != null) {
      return n;
    }
    try
    {
      if (Build.VERSION.SDK_INT >= 11)
      {
        paramContext = paramContext.getResources().getConfiguration();
        n = (Boolean)paramContext.getClass().getMethod("isLayoutSizeAtLeast", new Class[] { Integer.TYPE }).invoke(paramContext, new Object[] { Integer.valueOf(4) });
      }
      if (n == null) {
        n = Boolean.valueOf(false);
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
  
  public static String B(Context paramContext)
  {
    if ((i == null) && (a(9, true))) {}
    try
    {
      Class localClass = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
      paramContext = localClass.getMethod("getAdvertisingIdInfo", new Class[] { Context.class }).invoke(localClass.newInstance(), new Object[] { paramContext });
      i = String.valueOf(paramContext.getClass().getMethod("getId", new Class[0]).invoke(paramContext, new Object[0]));
      return i;
    }
    catch (Exception paramContext)
    {
      for (;;) {}
    }
  }
  
  public static int C(Context paramContext)
  {
    if ((paramContext instanceof Activity))
    {
      paramContext = ((Activity)paramContext).getWindow();
      Rect localRect = new Rect();
      paramContext.getDecorView().getWindowVisibleDisplayFrame(localRect);
      int i1 = top;
      int i2 = paramContext.findViewById(16908290).getTop();
      return localRect.height() - (i2 - i1);
    }
    return 0;
  }
  
  public static boolean D(Context paramContext)
  {
    try
    {
      boolean bool = ((PowerManager)paramContext.getSystemService("power")).isScreenOn();
      return bool;
    }
    catch (Exception paramContext)
    {
      a.a(paramContext);
    }
    return true;
  }
  
  public static boolean E(Context paramContext)
  {
    return ((WifiManager)paramContext.getSystemService("wifi")).getWifiState() == 3;
  }
  
  public static String F(Context paramContext)
  {
    StringBuffer localStringBuffer;
    if (t == null)
    {
      localStringBuffer = new StringBuffer();
      localStringBuffer.append("android");
      localStringBuffer.append(",");
      localStringBuffer.append(",");
      if (Build.VERSION.RELEASE.length() <= 0) {
        break label186;
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
      paramContext = m(paramContext);
      if (paramContext != null) {
        localStringBuffer.append(paramContext.replaceAll(",", "_"));
      }
      localStringBuffer.append(",");
      localStringBuffer.append(",");
      localStringBuffer.append(",");
      t = localStringBuffer.toString();
      a.b("getUserAgent:" + t);
      return t;
      label186:
      localStringBuffer.append("1.5");
    }
  }
  
  private static void G(Context paramContext)
  {
    a.b(c.class.getSimpleName(), "Start to get app info.");
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
        a.e(c.class.getSimpleName(), "Failed in getting app info.");
        a.a(paramContext);
        return;
      }
      paramContext = nonLocalizedLabel.toString();
    }
  }
  
  public static Intent a(Context paramContext, Uri paramUri)
  {
    if ((paramContext != null) && (paramUri != null))
    {
      if (!a(paramContext, "com.android.browser")) {
        break label54;
      }
      paramUri = new Intent("android.intent.action.VIEW", paramUri);
      paramUri.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
    }
    for (;;)
    {
      if (paramContext.getPackageManager().resolveActivity(paramUri, 65536) == null)
      {
        return null;
        label54:
        if (a(paramContext, "com.google.android.browser"))
        {
          paramUri = new Intent("android.intent.action.VIEW", paramUri);
          paramUri.setClassName("com.google.android.browser", "com.android.browser.BrowserActivity");
        }
      }
      else
      {
        return paramUri;
      }
      paramUri = null;
    }
  }
  
  public static String a()
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
  
  public static String a(Context paramContext)
  {
    if (b == null)
    {
      G(paramContext);
      if (!h.e(b)) {
        Log.i(f.b(), "Current package name is " + b);
      }
    }
    return b;
  }
  
  public static boolean a(int paramInt, boolean paramBoolean)
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
  
  public static boolean a(Context paramContext, String paramString)
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
  
  public static int b(Context paramContext)
  {
    if (b == null) {
      G(paramContext);
    }
    return c;
  }
  
  public static String b()
  {
    return new SimpleDateFormat("Z").format(new Date());
  }
  
  public static int c()
  {
    return a.a(a.a());
  }
  
  public static String c(Context paramContext)
  {
    if (b == null) {
      G(paramContext);
    }
    return d;
  }
  
  public static int d()
  {
    return a.b(a.a());
  }
  
  public static String d(Context paramContext)
  {
    if (b == null) {
      G(paramContext);
    }
    return e;
  }
  
  public static int e()
  {
    return a.c(a.a());
  }
  
  public static String e(Context paramContext)
  {
    if (m == null) {
      m = new WebView(paramContext).getSettings().getUserAgentString();
    }
    return m;
  }
  
  public static long f()
  {
    return a.d(a.a());
  }
  
  public static String f(Context paramContext)
  {
    try
    {
      if (g == null) {
        g = ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
      }
      return g;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        a.e("Failed to get IMSI.");
        a.a(paramContext);
      }
    }
  }
  
  public static String g()
  {
    return Locale.getDefault().getLanguage();
  }
  
  public static String g(Context paramContext)
  {
    try
    {
      if (f == null) {
        f = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      }
      return f;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        a.e(c.class.getSimpleName(), "Failed to get IMEI.");
        a.a(paramContext);
      }
    }
  }
  
  public static String h(Context paramContext)
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
        a.e(c.class.getSimpleName(), "Failed to get android ID.");
        a.a(paramContext);
      }
    }
  }
  
  public static boolean h()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }
  
  public static String i(Context paramContext)
  {
    if (j == null) {
      if (Build.VERSION.RELEASE.length() <= 0) {
        break label32;
      }
    }
    label32:
    for (j = Build.VERSION.RELEASE.replace(",", "_");; j = "1.5") {
      return j;
    }
  }
  
  public static String j(Context paramContext)
  {
    if ((k == null) && (Build.MODEL.length() > 0)) {
      k = Build.MODEL.replace(",", "_");
    }
    return k;
  }
  
  public static String k(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1)
    {
      a.e(c.class.getSimpleName(), "Cannot access user's network type.  Permissions are not set.");
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
  
  public static boolean l(Context paramContext)
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
  
  public static String m(Context paramContext)
  {
    try
    {
      if (l == null) {
        l = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperatorName();
      }
      return l;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        a.a(paramContext);
      }
    }
  }
  
  public static String n(Context paramContext)
  {
    s = "v";
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    if ((paramContext.getOrientation() == 1) || (paramContext.getOrientation() == 3)) {
      s = "h";
    }
    return s;
  }
  
  public static float o(Context paramContext)
  {
    try
    {
      if (o == 0.0F)
      {
        paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        paramContext.getMetrics(localDisplayMetrics);
        o = density;
      }
      return o;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        a.a(paramContext);
      }
    }
  }
  
  public static float p(Context paramContext)
  {
    try
    {
      if (p == 0.0F) {
        p = getResourcesgetDisplayMetricsdensity;
      }
      return p;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        a.a(paramContext);
      }
    }
  }
  
  public static int q(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    if (paramContext != null) {
      q = paramContext.getWidth();
    }
    return q;
  }
  
  public static int r(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    if (paramContext != null) {
      r = paramContext.getHeight();
    }
    return r;
  }
  
  public static String s(Context paramContext)
  {
    paramContext = t(paramContext);
    if ((paramContext != null) && (paramContext.getCount() > 0))
    {
      paramContext.moveToFirst();
      String str = paramContext.getString(paramContext.getColumnIndexOrThrow("apn"));
      paramContext.close();
      return str;
    }
    return "";
  }
  
  public static Cursor t(Context paramContext)
  {
    try
    {
      Object localObject = k(paramContext);
      if ((localObject != null) && (((String)localObject).equals("wifi")))
      {
        a.b("network is wifi, don't read apn.");
        return null;
      }
      localObject = Uri.parse("content://telephony/carriers/preferapn");
      paramContext = paramContext.getContentResolver().query((Uri)localObject, null, null, null, null);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      a.a(paramContext);
      return null;
    }
    catch (Error paramContext)
    {
      a.a(paramContext);
    }
    return null;
  }
  
  public static String u(Context paramContext)
  {
    a localA = a.a();
    paramContext = a.a(localA, paramContext);
    if (paramContext != null) {
      return a.a(localA, paramContext);
    }
    return null;
  }
  
  public static String v(Context paramContext)
  {
    if (a.e(paramContext)) {
      return ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
    }
    return null;
  }
  
  public static String w(Context paramContext)
  {
    if ((a.e(paramContext)) && (E(paramContext))) {
      return ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getBSSID();
    }
    return null;
  }
  
  public static String x(Context paramContext)
  {
    if ((a.e(paramContext)) && (E(paramContext))) {
      return ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getSSID();
    }
    return null;
  }
  
  public static String y(Context paramContext)
  {
    int i2 = 0;
    for (;;)
    {
      try
      {
        if ((a.e(paramContext)) && (E(paramContext)))
        {
          paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getScanResults();
          ScanResult[] arrayOfScanResult = new ScanResult[paramContext.size()];
          i1 = 0;
          if (i1 < paramContext.size())
          {
            arrayOfScanResult[i1] = ((ScanResult)paramContext.get(i1));
            i1 += 1;
            continue;
          }
          Arrays.sort(arrayOfScanResult, new Comparator()
          {
            public int a(ScanResult paramAnonymousScanResult1, ScanResult paramAnonymousScanResult2)
            {
              int j = level - level;
              int i = 0;
              if (j > 0) {
                i = 1;
              }
              while (j >= 0) {
                return i;
              }
              return -1;
            }
          });
          JSONObject localJSONObject = new JSONObject();
          if (arrayOfScanResult.length > 20) {
            break label205;
          }
          i1 = arrayOfScanResult.length;
          if (i2 < i1)
          {
            paramContext = arrayOfScanResult[i2];
            String str = BSSID;
            paramContext = SSID;
            if (h.e(str)) {
              break label198;
            }
            if (h.e(str)) {
              paramContext = "#";
            }
            Object localObject = paramContext;
            if (paramContext.length() > 16) {
              localObject = paramContext.substring(0, 16);
            }
            localJSONObject.put(str, localObject);
            break label198;
          }
          paramContext = localJSONObject.toString();
          return paramContext;
        }
      }
      catch (Exception paramContext)
      {
        a.a(paramContext);
      }
      return "";
      label198:
      i2 += 1;
      continue;
      label205:
      int i1 = 20;
    }
  }
  
  public static String[] z(Context paramContext)
  {
    int i2 = -1;
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
      i1 = paramContext.getPhoneType();
      localObject = paramContext.getCellLocation();
      if (localObject == null) {
        break label206;
      }
      switch (i1)
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
        int i1 = -1;
      }
    }
    a.b("无法获取基站信息");
    break label353;
    for (;;)
    {
      arrayOfString[0] = String.valueOf(i2);
      arrayOfString[1] = String.valueOf(i1);
      label206:
      if ((paramContext.getNetworkOperator() == null) || (paramContext.getNetworkOperator().length() < 5)) {
        return arrayOfString;
      }
      i1 = Integer.valueOf(paramContext.getNetworkOperator().substring(0, 3)).intValue();
      i2 = Integer.valueOf(paramContext.getNetworkOperator().substring(3, 5)).intValue();
      arrayOfString[2] = String.valueOf(i1);
      arrayOfString[3] = String.valueOf(i2);
      return arrayOfString;
      localObject = (GsmCellLocation)localObject;
      if (localObject == null) {
        break;
      }
      i2 = ((GsmCellLocation)localObject).getCid();
      i1 = ((GsmCellLocation)localObject).getLac();
      continue;
      localObject = (CdmaCellLocation)localObject;
      if (localObject == null) {
        break;
      }
      i2 = ((CdmaCellLocation)localObject).getBaseStationId();
      i1 = ((CdmaCellLocation)localObject).getNetworkId();
    }
    label353:
    return arrayOfString;
  }
  
  private static class a
  {
    private static final a a = new a();
    private static final long e = 600000L;
    private static final int f = 120000;
    private static final int g = 1200000;
    private static final int h = 120000;
    private Location b;
    private int c = -1;
    private final boolean d = true;
    
    private a() {}
    
    private Location a(Context paramContext)
    {
      paramContext = paramContext.getApplicationContext();
      c = 2;
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
              if ((localLocation != null) && (a(localLocation, b)))
              {
                b = localLocation;
                continue;
                return b;
              }
            }
          }
        }
      }
      catch (Exception paramContext)
      {
        c.i().a(paramContext);
      }
      for (;;)
      {
        if ((b == null) || (System.currentTimeMillis() > b.getTime() + 300000L)) {
          a(localLocationManager, paramContext);
        }
        if (b == null)
        {
          boolean bool2 = localLocationManager.isProviderEnabled("network");
          if ((localLocationManager == null) || ((!bool2) && (!bool1)) || ((!bool2) && (bool1) && (!localLocationManager.isProviderEnabled("gps"))))
          {
            c = 0;
            continue;
            c = 1;
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
        c.i().b(c.class.getSimpleName(), "User coordinates are " + str);
      }
      return str;
    }
    
    private void a(LocationManager paramLocationManager, Context paramContext)
    {
      if (paramLocationManager == null) {
        return;
      }
      for (;;)
      {
        String str;
        b localB;
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
          localB = new b(paramLocationManager);
          c.i().b(str + " start to listener position");
          paramLocationManager.requestLocationUpdates(str, 0L, 0.0F, localB, paramContext.getMainLooper());
          if (str.equals("network"))
          {
            a(paramLocationManager, localB, 1200000, str);
            continue;
          }
        }
        catch (Exception paramLocationManager)
        {
          c.i().a(paramLocationManager);
          break;
        }
        finally {}
        if (str.equals("gps")) {
          a(paramLocationManager, localB, 120000, str);
        }
      }
    }
    
    private void a(final LocationManager paramLocationManager, final LocationListener paramLocationListener, int paramInt, final String paramString)
    {
      new Timer().schedule(new TimerTask()
      {
        public void run()
        {
          paramLocationManager.removeUpdates(paramLocationListener);
          c.i().b(paramString + " stop listening position");
        }
      }, paramInt);
    }
    
    private boolean a(Location paramLocation1, Location paramLocation2)
    {
      if (paramLocation2 == null) {}
      int j;
      int k;
      label99:
      int i;
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
            j = 1;
            if (l1 >= -120000L) {
              break label126;
            }
            k = 1;
            if (l1 <= 0L) {
              break label132;
            }
          }
          for (i = 1;; i = 0)
          {
            if (j != 0) {
              break label135;
            }
            if (k == 0) {
              break label137;
            }
            return false;
            j = 0;
            break;
            k = 0;
            break label99;
          }
        }
      }
      label137:
      int m = (int)(paramLocation1.getAccuracy() - paramLocation2.getAccuracy());
      if (m > 0)
      {
        j = 1;
        label157:
        if (m >= 0) {
          break label226;
        }
        k = 1;
        label165:
        if (m <= 200) {
          break label232;
        }
      }
      label226:
      label232:
      for (m = 1;; m = 0)
      {
        boolean bool = a(paramLocation1.getProvider(), paramLocation2.getProvider());
        if ((k != 0) || ((i != 0) && (j == 0)) || ((i != 0) && (m == 0) && (bool))) {
          break;
        }
        return false;
        j = 0;
        break label157;
        k = 0;
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
    
    private int c()
    {
      if (b != null)
      {
        String str = b.getProvider();
        c.i().b("This location is obtained via " + str);
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
    
    private int d()
    {
      if (b == null) {}
      for (int i = 0;; i = (int)b.getAccuracy())
      {
        c.i().b("location accuracy is " + i + " meters");
        return i;
      }
    }
    
    private int e()
    {
      switch (c)
      {
      }
      for (;;)
      {
        return c;
        c.i().b("Location can not be obtained due to USER_CLOSE");
        continue;
        c.i().b("Location can not be obtained due to NO_PERSSION");
        continue;
        c.i().b("Location can not be obtained due to NO_AVAILABLE_LOCATION");
      }
    }
    
    private long f()
    {
      if (b != null)
      {
        long l1 = b.getTime();
        long l2 = (System.currentTimeMillis() - l1) / 1000L;
        c.i().b(c.class.getSimpleName(), String.format("The location is %s minutes %s seconds ago acquired", new Object[] { String.valueOf(l2 / 60L), String.valueOf(l2 % 60L) }));
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
      
      b(LocationManager paramLocationManager)
      {
        a = paramLocationManager;
      }
      
      public void onLocationChanged(Location paramLocation)
      {
        paramLocation = paramLocation.getProvider();
        if ((paramLocation != null) && (!paramLocation.equals("network")))
        {
          c.i().b(paramLocation + " get location successfully, and remove the listener");
          a.removeUpdates(this);
          return;
        }
        c.i().b(paramLocation + " get location successfully, do not remove the listener");
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
