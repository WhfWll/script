package cn.dm.download.util;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Environment;
import cn.dm.download.bean.DownloadAppInfo;
import java.io.File;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class c
{
  private static final String aB = "wifi";
  private static final String aC = "ctwap";
  private static b j = new b(c.class.getSimpleName());
  
  public c() {}
  
  private static int a(long paramLong1, long paramLong2)
  {
    try
    {
      int i = Integer.parseInt(String.valueOf(100L * paramLong1 / paramLong2));
      return i;
    }
    catch (Exception localException)
    {
      b localB = j;
      localException.getMessage();
    }
    return 0;
  }
  
  public static int a(Context paramContext, String paramString)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      if (paramContext != null)
      {
        int i = versionCode;
        return i;
      }
    }
    catch (Exception paramContext)
    {
      paramString = j;
      new StringBuilder("通过包名获取版本号出错:").append(paramContext.getMessage());
    }
    return -1;
  }
  
  public static long a(String paramString, Context paramContext)
  {
    try
    {
      paramString = new URL(paramString);
      paramContext = f(paramContext);
      if (paramContext != null) {}
      for (paramString = (HttpURLConnection)paramString.openConnection(paramContext);; paramString = (HttpURLConnection)paramString.openConnection())
      {
        paramString.setRequestMethod("HEAD");
        i = paramString.getResponseCode();
        if ((i >= 200) && (i < 300)) {
          break;
        }
        return Constants.DownloadUrlWrong;
      }
      int i = paramString.getContentLength();
      return i;
    }
    catch (Exception paramString)
    {
      paramContext = j;
      paramString.getMessage();
    }
    return Constants.DownloadUrlWrong;
  }
  
  public static String a(Context paramContext, DownloadAppInfo paramDownloadAppInfo)
  {
    return g(paramContext) + paramDownloadAppInfo.getPkgName() + ".apk";
  }
  
  private static String d(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1) {
      paramContext = "";
    }
    int i;
    String str;
    do
    {
      return paramContext;
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (paramContext == null) {
        break label63;
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
    label63:
    return "";
  }
  
  private static Cursor e(Context paramContext)
  {
    for (;;)
    {
      int i;
      try
      {
        if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1) {
          break label110;
        }
        localObject = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (localObject == null) {
          break label110;
        }
        i = ((NetworkInfo)localObject).getType();
        if (i != 0) {
          break label99;
        }
        localObject = ((NetworkInfo)localObject).getSubtypeName();
        if (localObject != null)
        {
          if ((localObject != null) && (((String)localObject).equals("wifi"))) {
            return null;
          }
          localObject = Uri.parse("content://telephony/carriers/preferapn");
          paramContext = paramContext.getContentResolver().query((Uri)localObject, null, null, null, null);
          return paramContext;
        }
      }
      catch (Exception paramContext)
      {
        localObject = j;
        paramContext.getMessage();
        return null;
      }
      Object localObject = "GPRS";
      continue;
      label99:
      if (i == 1) {
        localObject = "wifi";
      } else {
        label110:
        localObject = "";
      }
    }
  }
  
  /* Error */
  public static java.net.Proxy f(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aload_0
    //   7: invokestatic 191	cn/dm/download/util/c:e	(Landroid/content/Context;)Landroid/database/Cursor;
    //   10: astore_0
    //   11: aload_0
    //   12: ifnull +157 -> 169
    //   15: aload_0
    //   16: invokeinterface 196 1 0
    //   21: ifle +148 -> 169
    //   24: aload_0
    //   25: invokeinterface 200 1 0
    //   30: pop
    //   31: aload_0
    //   32: aload_0
    //   33: ldc -54
    //   35: invokeinterface 205 2 0
    //   40: invokeinterface 209 2 0
    //   45: astore 4
    //   47: aload_0
    //   48: aload_0
    //   49: ldc -45
    //   51: invokeinterface 205 2 0
    //   56: invokeinterface 215 2 0
    //   61: istore_1
    //   62: aload_0
    //   63: aload_0
    //   64: ldc -39
    //   66: invokeinterface 205 2 0
    //   71: invokeinterface 209 2 0
    //   76: astore 6
    //   78: aload 5
    //   80: astore_2
    //   81: aload_0
    //   82: astore_3
    //   83: aload 4
    //   85: ifnull +65 -> 150
    //   88: aload 5
    //   90: astore_2
    //   91: aload_0
    //   92: astore_3
    //   93: aload 4
    //   95: ldc -115
    //   97: invokevirtual 169	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   100: ifne +50 -> 150
    //   103: aload 5
    //   105: astore_2
    //   106: aload_0
    //   107: astore_3
    //   108: iload_1
    //   109: ifeq +41 -> 150
    //   112: aload 5
    //   114: astore_2
    //   115: aload_0
    //   116: astore_3
    //   117: aload 6
    //   119: ldc 11
    //   121: invokevirtual 221	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   124: ifne +26 -> 150
    //   127: new 223	java/net/Proxy
    //   130: dup
    //   131: getstatic 229	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   134: new 231	java/net/InetSocketAddress
    //   137: dup
    //   138: aload 4
    //   140: iload_1
    //   141: invokespecial 234	java/net/InetSocketAddress:<init>	(Ljava/lang/String;I)V
    //   144: invokespecial 237	java/net/Proxy:<init>	(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    //   147: astore_2
    //   148: aload_0
    //   149: astore_3
    //   150: aload_2
    //   151: astore 4
    //   153: aload_3
    //   154: ifnull +12 -> 166
    //   157: aload_3
    //   158: invokeinterface 240 1 0
    //   163: aload_2
    //   164: astore 4
    //   166: aload 4
    //   168: areturn
    //   169: aload_0
    //   170: ifnull -4 -> 166
    //   173: aload_0
    //   174: invokeinterface 240 1 0
    //   179: aconst_null
    //   180: areturn
    //   181: astore_2
    //   182: getstatic 29	cn/dm/download/util/c:j	Lcn/dm/download/util/b;
    //   185: astore_3
    //   186: aload_2
    //   187: invokevirtual 53	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   190: pop
    //   191: aload 5
    //   193: astore_2
    //   194: aload_0
    //   195: astore_3
    //   196: goto -46 -> 150
    //   199: astore_2
    //   200: aconst_null
    //   201: astore_0
    //   202: getstatic 29	cn/dm/download/util/c:j	Lcn/dm/download/util/b;
    //   205: astore_3
    //   206: aload_2
    //   207: invokevirtual 241	java/lang/Error:getMessage	()Ljava/lang/String;
    //   210: pop
    //   211: aload 5
    //   213: astore_2
    //   214: aload_0
    //   215: astore_3
    //   216: goto -66 -> 150
    //   219: astore_2
    //   220: goto -18 -> 202
    //   223: astore_2
    //   224: aconst_null
    //   225: astore_0
    //   226: goto -44 -> 182
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	229	0	paramContext	Context
    //   61	80	1	i	int
    //   80	84	2	localObject1	Object
    //   181	6	2	localException1	Exception
    //   193	1	2	localObject2	Object
    //   199	8	2	localError1	Error
    //   213	1	2	localObject3	Object
    //   219	1	2	localError2	Error
    //   223	1	2	localException2	Exception
    //   82	134	3	localObject4	Object
    //   1	166	4	localObject5	Object
    //   4	208	5	localObject6	Object
    //   76	42	6	str	String
    // Exception table:
    //   from	to	target	type
    //   15	78	181	java/lang/Exception
    //   93	103	181	java/lang/Exception
    //   117	148	181	java/lang/Exception
    //   173	179	181	java/lang/Exception
    //   6	11	199	java/lang/Error
    //   15	78	219	java/lang/Error
    //   93	103	219	java/lang/Error
    //   117	148	219	java/lang/Error
    //   173	179	219	java/lang/Error
    //   6	11	223	java/lang/Exception
  }
  
  public static String g(Context paramContext)
  {
    if (s()) {
      return Environment.getExternalStorageDirectory() + File.separator + Constants.DefaultStorageFile + File.separator;
    }
    return paramContext.getFilesDir().getAbsolutePath() + File.separator + Constants.DefaultStorageFile + File.separator;
  }
  
  public static ArrayList h(Context paramContext)
  {
    paramContext = paramContext.getPackageManager();
    Object localObject = paramContext.getInstalledPackages(0);
    ArrayList localArrayList = new ArrayList();
    localObject = ((List)localObject).iterator();
    for (;;)
    {
      if (!((Iterator)localObject).hasNext()) {
        return localArrayList;
      }
      PackageInfo localPackageInfo = (PackageInfo)((Iterator)localObject).next();
      if ((applicationInfo.flags & 0x1) == 0)
      {
        DownloadAppInfo localDownloadAppInfo = new DownloadAppInfo();
        localDownloadAppInfo.setAppName(applicationInfo.loadLabel(paramContext).toString());
        localDownloadAppInfo.setPkgName(packageName);
        localDownloadAppInfo.setVersionCode(versionCode);
        localDownloadAppInfo.setVersionName(versionName);
        localArrayList.add(localDownloadAppInfo);
      }
    }
  }
  
  public static long q(String paramString)
  {
    try
    {
      localObject = new File(paramString);
      b localB = j;
      new StringBuilder("本地文件路径：").append(paramString).append("  ，本地文件是否存在？").append(((File)localObject).exists());
      long l = ((File)localObject).length();
      return l;
    }
    catch (Exception paramString)
    {
      Object localObject = j;
      paramString.getMessage();
    }
    return 0L;
  }
  
  public static boolean r(String paramString)
  {
    return new File(paramString).exists();
  }
  
  public static boolean s()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }
  
  public static boolean s(String paramString)
  {
    paramString = new File(paramString);
    if (paramString.exists()) {
      return paramString.delete();
    }
    return false;
  }
  
  public static boolean t(String paramString)
  {
    paramString = new File(paramString);
    if (!paramString.exists()) {
      return paramString.mkdirs();
    }
    return true;
  }
}
