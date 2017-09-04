package a.a.a.a.a;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Environment;

class d
{
  private static d b = null;
  private static a.a c;
  private static a.b d;
  private static final String g = "/DCacheDownload/";
  private static String h = null;
  private static boolean i = false;
  private cn.domob.android.i.f a = new cn.domob.android.i.f(d.class.getSimpleName());
  private b e = new b();
  private String f = null;
  
  private d() {}
  
  private String a(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0)) {
      try
      {
        paramString = Uri.parse(paramString).getLastPathSegment();
        if ((paramString != null) && (paramString.contains(".")))
        {
          paramString = paramString.substring(paramString.lastIndexOf("."));
          return paramString;
        }
      }
      catch (Exception paramString)
      {
        a.a(paramString);
      }
    }
    return null;
  }
  
  protected static void a(Context paramContext, a.a paramA)
  {
    if (c == null) {
      c = paramA;
    }
    if (f.a().e(paramContext)) {
      d();
    }
    f.a().f(paramContext);
    b().f(paramContext);
    b().d(paramContext);
  }
  
  protected static d b()
  {
    try
    {
      if (b == null) {
        b = new d();
      }
      d localD = b;
      return localD;
    }
    finally {}
  }
  
  protected static a.b c()
  {
    return d;
  }
  
  protected static void d()
  {
    if (c != null) {
      c.a();
    }
  }
  
  private boolean g(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1) {
      return false;
    }
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (paramContext != null) && (paramContext.getType() == 1);
  }
  
  protected String a(Context paramContext)
  {
    if (a()) {
      return Environment.getExternalStorageDirectory() + b(paramContext);
    }
    return null;
  }
  
  protected void a(a.b paramB)
  {
    if (d == null) {
      d = paramB;
    }
  }
  
  protected void a(Context paramContext, Object paramObject, int paramInt)
  {
    if ((d != null) && (paramObject != null)) {}
    try
    {
      paramObject = (a)paramObject;
      if (paramObject != null)
      {
        String str1 = paramObject.a();
        String str2 = paramObject.b();
        a.d(String.format("download failed errorCode: %d, groupID: %s, resourceID: %s", new Object[] { Integer.valueOf(paramInt), str1, str2 }));
        paramContext = b(paramContext, paramObject.a());
        paramContext = new e(str1, str2, paramContext[0], paramContext[1], paramContext[2]);
        if (paramContext.a())
        {
          if (paramInt != 3) {
            break label131;
          }
          d.f(paramContext);
        }
      }
      return;
    }
    catch (Exception paramObject)
    {
      label131:
      do
      {
        for (;;)
        {
          a.a(paramObject);
          paramObject = null;
        }
        if (paramInt == 2)
        {
          d.e(paramContext);
          return;
        }
        if (paramInt == 1)
        {
          d.d(paramContext);
          return;
        }
      } while (paramInt != 4);
      d.c(paramContext);
    }
  }
  
  protected void a(Context paramContext, Object paramObject, String paramString, long paramLong, boolean paramBoolean)
  {
    Object localObject1 = (a)paramObject;
    paramObject = ((a)localObject1).a();
    localObject1 = ((a)localObject1).b();
    a.a(String.format("download successfully groupid:%s  resourceID:%s  localPath:%s  fileSize: %d", new Object[] { paramObject, localObject1, paramString, Long.valueOf(paramLong) }));
    Object localObject2 = new ContentValues();
    ((ContentValues)localObject2).put("Path", paramString);
    ((ContentValues)localObject2).put("ContentLength", Long.valueOf(paramLong));
    int j = b.a(paramContext).a("resource", (ContentValues)localObject2, "Rgid = ? and Ridd = ?", new String[] { paramObject, localObject1 });
    if (j == 1)
    {
      a.b("update BD successfully");
      boolean bool = f.a().a(paramContext, paramObject);
      if (bool) {
        f.a().c(paramContext);
      }
      if ((!paramBoolean) || (d == null) || ((!bool) && (!f.a().a(paramString, paramLong)))) {
        break label335;
      }
      paramString = b(paramContext, paramObject);
      localObject2 = new e(paramObject, (String)localObject1, paramString[0], paramString[1], paramString[2]);
      if (a(paramString))
      {
        a.b(String.format("send resource download success report the groupID is %s and resourceID is %s", new Object[] { paramObject, localObject1 }));
        d.a((e)localObject2);
        if (bool)
        {
          a.b(String.format("send group download success report the groupID is %s", new Object[] { paramObject }));
          b = null;
          d.b((e)localObject2);
        }
      }
    }
    for (;;)
    {
      if (!c(paramContext)) {
        d();
      }
      return;
      a.e("update DB failed and the affected row number is " + j);
      break;
      label335:
      a.d("does not meet the conditions of sending download successfully report");
    }
  }
  
  /* Error */
  protected void a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 279	a/a/a/a/a/d:c	(Landroid/content/Context;)Z
    //   5: ifne +7 -> 12
    //   8: invokestatic 109	a/a/a/a/a/d:d	()V
    //   11: return
    //   12: new 291	java/lang/StringBuffer
    //   15: dup
    //   16: invokespecial 292	java/lang/StringBuffer:<init>	()V
    //   19: astore 4
    //   21: aload 4
    //   23: ldc_w 294
    //   26: invokevirtual 297	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   29: pop
    //   30: aload 4
    //   32: ldc_w 299
    //   35: invokevirtual 297	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   38: pop
    //   39: aload 4
    //   41: ldc -25
    //   43: invokevirtual 297	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   46: pop
    //   47: aload 4
    //   49: ldc_w 301
    //   52: invokevirtual 297	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   55: pop
    //   56: aload 4
    //   58: invokevirtual 302	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   61: astore 4
    //   63: aload_1
    //   64: invokestatic 245	a/a/a/a/a/b:a	(Landroid/content/Context;)La/a/a/a/a/b;
    //   67: ldc -9
    //   69: iconst_2
    //   70: anewarray 66	java/lang/String
    //   73: dup
    //   74: iconst_0
    //   75: ldc_w 304
    //   78: aastore
    //   79: dup
    //   80: iconst_1
    //   81: ldc_w 306
    //   84: aastore
    //   85: aload 4
    //   87: iconst_2
    //   88: anewarray 66	java/lang/String
    //   91: dup
    //   92: iconst_0
    //   93: aload_2
    //   94: aastore
    //   95: dup
    //   96: iconst_1
    //   97: ldc_w 308
    //   100: aastore
    //   101: ldc_w 310
    //   104: aconst_null
    //   105: invokevirtual 313	a/a/a/a/a/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   108: astore 5
    //   110: aload 5
    //   112: ifnull +380 -> 492
    //   115: aload 5
    //   117: astore 4
    //   119: aload 5
    //   121: invokeinterface 318 1 0
    //   126: pop
    //   127: aload 5
    //   129: astore 4
    //   131: aload_0
    //   132: getfield 53	a/a/a/a/a/d:a	Lcn/domob/android/i/f;
    //   135: ldc_w 320
    //   138: iconst_1
    //   139: anewarray 4	java/lang/Object
    //   142: dup
    //   143: iconst_0
    //   144: aload 5
    //   146: invokeinterface 323 1 0
    //   151: invokestatic 190	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   154: aastore
    //   155: invokestatic 194	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   158: invokevirtual 256	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   161: iconst_0
    //   162: istore_3
    //   163: aload 5
    //   165: astore 4
    //   167: iload_3
    //   168: aload 5
    //   170: invokeinterface 323 1 0
    //   175: if_icmpge +317 -> 492
    //   178: aload 5
    //   180: astore 4
    //   182: aload_0
    //   183: aload_1
    //   184: invokevirtual 325	a/a/a/a/a/d:e	(Landroid/content/Context;)Ljava/lang/String;
    //   187: astore 6
    //   189: aload 6
    //   191: ifnull +363 -> 554
    //   194: aload 5
    //   196: astore 4
    //   198: aload 6
    //   200: invokevirtual 70	java/lang/String:length	()I
    //   203: ifne +6 -> 209
    //   206: goto +348 -> 554
    //   209: aload 5
    //   211: astore 4
    //   213: aload 5
    //   215: aload 5
    //   217: ldc_w 304
    //   220: invokeinterface 328 2 0
    //   225: invokeinterface 331 2 0
    //   230: astore 8
    //   232: aload 5
    //   234: astore 4
    //   236: aload 5
    //   238: aload 5
    //   240: ldc_w 306
    //   243: invokeinterface 328 2 0
    //   248: invokeinterface 331 2 0
    //   253: astore 9
    //   255: aload 5
    //   257: astore 4
    //   259: aload_0
    //   260: aload 9
    //   262: invokespecial 333	a/a/a/a/a/d:a	(Ljava/lang/String;)Ljava/lang/String;
    //   265: astore 7
    //   267: aload 7
    //   269: astore 6
    //   271: aload 7
    //   273: ifnonnull +8 -> 281
    //   276: ldc_w 335
    //   279: astore 6
    //   281: aload 5
    //   283: astore 4
    //   285: aload_0
    //   286: getfield 53	a/a/a/a/a/d:a	Lcn/domob/android/i/f;
    //   289: new 157	java/lang/StringBuilder
    //   292: dup
    //   293: invokespecial 158	java/lang/StringBuilder:<init>	()V
    //   296: ldc_w 337
    //   299: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: aload 6
    //   304: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   307: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   310: invokevirtual 256	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   313: aload 5
    //   315: astore 4
    //   317: new 157	java/lang/StringBuilder
    //   320: dup
    //   321: invokespecial 158	java/lang/StringBuilder:<init>	()V
    //   324: aload_0
    //   325: aload_1
    //   326: invokevirtual 170	a/a/a/a/a/d:b	(Landroid/content/Context;)Ljava/lang/String;
    //   329: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: ldc_w 339
    //   335: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   338: aload_2
    //   339: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: ldc_w 339
    //   345: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   348: aload 8
    //   350: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   353: aload 6
    //   355: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   358: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   361: astore 6
    //   363: aload 5
    //   365: astore 4
    //   367: getstatic 99	a/a/a/a/a/d:c	La/a/a/a/a/a$a;
    //   370: ifnull +71 -> 441
    //   373: aload 5
    //   375: astore 4
    //   377: aload_0
    //   378: getfield 53	a/a/a/a/a/d:a	Lcn/domob/android/i/f;
    //   381: ldc_w 341
    //   384: iconst_4
    //   385: anewarray 4	java/lang/Object
    //   388: dup
    //   389: iconst_0
    //   390: aload_2
    //   391: aastore
    //   392: dup
    //   393: iconst_1
    //   394: aload 8
    //   396: aastore
    //   397: dup
    //   398: iconst_2
    //   399: aload 9
    //   401: aastore
    //   402: dup
    //   403: iconst_3
    //   404: aload 6
    //   406: aastore
    //   407: invokestatic 194	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   410: invokevirtual 226	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   413: aload 5
    //   415: astore 4
    //   417: getstatic 99	a/a/a/a/a/d:c	La/a/a/a/a/a$a;
    //   420: aload_1
    //   421: new 8	a/a/a/a/a/d$a
    //   424: dup
    //   425: aload_0
    //   426: aload_2
    //   427: aload 8
    //   429: invokespecial 344	a/a/a/a/a/d$a:<init>	(La/a/a/a/a/d;Ljava/lang/String;Ljava/lang/String;)V
    //   432: aload 9
    //   434: aload 6
    //   436: invokeinterface 347 5 0
    //   441: aload 5
    //   443: astore 4
    //   445: aload 5
    //   447: invokeinterface 350 1 0
    //   452: pop
    //   453: goto +101 -> 554
    //   456: astore_1
    //   457: aload 5
    //   459: astore 4
    //   461: aload_0
    //   462: getfield 53	a/a/a/a/a/d:a	Lcn/domob/android/i/f;
    //   465: aload_1
    //   466: invokevirtual 96	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   469: aload 5
    //   471: ifnull -460 -> 11
    //   474: aload 5
    //   476: invokeinterface 353 1 0
    //   481: ifne -470 -> 11
    //   484: aload 5
    //   486: invokeinterface 356 1 0
    //   491: return
    //   492: aload 5
    //   494: ifnull -483 -> 11
    //   497: aload 5
    //   499: invokeinterface 353 1 0
    //   504: ifne -493 -> 11
    //   507: aload 5
    //   509: invokeinterface 356 1 0
    //   514: return
    //   515: astore_1
    //   516: aconst_null
    //   517: astore 4
    //   519: aload 4
    //   521: ifnull +20 -> 541
    //   524: aload 4
    //   526: invokeinterface 353 1 0
    //   531: ifne +10 -> 541
    //   534: aload 4
    //   536: invokeinterface 356 1 0
    //   541: aload_1
    //   542: athrow
    //   543: astore_1
    //   544: goto -25 -> 519
    //   547: astore_1
    //   548: aconst_null
    //   549: astore 5
    //   551: goto -94 -> 457
    //   554: iload_3
    //   555: iconst_1
    //   556: iadd
    //   557: istore_3
    //   558: goto -395 -> 163
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	561	0	this	d
    //   0	561	1	paramContext	Context
    //   0	561	2	paramString	String
    //   162	396	3	j	int
    //   19	516	4	localObject1	Object
    //   108	442	5	localCursor	android.database.Cursor
    //   187	248	6	localObject2	Object
    //   265	7	7	str1	String
    //   230	198	8	str2	String
    //   253	180	9	str3	String
    // Exception table:
    //   from	to	target	type
    //   119	127	456	java/lang/Exception
    //   131	161	456	java/lang/Exception
    //   167	178	456	java/lang/Exception
    //   182	189	456	java/lang/Exception
    //   198	206	456	java/lang/Exception
    //   213	232	456	java/lang/Exception
    //   236	255	456	java/lang/Exception
    //   259	267	456	java/lang/Exception
    //   285	313	456	java/lang/Exception
    //   317	363	456	java/lang/Exception
    //   367	373	456	java/lang/Exception
    //   377	413	456	java/lang/Exception
    //   417	441	456	java/lang/Exception
    //   445	453	456	java/lang/Exception
    //   63	110	515	finally
    //   119	127	543	finally
    //   131	161	543	finally
    //   167	178	543	finally
    //   182	189	543	finally
    //   198	206	543	finally
    //   213	232	543	finally
    //   236	255	543	finally
    //   259	267	543	finally
    //   285	313	543	finally
    //   317	363	543	finally
    //   367	373	543	finally
    //   377	413	543	finally
    //   417	441	543	finally
    //   445	453	543	finally
    //   461	469	543	finally
    //   63	110	547	java/lang/Exception
  }
  
  protected boolean a()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }
  
  boolean a(String[] paramArrayOfString)
  {
    int j = 0;
    while (j < paramArrayOfString.length) {
      if ((paramArrayOfString[j] != null) && (paramArrayOfString[j].length() > 0))
      {
        j += 1;
      }
      else
      {
        a.d("the download report info can not meet the sending condition, so quit send report " + j);
        return false;
      }
    }
    return true;
  }
  
  protected String b(Context paramContext)
  {
    if ((h == null) || (h.length() == 0)) {
      h = "/DCacheDownload/" + e(paramContext);
    }
    return h;
  }
  
  /* Error */
  String[] b(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: iconst_3
    //   1: anewarray 66	java/lang/String
    //   4: astore 4
    //   6: aload_1
    //   7: invokestatic 245	a/a/a/a/a/b:a	(Landroid/content/Context;)La/a/a/a/a/b;
    //   10: ldc_w 369
    //   13: iconst_3
    //   14: anewarray 66	java/lang/String
    //   17: dup
    //   18: iconst_0
    //   19: ldc_w 371
    //   22: aastore
    //   23: dup
    //   24: iconst_1
    //   25: ldc_w 373
    //   28: aastore
    //   29: dup
    //   30: iconst_2
    //   31: ldc_w 375
    //   34: aastore
    //   35: ldc_w 377
    //   38: iconst_1
    //   39: anewarray 66	java/lang/String
    //   42: dup
    //   43: iconst_0
    //   44: aload_2
    //   45: aastore
    //   46: aconst_null
    //   47: aconst_null
    //   48: invokevirtual 313	a/a/a/a/a/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   51: astore_2
    //   52: aload_2
    //   53: ifnull +87 -> 140
    //   56: aload_2
    //   57: astore_1
    //   58: aload_2
    //   59: invokeinterface 318 1 0
    //   64: ifeq +76 -> 140
    //   67: aload_2
    //   68: astore_1
    //   69: aload_2
    //   70: aload_2
    //   71: ldc_w 371
    //   74: invokeinterface 328 2 0
    //   79: invokeinterface 331 2 0
    //   84: astore_3
    //   85: aload_2
    //   86: astore_1
    //   87: aload_2
    //   88: aload_2
    //   89: ldc_w 373
    //   92: invokeinterface 328 2 0
    //   97: invokeinterface 331 2 0
    //   102: astore 5
    //   104: aload_2
    //   105: astore_1
    //   106: aload_2
    //   107: aload_2
    //   108: ldc_w 375
    //   111: invokeinterface 328 2 0
    //   116: invokeinterface 331 2 0
    //   121: astore 6
    //   123: aload 4
    //   125: iconst_0
    //   126: aload_3
    //   127: aastore
    //   128: aload 4
    //   130: iconst_1
    //   131: aload 5
    //   133: aastore
    //   134: aload 4
    //   136: iconst_2
    //   137: aload 6
    //   139: aastore
    //   140: aload_2
    //   141: ifnull +18 -> 159
    //   144: aload_2
    //   145: invokeinterface 353 1 0
    //   150: ifne +9 -> 159
    //   153: aload_2
    //   154: invokeinterface 356 1 0
    //   159: aload 4
    //   161: areturn
    //   162: astore_3
    //   163: aconst_null
    //   164: astore_2
    //   165: aload_2
    //   166: astore_1
    //   167: aload_0
    //   168: getfield 53	a/a/a/a/a/d:a	Lcn/domob/android/i/f;
    //   171: aload_3
    //   172: invokevirtual 96	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   175: aload_2
    //   176: ifnull -17 -> 159
    //   179: aload_2
    //   180: invokeinterface 353 1 0
    //   185: ifne -26 -> 159
    //   188: aload_2
    //   189: invokeinterface 356 1 0
    //   194: aload 4
    //   196: areturn
    //   197: astore_2
    //   198: aconst_null
    //   199: astore_1
    //   200: aload_1
    //   201: ifnull +18 -> 219
    //   204: aload_1
    //   205: invokeinterface 353 1 0
    //   210: ifne +9 -> 219
    //   213: aload_1
    //   214: invokeinterface 356 1 0
    //   219: aload_2
    //   220: athrow
    //   221: astore_2
    //   222: goto -22 -> 200
    //   225: astore_3
    //   226: goto -61 -> 165
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	229	0	this	d
    //   0	229	1	paramContext	Context
    //   0	229	2	paramString	String
    //   84	43	3	str1	String
    //   162	10	3	localException1	Exception
    //   225	1	3	localException2	Exception
    //   4	191	4	arrayOfString	String[]
    //   102	30	5	str2	String
    //   121	17	6	str3	String
    // Exception table:
    //   from	to	target	type
    //   6	52	162	java/lang/Exception
    //   6	52	197	finally
    //   58	67	221	finally
    //   69	85	221	finally
    //   87	104	221	finally
    //   106	123	221	finally
    //   167	175	221	finally
    //   58	67	225	java/lang/Exception
    //   69	85	225	java/lang/Exception
    //   87	104	225	java/lang/Exception
    //   106	123	225	java/lang/Exception
  }
  
  protected boolean c(Context paramContext)
  {
    boolean bool2 = true;
    boolean bool1 = bool2;
    if (!i)
    {
      bool1 = bool2;
      if (!f(paramContext)) {
        bool1 = false;
      }
    }
    if ((!f.a().a(paramContext)) || (c == null) || (!g(paramContext))) {
      bool1 = false;
    }
    if (bool1)
    {
      a.b("can meet condition to download resource");
      return bool1;
    }
    a.b("can not meet condition to download resource");
    return bool1;
  }
  
  /* Error */
  protected void d(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 53	a/a/a/a/a/d:a	Lcn/domob/android/i/f;
    //   4: ldc_w 387
    //   7: invokevirtual 256	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   10: aload_0
    //   11: aload_1
    //   12: invokevirtual 279	a/a/a/a/a/d:c	(Landroid/content/Context;)Z
    //   15: ifne +7 -> 22
    //   18: invokestatic 109	a/a/a/a/a/d:d	()V
    //   21: return
    //   22: new 291	java/lang/StringBuffer
    //   25: dup
    //   26: invokespecial 292	java/lang/StringBuffer:<init>	()V
    //   29: astore 6
    //   31: aload 6
    //   33: ldc_w 389
    //   36: invokevirtual 297	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   39: pop
    //   40: aload 6
    //   42: ldc_w 391
    //   45: invokevirtual 297	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   48: pop
    //   49: aload 6
    //   51: ldc_w 389
    //   54: invokevirtual 297	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   57: pop
    //   58: aload 6
    //   60: ldc_w 393
    //   63: invokevirtual 297	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   66: pop
    //   67: aload 6
    //   69: lconst_0
    //   70: invokevirtual 396	java/lang/StringBuffer:append	(J)Ljava/lang/StringBuffer;
    //   73: pop
    //   74: invokestatic 402	java/lang/System:currentTimeMillis	()J
    //   77: lstore_3
    //   78: aload_1
    //   79: invokestatic 245	a/a/a/a/a/b:a	(Landroid/content/Context;)La/a/a/a/a/b;
    //   82: astore 5
    //   84: aload 6
    //   86: invokevirtual 302	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   89: astore 6
    //   91: aload 5
    //   93: ldc_w 369
    //   96: iconst_2
    //   97: anewarray 66	java/lang/String
    //   100: dup
    //   101: iconst_0
    //   102: ldc_w 294
    //   105: aastore
    //   106: dup
    //   107: iconst_1
    //   108: ldc_w 404
    //   111: aastore
    //   112: aload 6
    //   114: iconst_1
    //   115: anewarray 66	java/lang/String
    //   118: dup
    //   119: iconst_0
    //   120: lload_3
    //   121: invokestatic 407	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   124: aastore
    //   125: ldc_w 310
    //   128: aconst_null
    //   129: invokevirtual 313	a/a/a/a/a/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   132: astore 6
    //   134: aload 6
    //   136: ifnull +117 -> 253
    //   139: aload 6
    //   141: astore 5
    //   143: aload 6
    //   145: invokeinterface 318 1 0
    //   150: ifeq +103 -> 253
    //   153: iconst_0
    //   154: istore_2
    //   155: aload 6
    //   157: astore 5
    //   159: iload_2
    //   160: aload 6
    //   162: invokeinterface 323 1 0
    //   167: if_icmpge +86 -> 253
    //   170: aload 6
    //   172: astore 5
    //   174: iload_2
    //   175: invokestatic 104	a/a/a/a/a/f:a	()La/a/a/a/a/f;
    //   178: invokevirtual 409	a/a/a/a/a/f:b	()I
    //   181: if_icmpge +65 -> 246
    //   184: aload 6
    //   186: astore 5
    //   188: aload 6
    //   190: aload 6
    //   192: ldc_w 404
    //   195: invokeinterface 328 2 0
    //   200: invokeinterface 413 2 0
    //   205: ifne +29 -> 234
    //   208: aload 6
    //   210: astore 5
    //   212: aload_0
    //   213: aload_1
    //   214: aload 6
    //   216: aload 6
    //   218: ldc_w 294
    //   221: invokeinterface 328 2 0
    //   226: invokeinterface 331 2 0
    //   231: invokevirtual 415	a/a/a/a/a/d:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   234: aload 6
    //   236: astore 5
    //   238: aload 6
    //   240: invokeinterface 350 1 0
    //   245: pop
    //   246: iload_2
    //   247: iconst_1
    //   248: iadd
    //   249: istore_2
    //   250: goto -95 -> 155
    //   253: aload 6
    //   255: ifnull -234 -> 21
    //   258: aload 6
    //   260: invokeinterface 353 1 0
    //   265: ifne -244 -> 21
    //   268: aload 6
    //   270: invokeinterface 356 1 0
    //   275: return
    //   276: astore_1
    //   277: aconst_null
    //   278: astore 6
    //   280: aload 6
    //   282: astore 5
    //   284: aload_0
    //   285: getfield 53	a/a/a/a/a/d:a	Lcn/domob/android/i/f;
    //   288: aload_1
    //   289: invokevirtual 96	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   292: aload 6
    //   294: ifnull -273 -> 21
    //   297: aload 6
    //   299: invokeinterface 353 1 0
    //   304: ifne -283 -> 21
    //   307: aload 6
    //   309: invokeinterface 356 1 0
    //   314: return
    //   315: astore_1
    //   316: aconst_null
    //   317: astore 5
    //   319: aload 5
    //   321: ifnull +20 -> 341
    //   324: aload 5
    //   326: invokeinterface 353 1 0
    //   331: ifne +10 -> 341
    //   334: aload 5
    //   336: invokeinterface 356 1 0
    //   341: aload_1
    //   342: athrow
    //   343: astore_1
    //   344: goto -25 -> 319
    //   347: astore_1
    //   348: goto -68 -> 280
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	351	0	this	d
    //   0	351	1	paramContext	Context
    //   154	96	2	j	int
    //   77	44	3	l	long
    //   82	253	5	localObject1	Object
    //   29	279	6	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   78	134	276	java/lang/Exception
    //   78	134	315	finally
    //   143	153	343	finally
    //   159	170	343	finally
    //   174	184	343	finally
    //   188	208	343	finally
    //   212	234	343	finally
    //   238	246	343	finally
    //   284	292	343	finally
    //   143	153	347	java/lang/Exception
    //   159	170	347	java/lang/Exception
    //   174	184	347	java/lang/Exception
    //   188	208	347	java/lang/Exception
    //   212	234	347	java/lang/Exception
    //   238	246	347	java/lang/Exception
  }
  
  String e(Context paramContext)
  {
    if ((f != null) && (f.length() > 0)) {
      return f;
    }
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      if (localPackageManager != null)
      {
        paramContext = localPackageManager.getPackageInfo(paramContext.getPackageName(), 0);
        if (paramContext != null)
        {
          f = packageName;
          paramContext = f;
          return paramContext;
        }
      }
    }
    catch (Exception paramContext)
    {
      a.a(paramContext);
    }
    return null;
  }
  
  protected boolean f(Context paramContext)
  {
    if (!i)
    {
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
      localIntentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
      localIntentFilter.addAction("android.net.wifi.STATE_CHANGE");
      if (paramContext.getApplicationContext().registerReceiver(e, localIntentFilter) != null)
      {
        i = true;
        return true;
      }
    }
    return false;
  }
  
  protected class a
  {
    private String b;
    private String c;
    
    public a(String paramString1, String paramString2)
    {
      b = paramString1;
      c = paramString2;
    }
    
    public String a()
    {
      return b;
    }
    
    public String b()
    {
      return c;
    }
  }
  
  class b
    extends BroadcastReceiver
  {
    b() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if ("android.net.wifi.STATE_CHANGE".equals(paramIntent.getAction()))
      {
        paramIntent = paramIntent.getParcelableExtra("networkInfo");
        if (paramIntent != null) {
          paramIntent = (NetworkInfo)paramIntent;
        }
      }
      switch (d.1.a[paramIntent.getState().ordinal()])
      {
      case 2: 
      case 4: 
      case 5: 
      case 6: 
      default: 
        return;
      case 1: 
        d.a(d.this).b("detected wifi is connected");
        d(paramContext);
        return;
      }
      d.a(d.this).b("detected wifi is disconnected");
      d.d();
    }
  }
}
