package cn.domob.android.c;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import cn.domob.android.i.f;

public class d
{
  private static f a = new f(d.class.getSimpleName());
  private static final String b = "wifi";
  private static final String c = "ctwap";
  
  public d() {}
  
  protected static String a(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1)
    {
      a.e(d.class.getSimpleName(), "Cannot access user's network type.  Permissions are not set.");
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
  
  /* Error */
  protected static java.net.Proxy b(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_0
    //   6: invokestatic 80	cn/domob/android/c/d:c	(Landroid/content/Context;)Landroid/database/Cursor;
    //   9: astore_0
    //   10: aload_0
    //   11: ifnull +219 -> 230
    //   14: aload_0
    //   15: invokeinterface 85 1 0
    //   20: ifle +210 -> 230
    //   23: aload_0
    //   24: invokeinterface 89 1 0
    //   29: pop
    //   30: aload_0
    //   31: aload_0
    //   32: ldc 91
    //   34: invokeinterface 94 2 0
    //   39: invokeinterface 98 2 0
    //   44: astore_2
    //   45: aload_0
    //   46: aload_0
    //   47: ldc 100
    //   49: invokeinterface 94 2 0
    //   54: invokeinterface 104 2 0
    //   59: istore_1
    //   60: aload_0
    //   61: aload_0
    //   62: ldc 106
    //   64: invokeinterface 94 2 0
    //   69: invokeinterface 98 2 0
    //   74: astore_3
    //   75: getstatic 29	cn/domob/android/c/d:a	Lcn/domob/android/i/f;
    //   78: ldc 2
    //   80: invokevirtual 23	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   83: new 108	java/lang/StringBuilder
    //   86: dup
    //   87: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   90: ldc 111
    //   92: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: aload_2
    //   96: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: ldc 117
    //   101: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: iload_1
    //   105: invokevirtual 120	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   108: ldc 122
    //   110: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: aload_3
    //   114: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: invokevirtual 127	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   123: aload_2
    //   124: ifnull +164 -> 288
    //   127: aload_2
    //   128: ldc 49
    //   130: invokevirtual 133	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   133: ifne +155 -> 288
    //   136: iload_1
    //   137: ifeq +151 -> 288
    //   140: aload_3
    //   141: ldc 13
    //   143: invokevirtual 137	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   146: ifne +142 -> 288
    //   149: getstatic 29	cn/domob/android/c/d:a	Lcn/domob/android/i/f;
    //   152: ldc 2
    //   154: invokevirtual 23	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   157: new 108	java/lang/StringBuilder
    //   160: dup
    //   161: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   164: ldc -117
    //   166: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: aload_2
    //   170: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: ldc -115
    //   175: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   178: iload_1
    //   179: invokevirtual 120	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   182: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   185: invokevirtual 127	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   188: new 143	java/net/Proxy
    //   191: dup
    //   192: getstatic 149	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   195: new 151	java/net/InetSocketAddress
    //   198: dup
    //   199: aload_2
    //   200: iload_1
    //   201: invokespecial 154	java/net/InetSocketAddress:<init>	(Ljava/lang/String;I)V
    //   204: invokespecial 157	java/net/Proxy:<init>	(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    //   207: astore_2
    //   208: aload_2
    //   209: astore_3
    //   210: aload_0
    //   211: astore_2
    //   212: aload_3
    //   213: astore_0
    //   214: aload_0
    //   215: astore_3
    //   216: aload_2
    //   217: ifnull +11 -> 228
    //   220: aload_2
    //   221: invokeinterface 160 1 0
    //   226: aload_0
    //   227: astore_3
    //   228: aload_3
    //   229: areturn
    //   230: aload_0
    //   231: ifnull -3 -> 228
    //   234: aload_0
    //   235: invokeinterface 160 1 0
    //   240: aconst_null
    //   241: areturn
    //   242: astore_3
    //   243: aload_0
    //   244: astore_2
    //   245: aload_3
    //   246: astore_0
    //   247: getstatic 29	cn/domob/android/c/d:a	Lcn/domob/android/i/f;
    //   250: aload_0
    //   251: invokevirtual 163	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   254: aload 4
    //   256: astore_0
    //   257: goto -43 -> 214
    //   260: astore_3
    //   261: aconst_null
    //   262: astore_2
    //   263: getstatic 29	cn/domob/android/c/d:a	Lcn/domob/android/i/f;
    //   266: aload_3
    //   267: invokevirtual 163	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   270: aload 4
    //   272: astore_0
    //   273: goto -59 -> 214
    //   276: astore_3
    //   277: aload_0
    //   278: astore_2
    //   279: goto -16 -> 263
    //   282: astore_0
    //   283: aconst_null
    //   284: astore_2
    //   285: goto -38 -> 247
    //   288: aconst_null
    //   289: astore_2
    //   290: goto -82 -> 208
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	293	0	paramContext	Context
    //   59	142	1	i	int
    //   44	246	2	localObject1	Object
    //   1	228	3	localObject2	Object
    //   242	4	3	localException	Exception
    //   260	7	3	localError1	Error
    //   276	1	3	localError2	Error
    //   3	268	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   14	123	242	java/lang/Exception
    //   127	136	242	java/lang/Exception
    //   140	208	242	java/lang/Exception
    //   234	240	242	java/lang/Exception
    //   5	10	260	java/lang/Error
    //   14	123	276	java/lang/Error
    //   127	136	276	java/lang/Error
    //   140	208	276	java/lang/Error
    //   234	240	276	java/lang/Error
    //   5	10	282	java/lang/Exception
  }
  
  private static Cursor c(Context paramContext)
  {
    Object localObject = a(paramContext);
    if ((localObject != null) && (((String)localObject).equals("wifi")))
    {
      a.a(d.class.getSimpleName(), "Download network is wifi, don't read apn.");
      return null;
    }
    localObject = Uri.parse("content://telephony/carriers/preferapn");
    return paramContext.getContentResolver().query((Uri)localObject, null, null, null, null);
  }
}
