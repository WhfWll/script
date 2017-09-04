package com.tencent.wxop.stat;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import com.tencent.a.a.a.a.c;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.common.k;
import com.tencent.wxop.stat.common.p;
import com.tencent.wxop.stat.common.q;
import java.net.URI;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class StatConfig
{
  private static String A;
  private static String B;
  private static String C;
  private static String D;
  private static int E;
  private static int F;
  private static long G;
  private static long H;
  private static volatile String I = "http://pingma.qq.com:80/mstat/report";
  private static int J = 0;
  private static volatile int K = 0;
  private static int L = 20;
  private static int M = 0;
  private static boolean N = false;
  private static int O = 4096;
  private static boolean P = false;
  private static String Q = null;
  private static boolean R = false;
  private static g S = null;
  static f a;
  static f b;
  static String c;
  static String d;
  static String e;
  static String f;
  static boolean g;
  static int h;
  static long i;
  public static boolean isAutoExceptionCaught;
  static boolean j;
  static volatile String k;
  static boolean l = true;
  static int m = 0;
  static long n = 10000L;
  static int o = 512;
  private static StatLogger p = ;
  private static StatReportStrategy q;
  private static boolean r;
  private static boolean s;
  private static int t;
  private static int u;
  private static int v;
  private static int w;
  private static int x;
  private static int y;
  private static int z;
  
  static
  {
    a = new f(2);
    b = new f(1);
    q = StatReportStrategy.APP_LAUNCH;
    r = false;
    s = true;
    t = 30000;
    u = 100000;
    v = 30;
    w = 10;
    x = 100;
    y = 30;
    z = 1;
    c = "__HIBERNATE__";
    d = "__HIBERNATE__TIME";
    e = "__MTA_KILL__";
    A = null;
    D = "mta_channel";
    f = "";
    E = 180;
    g = false;
    h = 100;
    i = 10000L;
    F = 1024;
    j = true;
    G = 0L;
    H = 300000L;
    isAutoExceptionCaught = true;
    k = "pingma.qq.com:80";
  }
  
  public StatConfig() {}
  
  static int a()
  {
    return v;
  }
  
  static String a(Context paramContext)
  {
    return q.a(p.a(paramContext, "_mta_ky_tag_", null));
  }
  
  static String a(String paramString1, String paramString2)
  {
    try
    {
      String str = bb.getString(paramString1);
      if (str != null) {
        paramString2 = str;
      }
      return paramString2;
    }
    catch (Throwable localThrowable)
    {
      p.w("can't find custom key:" + paramString1);
    }
    return paramString2;
  }
  
  static void a(int paramInt)
  {
    try
    {
      K = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  static void a(long paramLong)
  {
    p.b(i.a(), c, paramLong);
    setEnableStatService(false);
    p.warn("MTA is disable for current SDK version");
  }
  
  static void a(Context paramContext, f paramF)
  {
    if (a == ba)
    {
      b = paramF;
      a(b);
      if (!bb.isNull("iplist")) {
        a.a(paramContext).a(bb.getString("iplist"));
      }
    }
    while (a != aa) {
      return;
    }
    a = paramF;
  }
  
  static void a(Context paramContext, f paramF, JSONObject paramJSONObject)
  {
    int i1 = 0;
    label210:
    for (;;)
    {
      try
      {
        Iterator localIterator = paramJSONObject.keys();
        if (localIterator.hasNext())
        {
          str = (String)localIterator.next();
          if (str.equalsIgnoreCase("v"))
          {
            int i2 = paramJSONObject.getInt(str);
            if (d == i2) {
              break label210;
            }
            i1 = 1;
            d = i2;
            continue;
          }
          if (str.equalsIgnoreCase("c"))
          {
            str = paramJSONObject.getString("c");
            if (str.length() <= 0) {
              continue;
            }
            b = new JSONObject(str);
            continue;
          }
        }
      }
      catch (JSONException paramContext)
      {
        String str;
        p.e(paramContext);
        return;
        if (!str.equalsIgnoreCase("m")) {
          continue;
        }
        c = paramJSONObject.getString("m");
        continue;
      }
      catch (Throwable paramContext)
      {
        p.e(paramContext);
        return;
      }
      if (i1 == 1)
      {
        paramJSONObject = au.a(i.a());
        if (paramJSONObject != null) {
          paramJSONObject.a(paramF);
        }
        if (a == ba)
        {
          a(b);
          b(b);
        }
      }
      a(paramContext, paramF);
      return;
    }
  }
  
  static void a(Context paramContext, String paramString)
  {
    if (paramString != null) {
      p.b(paramContext, "_mta_ky_tag_", q.b(paramString));
    }
  }
  
  static void a(Context paramContext, JSONObject paramJSONObject)
  {
    for (;;)
    {
      try
      {
        Iterator localIterator = paramJSONObject.keys();
        if (localIterator.hasNext())
        {
          localObject = (String)localIterator.next();
          if (((String)localObject).equalsIgnoreCase(Integer.toString(ba)))
          {
            localObject = paramJSONObject.getJSONObject((String)localObject);
            a(paramContext, b, (JSONObject)localObject);
          }
        }
        else
        {
          return;
        }
      }
      catch (JSONException paramContext)
      {
        p.e(paramContext);
      }
      do
      {
        if (((String)localObject).equalsIgnoreCase(Integer.toString(aa)))
        {
          localObject = paramJSONObject.getJSONObject((String)localObject);
          a(paramContext, a, (JSONObject)localObject);
          break;
        }
      } while (!((String)localObject).equalsIgnoreCase("rs"));
      Object localObject = StatReportStrategy.getStatReportStrategy(paramJSONObject.getInt((String)localObject));
      if (localObject != null)
      {
        q = (StatReportStrategy)localObject;
        if (isDebugEnable()) {
          p.d("Change to ReportStrategy:" + ((StatReportStrategy)localObject).name());
        }
      }
    }
  }
  
  static void a(JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject = StatReportStrategy.getStatReportStrategy(paramJSONObject.getInt("rs"));
      if (paramJSONObject != null) {
        setStatSendStrategy(paramJSONObject);
      }
      return;
    }
    catch (JSONException paramJSONObject)
    {
      while (!isDebugEnable()) {}
      p.i("rs not found.");
    }
  }
  
  static boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    return (paramInt1 >= paramInt2) && (paramInt1 <= paramInt3);
  }
  
  private static boolean a(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      if (B == null)
      {
        B = paramString;
        return true;
      }
    } while (B.contains(paramString));
    B = B + "|" + paramString;
    return true;
  }
  
  static boolean a(JSONObject paramJSONObject, String paramString1, String paramString2)
  {
    if (!paramJSONObject.isNull(paramString1))
    {
      paramJSONObject = paramJSONObject.optString(paramString1);
      if ((k.c(paramString2)) && (k.c(paramJSONObject)) && (paramString2.equalsIgnoreCase(paramJSONObject))) {
        return true;
      }
    }
    return false;
  }
  
  static void b()
  {
    M += 1;
  }
  
  static void b(int paramInt)
  {
    if (paramInt < 0) {
      return;
    }
    M = paramInt;
  }
  
  static void b(Context paramContext, JSONObject paramJSONObject)
  {
    for (;;)
    {
      Object localObject;
      int i1;
      try
      {
        paramJSONObject = paramJSONObject.optString(e);
        if (!k.c(paramJSONObject)) {
          break;
        }
        paramJSONObject = new JSONObject(paramJSONObject);
        if (paramJSONObject.length() == 0) {
          return;
        }
        if (!paramJSONObject.isNull("sm"))
        {
          localObject = paramJSONObject.get("sm");
          if (!(localObject instanceof Integer)) {
            break label531;
          }
          i1 = ((Integer)localObject).intValue();
          if (i1 > 0)
          {
            if (isDebugEnable()) {
              p.i("match sleepTime:" + i1 + " minutes");
            }
            long l1 = System.currentTimeMillis();
            long l2 = i1 * 60 * 1000;
            p.b(paramContext, d, l1 + l2);
            setEnableStatService(false);
            p.warn("MTA is disable for current SDK version");
          }
        }
        if (!a(paramJSONObject, "sv", "2.0.3")) {
          break label554;
        }
        p.i("match sdk version:2.0.3");
        i1 = 1;
        if (a(paramJSONObject, "md", Build.MODEL))
        {
          p.i("match MODEL:" + Build.MODEL);
          i1 = 1;
        }
        if (a(paramJSONObject, "av", k.j(paramContext)))
        {
          p.i("match app version:" + k.j(paramContext));
          i1 = 1;
        }
        if (a(paramJSONObject, "mf", Build.MANUFACTURER))
        {
          p.i("match MANUFACTURER:" + Build.MANUFACTURER);
          i1 = 1;
        }
        if (a(paramJSONObject, "osv", Build.VERSION.SDK_INT))
        {
          p.i("match android SDK version:" + Build.VERSION.SDK_INT);
          i1 = 1;
        }
        if (a(paramJSONObject, "ov", Build.VERSION.SDK_INT))
        {
          p.i("match android SDK version:" + Build.VERSION.SDK_INT);
          i1 = 1;
        }
        if (a(paramJSONObject, "ui", au.a(paramContext).b(paramContext).b()))
        {
          p.i("match imei:" + au.a(paramContext).b(paramContext).b());
          i1 = 1;
        }
        if (a(paramJSONObject, "mid", getLocalMidOnly(paramContext)))
        {
          p.i("match mid:" + getLocalMidOnly(paramContext));
          i1 = 1;
        }
        if (i1 == 0) {
          break;
        }
        a(k.b("2.0.3"));
        return;
      }
      catch (Exception paramContext)
      {
        p.e(paramContext);
        return;
      }
      label531:
      if ((localObject instanceof String))
      {
        i1 = Integer.valueOf((String)localObject).intValue();
        continue;
        label554:
        i1 = 0;
      }
      else
      {
        i1 = 0;
      }
    }
  }
  
  static void b(JSONObject paramJSONObject)
  {
    if ((paramJSONObject == null) || (paramJSONObject.length() == 0)) {}
    for (;;)
    {
      return;
      try
      {
        b(i.a(), paramJSONObject);
        paramJSONObject = paramJSONObject.getString(c);
        if (isDebugEnable()) {
          p.d("hibernateVer:" + paramJSONObject + ", current version:2.0.3");
        }
        long l1 = k.b(paramJSONObject);
        if (k.b("2.0.3") <= l1)
        {
          a(l1);
          return;
        }
      }
      catch (JSONException paramJSONObject)
      {
        p.d("__HIBERNATE__ not found.");
      }
    }
  }
  
  static int c()
  {
    return M;
  }
  
  /* Error */
  public static String getAppKey(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 362	com/tencent/wxop/stat/StatConfig:B	Ljava/lang/String;
    //   6: ifnull +12 -> 18
    //   9: getstatic 362	com/tencent/wxop/stat/StatConfig:B	Ljava/lang/String;
    //   12: astore_0
    //   13: ldc 2
    //   15: monitorexit
    //   16: aload_0
    //   17: areturn
    //   18: aload_0
    //   19: ifnull +16 -> 35
    //   22: getstatic 362	com/tencent/wxop/stat/StatConfig:B	Ljava/lang/String;
    //   25: ifnonnull +10 -> 35
    //   28: aload_0
    //   29: invokestatic 479	com/tencent/wxop/stat/common/k:f	(Landroid/content/Context;)Ljava/lang/String;
    //   32: putstatic 362	com/tencent/wxop/stat/StatConfig:B	Ljava/lang/String;
    //   35: getstatic 362	com/tencent/wxop/stat/StatConfig:B	Ljava/lang/String;
    //   38: ifnull +15 -> 53
    //   41: getstatic 362	com/tencent/wxop/stat/StatConfig:B	Ljava/lang/String;
    //   44: invokevirtual 482	java/lang/String:trim	()Ljava/lang/String;
    //   47: invokevirtual 299	java/lang/String:length	()I
    //   50: ifne +12 -> 62
    //   53: getstatic 65	com/tencent/wxop/stat/StatConfig:p	Lcom/tencent/wxop/stat/common/StatLogger;
    //   56: ldc_w 484
    //   59: invokevirtual 487	com/tencent/wxop/stat/common/StatLogger:error	(Ljava/lang/Object;)V
    //   62: getstatic 362	com/tencent/wxop/stat/StatConfig:B	Ljava/lang/String;
    //   65: astore_0
    //   66: goto -53 -> 13
    //   69: astore_0
    //   70: ldc 2
    //   72: monitorexit
    //   73: aload_0
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   3	13	69	finally
    //   22	35	69	finally
    //   35	53	69	finally
    //   53	62	69	finally
    //   62	66	69	finally
  }
  
  public static int getCurSessionStatReportCount()
  {
    return K;
  }
  
  public static g getCustomLogger()
  {
    return S;
  }
  
  public static String getCustomProperty(String paramString)
  {
    try
    {
      paramString = ab.getString(paramString);
      return paramString;
    }
    catch (Throwable paramString)
    {
      p.e(paramString);
    }
    return null;
  }
  
  public static String getCustomProperty(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = ab.getString(paramString1);
      if (paramString1 != null) {
        paramString2 = paramString1;
      }
      return paramString2;
    }
    catch (Throwable paramString1)
    {
      p.e(paramString1);
    }
    return paramString2;
  }
  
  public static String getCustomUserId(Context paramContext)
  {
    if (paramContext == null)
    {
      p.error("Context for getCustomUid is null.");
      return null;
    }
    if (Q == null) {
      Q = p.a(paramContext, "MTA_CUSTOM_UID", "");
    }
    return Q;
  }
  
  public static long getFlushDBSpaceMS()
  {
    return n;
  }
  
  /* Error */
  public static String getInstallChannel(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 500	com/tencent/wxop/stat/StatConfig:C	Ljava/lang/String;
    //   6: ifnull +12 -> 18
    //   9: getstatic 500	com/tencent/wxop/stat/StatConfig:C	Ljava/lang/String;
    //   12: astore_0
    //   13: ldc 2
    //   15: monitorexit
    //   16: aload_0
    //   17: areturn
    //   18: aload_0
    //   19: getstatic 119	com/tencent/wxop/stat/StatConfig:D	Ljava/lang/String;
    //   22: ldc 121
    //   24: invokestatic 193	com/tencent/wxop/stat/common/p:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   27: astore_1
    //   28: aload_1
    //   29: putstatic 500	com/tencent/wxop/stat/StatConfig:C	Ljava/lang/String;
    //   32: aload_1
    //   33: ifnull +15 -> 48
    //   36: getstatic 500	com/tencent/wxop/stat/StatConfig:C	Ljava/lang/String;
    //   39: invokevirtual 482	java/lang/String:trim	()Ljava/lang/String;
    //   42: invokevirtual 299	java/lang/String:length	()I
    //   45: ifne +10 -> 55
    //   48: aload_0
    //   49: invokestatic 502	com/tencent/wxop/stat/common/k:g	(Landroid/content/Context;)Ljava/lang/String;
    //   52: putstatic 500	com/tencent/wxop/stat/StatConfig:C	Ljava/lang/String;
    //   55: getstatic 500	com/tencent/wxop/stat/StatConfig:C	Ljava/lang/String;
    //   58: ifnull +15 -> 73
    //   61: getstatic 500	com/tencent/wxop/stat/StatConfig:C	Ljava/lang/String;
    //   64: invokevirtual 482	java/lang/String:trim	()Ljava/lang/String;
    //   67: invokevirtual 299	java/lang/String:length	()I
    //   70: ifne +12 -> 82
    //   73: getstatic 65	com/tencent/wxop/stat/StatConfig:p	Lcom/tencent/wxop/stat/common/StatLogger;
    //   76: ldc_w 504
    //   79: invokevirtual 229	com/tencent/wxop/stat/common/StatLogger:w	(Ljava/lang/Object;)V
    //   82: getstatic 500	com/tencent/wxop/stat/StatConfig:C	Ljava/lang/String;
    //   85: astore_0
    //   86: goto -73 -> 13
    //   89: astore_0
    //   90: ldc 2
    //   92: monitorexit
    //   93: aload_0
    //   94: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	95	0	paramContext	Context
    //   27	6	1	str	String
    // Exception table:
    //   from	to	target	type
    //   3	13	89	finally
    //   18	32	89	finally
    //   36	48	89	finally
    //   48	55	89	finally
    //   55	73	89	finally
    //   73	82	89	finally
    //   82	86	89	finally
  }
  
  public static String getLocalMidOnly(Context paramContext)
  {
    if (paramContext != null) {
      return com.tencent.a.a.a.a.g.E(paramContext).p().a();
    }
    return "0";
  }
  
  public static int getMaxBatchReportCount()
  {
    return y;
  }
  
  public static int getMaxDaySessionNumbers()
  {
    return L;
  }
  
  public static int getMaxImportantDataSendRetryCount()
  {
    return x;
  }
  
  public static int getMaxParallelTimmingEvents()
  {
    return F;
  }
  
  public static int getMaxReportEventLength()
  {
    return O;
  }
  
  public static int getMaxSendRetryCount()
  {
    return w;
  }
  
  public static int getMaxSessionStatReportCount()
  {
    return J;
  }
  
  public static int getMaxStoreEventCount()
  {
    return u;
  }
  
  public static String getMid(Context paramContext)
  {
    return getLocalMidOnly(paramContext);
  }
  
  public static long getMsPeriodForMethodsCalledLimitClear()
  {
    return i;
  }
  
  public static int getNumEventsCachedInMemory()
  {
    return m;
  }
  
  public static int getNumEventsCommitPerSec()
  {
    return z;
  }
  
  public static int getNumOfMethodsCalledLimit()
  {
    return h;
  }
  
  public static String getQQ(Context paramContext)
  {
    return p.a(paramContext, "mta.acc.qq", f);
  }
  
  public static int getReportCompressedSize()
  {
    return o;
  }
  
  public static int getSendPeriodMinutes()
  {
    return E;
  }
  
  public static int getSessionTimoutMillis()
  {
    return t;
  }
  
  public static String getStatReportHost()
  {
    return k;
  }
  
  public static String getStatReportUrl()
  {
    return I;
  }
  
  public static StatReportStrategy getStatSendStrategy()
  {
    return q;
  }
  
  public static boolean isAutoExceptionCaught()
  {
    return isAutoExceptionCaught;
  }
  
  public static boolean isDebugEnable()
  {
    return r;
  }
  
  public static boolean isEnableConcurrentProcess()
  {
    return P;
  }
  
  public static boolean isEnableSmartReporting()
  {
    return j;
  }
  
  public static boolean isEnableStatService()
  {
    return s;
  }
  
  public static boolean isReportEventsByOrder()
  {
    return l;
  }
  
  public static boolean isXGProMode()
  {
    return R;
  }
  
  public static void setAppKey(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      p.error("ctx in StatConfig.setAppKey() is null");
    }
    do
    {
      return;
      if ((paramString == null) || (paramString.length() > 256))
      {
        p.error("appkey in StatConfig.setAppKey() is null or exceed 256 bytes");
        return;
      }
      if (B == null) {
        B = a(paramContext);
      }
    } while (!(a(paramString) | a(k.f(paramContext))));
    a(paramContext, B);
  }
  
  public static void setAppKey(String paramString)
  {
    if (paramString == null)
    {
      p.error("appkey in StatConfig.setAppKey() is null");
      return;
    }
    if (paramString.length() > 256)
    {
      p.error("The length of appkey cann't exceed 256 bytes.");
      return;
    }
    B = paramString;
  }
  
  public static void setAutoExceptionCaught(boolean paramBoolean)
  {
    isAutoExceptionCaught = paramBoolean;
  }
  
  public static void setCustomLogger(g paramG)
  {
    S = paramG;
  }
  
  public static void setCustomUserId(Context paramContext, String paramString)
  {
    if (paramContext == null)
    {
      p.error("Context for setCustomUid is null.");
      return;
    }
    p.b(paramContext, "MTA_CUSTOM_UID", paramString);
    Q = paramString;
  }
  
  public static void setDebugEnable(boolean paramBoolean)
  {
    r = paramBoolean;
    k.b().setDebugEnable(paramBoolean);
  }
  
  public static void setEnableConcurrentProcess(boolean paramBoolean)
  {
    P = paramBoolean;
  }
  
  public static void setEnableSmartReporting(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public static void setEnableStatService(boolean paramBoolean)
  {
    s = paramBoolean;
    if (!paramBoolean) {
      p.warn("!!!!!!MTA StatService has been disabled!!!!!!");
    }
  }
  
  public static void setFlushDBSpaceMS(long paramLong)
  {
    if (paramLong > 0L) {
      n = paramLong;
    }
  }
  
  public static void setInstallChannel(Context paramContext, String paramString)
  {
    if (paramString.length() > 128)
    {
      p.error("the length of installChannel can not exceed the range of 128 bytes.");
      return;
    }
    C = paramString;
    p.b(paramContext, D, paramString);
  }
  
  public static void setInstallChannel(String paramString)
  {
    if (paramString.length() > 128)
    {
      p.error("the length of installChannel can not exceed the range of 128 bytes.");
      return;
    }
    C = paramString;
  }
  
  public static void setMaxBatchReportCount(int paramInt)
  {
    if (!a(paramInt, 2, 1000))
    {
      p.error("setMaxBatchReportCount can not exceed the range of [2,1000].");
      return;
    }
    y = paramInt;
  }
  
  public static void setMaxDaySessionNumbers(int paramInt)
  {
    if (paramInt <= 0)
    {
      p.e("maxDaySessionNumbers must be greater than 0.");
      return;
    }
    L = paramInt;
  }
  
  public static void setMaxImportantDataSendRetryCount(int paramInt)
  {
    if (paramInt > 100) {
      x = paramInt;
    }
  }
  
  public static void setMaxParallelTimmingEvents(int paramInt)
  {
    if (!a(paramInt, 1, 4096))
    {
      p.error("setMaxParallelTimmingEvents can not exceed the range of [1, 4096].");
      return;
    }
    F = paramInt;
  }
  
  public static void setMaxReportEventLength(int paramInt)
  {
    if (paramInt <= 0)
    {
      p.error("maxReportEventLength on setMaxReportEventLength() must greater than 0.");
      return;
    }
    O = paramInt;
  }
  
  public static void setMaxSendRetryCount(int paramInt)
  {
    if (!a(paramInt, 1, 1000))
    {
      p.error("setMaxSendRetryCount can not exceed the range of [1,1000].");
      return;
    }
    w = paramInt;
  }
  
  public static void setMaxSessionStatReportCount(int paramInt)
  {
    if (paramInt < 0)
    {
      p.error("maxSessionStatReportCount cannot be less than 0.");
      return;
    }
    J = paramInt;
  }
  
  public static void setMaxStoreEventCount(int paramInt)
  {
    if (!a(paramInt, 0, 500000))
    {
      p.error("setMaxStoreEventCount can not exceed the range of [0, 500000].");
      return;
    }
    u = paramInt;
  }
  
  public static void setNumEventsCachedInMemory(int paramInt)
  {
    if (paramInt >= 0) {
      m = paramInt;
    }
  }
  
  public static void setNumEventsCommitPerSec(int paramInt)
  {
    if (paramInt > 0) {
      z = paramInt;
    }
  }
  
  public static void setNumOfMethodsCalledLimit(int paramInt, long paramLong)
  {
    h = paramInt;
    if (paramLong >= 1000L) {
      i = paramLong;
    }
  }
  
  public static void setQQ(Context paramContext, String paramString)
  {
    p.b(paramContext, "mta.acc.qq", paramString);
    f = paramString;
  }
  
  public static void setReportCompressedSize(int paramInt)
  {
    if (paramInt > 0) {
      o = paramInt;
    }
  }
  
  public static void setReportEventsByOrder(boolean paramBoolean)
  {
    l = paramBoolean;
  }
  
  public static void setSendPeriodMinutes(int paramInt)
  {
    if (!a(paramInt, 1, 10080))
    {
      p.error("setSendPeriodMinutes can not exceed the range of [1, 7*24*60] minutes.");
      return;
    }
    E = paramInt;
  }
  
  public static void setSessionTimoutMillis(int paramInt)
  {
    if (!a(paramInt, 1000, 86400000))
    {
      p.error("setSessionTimoutMillis can not exceed the range of [1000, 24 * 60 * 60 * 1000].");
      return;
    }
    t = paramInt;
  }
  
  public static void setStatReportUrl(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      p.error("statReportUrl cannot be null or empty.");
    }
    for (;;)
    {
      return;
      I = paramString;
      try
      {
        k = new URI(I).getHost();
        if (!isDebugEnable()) {
          continue;
        }
        p.i("url:" + I + ", domain:" + k);
        return;
      }
      catch (Exception paramString)
      {
        for (;;)
        {
          p.w(paramString);
        }
      }
    }
  }
  
  public static void setStatSendStrategy(StatReportStrategy paramStatReportStrategy)
  {
    q = paramStatReportStrategy;
    if (paramStatReportStrategy != StatReportStrategy.PERIOD) {
      StatServiceImpl.c = 0L;
    }
    if (isDebugEnable()) {
      p.d("Change to statSendStrategy: " + paramStatReportStrategy);
    }
  }
  
  public static void setXGProMode(boolean paramBoolean)
  {
    R = paramBoolean;
  }
}
