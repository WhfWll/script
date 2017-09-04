package com.alipay.sdk.util;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.bangcle.andjni.JniLib;

public final class b
{
  private static final String a = "00:00:00:00:00:00";
  private static b e = null;
  private String b;
  private String c;
  private String d;
  
  static
  {
    JniLib.a(b.class, 173);
  }
  
  private b(Context paramContext)
  {
    try
    {
      Object localObject = (TelephonyManager)paramContext.getSystemService("phone");
      b(((TelephonyManager)localObject).getDeviceId());
      String str = ((TelephonyManager)localObject).getSubscriberId();
      localObject = str;
      if (str != null) {
        localObject = (str + "000000000000000").substring(0, 15);
      }
      b = ((String)localObject);
      d = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
      return;
    }
    catch (Exception paramContext) {}finally
    {
      if (TextUtils.isEmpty(d)) {
        d = "00:00:00:00:00:00";
      }
    }
  }
  
  public static native b a(Context paramContext);
  
  private native void a(String paramString);
  
  public static native g b(Context paramContext);
  
  private native void b(String paramString);
  
  public static native String c(Context paramContext);
  
  private native String d();
  
  public final native String a();
  
  public final native String b();
  
  public final native String c();
}
