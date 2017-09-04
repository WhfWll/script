package cn.domob.android.a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import cn.domob.android.offerwall.m;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;

public class e
{
  private static m a = new m(e.class.getSimpleName());
  private static final String b = "wifi";
  private static final String c = "ctwap";
  
  public e() {}
  
  protected static String a(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1)
    {
      a.e(e.class.getSimpleName(), "Cannot access user's network type.  Permissions are not set.");
      paramContext = "";
    }
    int i;
    String str;
    do
    {
      return paramContext;
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (paramContext == null) {
        break label76;
      }
      i = paramContext.getType();
      if (i != 0) {
        break;
      }
      str = paramContext.getSubtypeName();
      paramContext = str;
    } while (str != null);
    return "GPRS";
    if (i == 1) {
      return "wifi";
    }
    label76:
    return "";
  }
  
  protected static Proxy b(Context paramContext)
  {
    Object localObject4 = null;
    localObject5 = null;
    for (;;)
    {
      try
      {
        paramContext = c(paramContext);
        if (paramContext == null) {}
      }
      catch (Exception localException2)
      {
        Object localObject1;
        int i;
        Object localObject2;
        paramContext = null;
        continue;
        Object localObject3 = null;
        continue;
      }
      try
      {
        if (paramContext.getCount() <= 0) {
          continue;
        }
        paramContext.moveToFirst();
        localObject1 = paramContext.getString(paramContext.getColumnIndexOrThrow("proxy"));
        i = paramContext.getInt(paramContext.getColumnIndexOrThrow("port"));
        localObject4 = paramContext.getString(paramContext.getColumnIndexOrThrow("apn"));
        a.a(e.class.getSimpleName(), "Proxy: " + (String)localObject1 + " port: " + i + " apnType: " + (String)localObject4);
        if ((localObject1 == null) || (((String)localObject1).equals("")) || (i == 0) || (((String)localObject4).equalsIgnoreCase("ctwap"))) {
          continue;
        }
        a.a(e.class.getSimpleName(), "download use proxy " + (String)localObject1 + " port:" + i);
        localObject1 = new Proxy(Proxy.Type.HTTP, new InetSocketAddress((String)localObject1, i));
      }
      catch (Exception localException1)
      {
        a.a(localException1);
        localObject2 = localObject5;
      }
    }
    localObject4 = localObject1;
    if (paramContext != null)
    {
      paramContext.close();
      localObject4 = localObject1;
    }
    while (paramContext == null) {
      return localObject4;
    }
    paramContext.close();
    return null;
  }
  
  private static Cursor c(Context paramContext)
  {
    Object localObject = a(paramContext);
    if ((localObject != null) && (((String)localObject).equals("wifi")))
    {
      a.a(e.class.getSimpleName(), "Download network is wifi, don't read apn.");
      return null;
    }
    localObject = Uri.parse("content://telephony/carriers/preferapn");
    return paramContext.getContentResolver().query((Uri)localObject, null, null, null, null);
  }
}
