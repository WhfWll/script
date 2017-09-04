package cn.domob.android.b;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Vibrator;
import android.util.Log;
import cn.domob.android.i.e;
import cn.domob.android.i.f;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class a
{
  protected static final String A = "locinfo";
  protected static final String B = "locacc";
  protected static final String C = "locaccmeters";
  protected static final String D = "locstatus";
  protected static final String E = "loctime";
  protected static final String F = "ama";
  protected static final String G = "ssid";
  protected static final String H = "ma";
  protected static final String I = "areacode";
  protected static final String J = "cellid";
  protected static final String K = "language";
  protected static final String L = "scan";
  protected static final String M = "istab";
  protected static final String N = "aaid";
  protected static final String O = "esh";
  private static f P = new f(a.class.getSimpleName());
  private static ArrayList<String> Q = new ArrayList();
  private static String R;
  private static int S = 0;
  private static int T = 0;
  private static String U;
  private static String V;
  private static final String W = "sdk";
  protected static final String a = "pkgname";
  protected static final String b = "vc";
  protected static final String c = "vn";
  protected static final String d = "appname";
  protected static final String e = "useragent";
  protected static final String f = "ua";
  protected static final String g = "install";
  protected static final String h = "idv";
  protected static final String i = "imei";
  protected static final String j = "imsi";
  protected static final String k = "andoidid";
  protected static final String l = "osv";
  protected static final String m = "devicemodel";
  protected static final String n = "networktype";
  protected static final String o = "networkavailable";
  protected static final String p = "ip";
  protected static final String q = "timezone";
  protected static final String r = "carrier";
  protected static final String s = "orientation";
  protected static final String t = "isemulator";
  protected static final String u = "rsd";
  protected static final String v = "csd";
  protected static final String w = "rsw";
  protected static final String x = "rsh";
  protected static final String y = "csw";
  protected static final String z = "csh";
  
  public a() {}
  
  public static String A(Context paramContext)
  {
    if (Q.contains("ama")) {
      return "";
    }
    return b.w(paramContext);
  }
  
  public static String B(Context paramContext)
  {
    if (Q.contains("ssid")) {
      return "";
    }
    return b.x(paramContext);
  }
  
  public static String C(Context paramContext)
  {
    String str = "";
    if (!Q.contains("scan")) {
      str = b.y(paramContext);
    }
    return str;
  }
  
  public static String[] D(Context paramContext)
  {
    if ((Q.contains("areacode")) || (Q.contains("cellid"))) {
      return new String[] { "-1", "-1", "-1", "-1" };
    }
    return e.b(paramContext);
  }
  
  public static boolean E(Context paramContext)
  {
    if (Q.contains("istab")) {
      return false;
    }
    return b.A(paramContext).booleanValue();
  }
  
  public static boolean F(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.VIBRATE") == -1) {
      return false;
    }
    if (a(11, true)) {
      try
      {
        paramContext = ((Vibrator)paramContext.getSystemService("vibrator")).getClass();
        boolean bool = String.valueOf(paramContext.getMethod("hasVibrator", new Class[0]).invoke(paramContext.newInstance(), new Object[0])).equals("false");
        if (bool) {
          return false;
        }
      }
      catch (Exception paramContext)
      {
        P.b("Android version of the device is less than 3.0, the interface is no mapping");
        P.a(paramContext);
      }
    }
    return true;
  }
  
  public static String G(Context paramContext)
  {
    if (Q.contains("aaid")) {
      return "";
    }
    return b.B(paramContext);
  }
  
  public static int H(Context paramContext)
  {
    if (Q.contains("esh")) {
      return 0;
    }
    return b.C(paramContext);
  }
  
  private static boolean I(Context paramContext)
  {
    paramContext = k(paramContext);
    if (paramContext == null) {
      return true;
    }
    return paramContext.replaceAll("0", "").equals("");
  }
  
  private static String J(Context paramContext)
  {
    P.b("Start to generate device id");
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
        str = j(paramContext);
        if (str == null) {
          continue;
        }
        localStringBuffer.append(str);
      }
      catch (SecurityException localSecurityException)
      {
        P.a(localSecurityException);
        Log.e(f.b(), "you must set READ_PHONE_STATE permisson in AndroidManifest.xml");
        continue;
        localStringBuffer.append("-1");
        continue;
      }
      catch (Exception localException)
      {
        P.a(localException);
        continue;
        P.a("Android ID is null, use -1 instead");
        localStringBuffer.append("-1");
        continue;
      }
      localStringBuffer.append(",");
      paramContext = l(paramContext);
      if (paramContext == null) {
        continue;
      }
      localStringBuffer.append(paramContext);
      P.b("Generated device id: " + localStringBuffer.toString());
      return localStringBuffer.toString();
      localStringBuffer.append("-1");
    }
  }
  
  public static String a(Context paramContext)
  {
    if (Q.contains("pkgname")) {
      return "";
    }
    return b.a(paramContext);
  }
  
  public static void a(ArrayList<String> paramArrayList)
  {
    if (paramArrayList != null)
    {
      P.b("Turn off list: " + paramArrayList);
      Q = paramArrayList;
    }
  }
  
  public static boolean a(int paramInt, boolean paramBoolean)
  {
    return b.a(paramInt, paramBoolean);
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    if (Q.contains("install")) {
      return false;
    }
    return b.a(paramContext, paramString);
  }
  
  public static int b(Context paramContext)
  {
    if (Q.contains("vc")) {
      return -1;
    }
    return b.b(paramContext);
  }
  
  public static String b()
  {
    if (Q.contains("ip")) {
      return "";
    }
    return b.a();
  }
  
  public static String c()
  {
    if (Q.contains("timezone")) {
      return "";
    }
    return b.b();
  }
  
  public static String c(Context paramContext)
  {
    if (Q.contains("vn")) {
      return "";
    }
    return b.c(paramContext);
  }
  
  public static int d()
  {
    if (Q.contains("locacc")) {
      return -1;
    }
    return e.b();
  }
  
  public static String d(Context paramContext)
  {
    if (Q.contains("appname")) {
      return "";
    }
    return b.d(paramContext);
  }
  
  public static int e()
  {
    if (Q.contains("locaccmeters")) {
      return -1;
    }
    return e.a();
  }
  
  public static String e(Context paramContext)
  {
    if (Q.contains("useragent")) {
      return "";
    }
    return b.e(paramContext);
  }
  
  public static int f()
  {
    if (Q.contains("locstatus")) {
      return -1;
    }
    return e.c();
  }
  
  public static String f(Context paramContext)
  {
    if (Q.contains("ua")) {
      return "";
    }
    StringBuffer localStringBuffer;
    if (R == null)
    {
      localStringBuffer = new StringBuffer();
      localStringBuffer.append("android");
      localStringBuffer.append(",");
      localStringBuffer.append(",");
      if (Build.VERSION.RELEASE.length() <= 0) {
        break label220;
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
      paramContext = q(paramContext);
      if (paramContext != null) {
        localStringBuffer.append(paramContext.replaceAll(",", "_"));
      }
      localStringBuffer.append(",");
      localStringBuffer.append(",");
      localStringBuffer.append(",");
      R = localStringBuffer.toString();
      P.b(a.class.getSimpleName(), "getUserAgent:" + R);
      return R;
      label220:
      localStringBuffer.append("1.5");
    }
  }
  
  public static long g()
  {
    if (Q.contains("loctime")) {
      return -1L;
    }
    return e.d();
  }
  
  public static String g(Context paramContext)
  {
    if (Q.contains("idv")) {
      return "";
    }
    if (V == null)
    {
      if (!h(paramContext)) {
        break label46;
      }
      P.b("Use emulator id");
    }
    for (V = "-1,-1,emulator";; V = J(paramContext))
    {
      return V;
      label46:
      P.b("Generate device id");
    }
  }
  
  public static String h()
  {
    if (Q.contains("language")) {
      return "";
    }
    return b.g();
  }
  
  public static boolean h(Context paramContext)
  {
    if (Q.contains("isemulator")) {}
    do
    {
      return false;
      if (U == null) {
        U = l(paramContext);
      }
    } while ((U != null) || (!I(paramContext)) || (!"sdk".equalsIgnoreCase(Build.MODEL)));
    return true;
  }
  
  public static boolean i(Context paramContext)
  {
    return (I(paramContext)) && ("sdk".equalsIgnoreCase(Build.MODEL));
  }
  
  public static String j(Context paramContext)
  {
    if (Q.contains("imsi")) {
      return "-1";
    }
    return b.f(paramContext);
  }
  
  public static String k(Context paramContext)
  {
    if (Q.contains("imei")) {
      return "-1";
    }
    return b.g(paramContext);
  }
  
  public static String l(Context paramContext)
  {
    if (Q.contains("andoidid")) {
      return "-1";
    }
    return b.h(paramContext);
  }
  
  public static String m(Context paramContext)
  {
    if (Q.contains("osv")) {
      return "";
    }
    return b.i(paramContext);
  }
  
  public static String n(Context paramContext)
  {
    if (Q.contains("devicemodel")) {
      return "";
    }
    return b.j(paramContext);
  }
  
  public static String o(Context paramContext)
  {
    if (Q.contains("networktype")) {
      return "";
    }
    return b.k(paramContext);
  }
  
  public static boolean p(Context paramContext)
  {
    if (Q.contains("networkavailable")) {
      return false;
    }
    return b.l(paramContext);
  }
  
  public static String q(Context paramContext)
  {
    if (Q.contains("carrier")) {
      return "";
    }
    return b.m(paramContext);
  }
  
  public static String r(Context paramContext)
  {
    if (Q.contains("orientation")) {
      return "";
    }
    return b.n(paramContext);
  }
  
  public static float s(Context paramContext)
  {
    if (Q.contains("rsd")) {
      return -1.0F;
    }
    return b.o(paramContext);
  }
  
  public static float t(Context paramContext)
  {
    if (Q.contains("csd")) {
      return -1.0F;
    }
    return b.p(paramContext);
  }
  
  public static int u(Context paramContext)
  {
    if (Q.contains("rsw")) {
      return -1;
    }
    S = Math.round(w(paramContext) * (s(paramContext) / t(paramContext)));
    return S;
  }
  
  public static int v(Context paramContext)
  {
    if (Q.contains("rsh")) {
      return -1;
    }
    T = Math.round(x(paramContext) * (s(paramContext) / t(paramContext)));
    return T;
  }
  
  public static int w(Context paramContext)
  {
    if (Q.contains("csw")) {
      return -1;
    }
    return b.q(paramContext);
  }
  
  public static int x(Context paramContext)
  {
    if (Q.contains("csh")) {
      return -1;
    }
    return b.r(paramContext);
  }
  
  public static String y(Context paramContext)
  {
    if (Q.contains("locinfo")) {
      return "";
    }
    return e.a(paramContext);
  }
  
  public static String z(Context paramContext)
  {
    if (Q.contains("ma")) {
      return "";
    }
    return b.v(paramContext);
  }
  
  public ArrayList<String> a()
  {
    return Q;
  }
}
