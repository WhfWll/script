package cn.domob.android.offerwall;

import android.content.Context;
import android.database.Cursor;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.HashMap;

class e
  implements Runnable
{
  static final String a = "GET";
  static final String b = "POST";
  static final int c = 20000;
  private static m d = new m(e.class.getSimpleName());
  private static final int t = 4096;
  private static final String u = "ctwap";
  private HttpURLConnection e;
  private Context f;
  private URL g;
  private String h;
  private String i;
  private HashMap<String, String> j;
  private Proxy k;
  private String l;
  private int m;
  private a n;
  private String o;
  private String p;
  private int q;
  private String r;
  private byte[] s;
  
  e(Context paramContext, String paramString, a paramA)
  {
    this(paramContext, paramString, null, null, "GET", null, 20000, paramA);
  }
  
  e(Context paramContext, String paramString1, String paramString2, a paramA)
  {
    this(paramContext, paramString1, null, null, "POST", paramString2, 20000, paramA);
  }
  
  e(Context paramContext, String paramString1, String paramString2, HashMap<String, String> paramHashMap, String paramString3, String paramString4, int paramInt, a paramA)
  {
    f = paramContext;
    i = paramString2;
    j = paramHashMap;
    h = paramString3;
    l = paramString4;
    m = paramInt;
    n = paramA;
    for (;;)
    {
      try
      {
        if (h == null) {
          h = "GET";
        }
        if ((paramString1 == null) || (paramString1.length() == 0)) {
          continue;
        }
        if ((!h.equals("GET")) || (paramString4 == null)) {
          continue;
        }
        if (paramString1.indexOf("?") != -1) {
          continue;
        }
        g = new URL(paramString1 + "?" + paramString4);
      }
      catch (MalformedURLException paramContext)
      {
        d.e("Invalid URL string:" + paramString1 + ". Failed to init connector.");
        continue;
        g = new URL(paramString1);
        continue;
        d.e("Request URL is null or empty.");
        continue;
      }
      if (l != null) {
        o = "application/x-www-form-urlencoded";
      }
      h();
      return;
      g = new URL(paramString1 + "&" + paramString4);
    }
  }
  
  private final void a(String paramString, int paramInt)
  {
    d.b(this, "setProxy -- proxy:" + paramString + "| port:" + paramInt);
    k = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(paramString, paramInt));
  }
  
  private void h()
  {
    if (f == null) {}
    for (;;)
    {
      return;
      Object localObject3 = null;
      Object localObject1 = null;
      try
      {
        Cursor localCursor = f.z(f);
        if (localCursor != null)
        {
          localObject1 = localCursor;
          localObject3 = localCursor;
          if (localCursor.getCount() > 0)
          {
            localObject1 = localCursor;
            localObject3 = localCursor;
            localCursor.moveToFirst();
            localObject1 = localCursor;
            localObject3 = localCursor;
            String str1 = localCursor.getString(localCursor.getColumnIndexOrThrow("proxy"));
            localObject1 = localCursor;
            localObject3 = localCursor;
            int i1 = localCursor.getInt(localCursor.getColumnIndexOrThrow("port"));
            localObject1 = localCursor;
            localObject3 = localCursor;
            String str2 = localCursor.getString(localCursor.getColumnIndexOrThrow("apn"));
            localObject1 = localCursor;
            localObject3 = localCursor;
            d.b(this, "Current apnType is " + str2);
            localObject1 = localCursor;
            localObject3 = localCursor;
            d.b(this, "proxy:" + str1 + "| port:" + i1);
            if (str1 != null)
            {
              localObject1 = localCursor;
              localObject3 = localCursor;
              if ((!str1.trim().equals("")) && (i1 != 0))
              {
                localObject1 = localCursor;
                localObject3 = localCursor;
                if (!str2.equalsIgnoreCase("ctwap"))
                {
                  localObject1 = localCursor;
                  localObject3 = localCursor;
                  d.b(this, "ad request use proxy");
                  localObject1 = localCursor;
                  localObject3 = localCursor;
                  a(str1, i1);
                }
              }
            }
          }
        }
        return;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        localObject3 = localObject1;
        d.e(this, "获取APN失败。");
        localObject3 = localObject1;
        d.a(localIllegalArgumentException);
        return;
      }
      finally
      {
        if (localObject3 != null) {
          localObject3.close();
        }
      }
    }
  }
  
  protected String a()
  {
    return p;
  }
  
  protected void a(String paramString)
  {
    p = paramString;
  }
  
  protected void b()
  {
    d.a(this, "Do HTTP connection.");
    new Thread(this).start();
  }
  
  /* Error */
  protected void c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aconst_null
    //   7: astore_2
    //   8: aconst_null
    //   9: astore_3
    //   10: aload_0
    //   11: getfield 119	cn/domob/android/offerwall/e:g	Ljava/net/URL;
    //   14: ifnull +804 -> 818
    //   17: getstatic 64	cn/domob/android/offerwall/e:d	Lcn/domob/android/offerwall/m;
    //   20: new 108	java/lang/StringBuilder
    //   23: dup
    //   24: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   27: ldc -10
    //   29: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: aload_0
    //   33: getfield 119	cn/domob/android/offerwall/e:g	Ljava/net/URL;
    //   36: invokevirtual 247	java/net/URL:toString	()Ljava/lang/String;
    //   39: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: invokevirtual 249	cn/domob/android/offerwall/m:b	(Ljava/lang/String;)V
    //   48: iconst_1
    //   49: invokestatic 255	java/net/HttpURLConnection:setFollowRedirects	(Z)V
    //   52: aload_0
    //   53: getfield 165	cn/domob/android/offerwall/e:k	Ljava/net/Proxy;
    //   56: ifnull +213 -> 269
    //   59: aload_0
    //   60: aload_0
    //   61: getfield 119	cn/domob/android/offerwall/e:g	Ljava/net/URL;
    //   64: aload_0
    //   65: getfield 165	cn/domob/android/offerwall/e:k	Ljava/net/Proxy;
    //   68: invokevirtual 259	java/net/URL:openConnection	(Ljava/net/Proxy;)Ljava/net/URLConnection;
    //   71: checkcast 251	java/net/HttpURLConnection
    //   74: putfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   77: aload_0
    //   78: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   81: ifnull +737 -> 818
    //   84: aload_0
    //   85: getfield 78	cn/domob/android/offerwall/e:i	Ljava/lang/String;
    //   88: ifnull +27 -> 115
    //   91: aload_0
    //   92: getfield 78	cn/domob/android/offerwall/e:i	Ljava/lang/String;
    //   95: invokevirtual 94	java/lang/String:length	()I
    //   98: ifeq +17 -> 115
    //   101: aload_0
    //   102: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   105: ldc_w 263
    //   108: aload_0
    //   109: getfield 78	cn/domob/android/offerwall/e:i	Ljava/lang/String;
    //   112: invokevirtual 267	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   115: aload_0
    //   116: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   119: iconst_1
    //   120: invokevirtual 270	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   123: aload_0
    //   124: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   127: aload_0
    //   128: getfield 86	cn/domob/android/offerwall/e:m	I
    //   131: invokevirtual 274	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   134: aload_0
    //   135: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   138: aload_0
    //   139: getfield 86	cn/domob/android/offerwall/e:m	I
    //   142: invokevirtual 277	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   145: aload_0
    //   146: getfield 80	cn/domob/android/offerwall/e:j	Ljava/util/HashMap;
    //   149: ifnull +160 -> 309
    //   152: aload_0
    //   153: getfield 80	cn/domob/android/offerwall/e:j	Ljava/util/HashMap;
    //   156: invokevirtual 283	java/util/HashMap:keySet	()Ljava/util/Set;
    //   159: invokeinterface 289 1 0
    //   164: astore_2
    //   165: aload_2
    //   166: invokeinterface 294 1 0
    //   171: ifeq +138 -> 309
    //   174: aload_2
    //   175: invokeinterface 298 1 0
    //   180: checkcast 90	java/lang/String
    //   183: astore 6
    //   185: aload_0
    //   186: getfield 80	cn/domob/android/offerwall/e:j	Ljava/util/HashMap;
    //   189: aload 6
    //   191: invokevirtual 302	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   194: checkcast 90	java/lang/String
    //   197: astore 7
    //   199: aload 7
    //   201: ifnull -36 -> 165
    //   204: aload_0
    //   205: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   208: aload 6
    //   210: aload 7
    //   212: invokevirtual 305	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   215: goto -50 -> 165
    //   218: astore 4
    //   220: aconst_null
    //   221: astore_2
    //   222: aload_2
    //   223: astore 5
    //   225: aload_3
    //   226: astore 6
    //   228: getstatic 64	cn/domob/android/offerwall/e:d	Lcn/domob/android/offerwall/m;
    //   231: aload_0
    //   232: ldc_w 307
    //   235: invokevirtual 223	cn/domob/android/offerwall/m:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   238: aload_2
    //   239: astore 5
    //   241: aload_3
    //   242: astore 6
    //   244: getstatic 64	cn/domob/android/offerwall/e:d	Lcn/domob/android/offerwall/m;
    //   247: aload 4
    //   249: invokevirtual 226	cn/domob/android/offerwall/m:a	(Ljava/lang/Throwable;)V
    //   252: aload_3
    //   253: ifnull +7 -> 260
    //   256: aload_3
    //   257: invokevirtual 310	java/io/BufferedInputStream:close	()V
    //   260: aload_2
    //   261: ifnull +7 -> 268
    //   264: aload_2
    //   265: invokevirtual 313	java/io/ByteArrayOutputStream:close	()V
    //   268: return
    //   269: aload_0
    //   270: aload_0
    //   271: getfield 119	cn/domob/android/offerwall/e:g	Ljava/net/URL;
    //   274: invokevirtual 316	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   277: checkcast 251	java/net/HttpURLConnection
    //   280: putfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   283: goto -206 -> 77
    //   286: astore_3
    //   287: aconst_null
    //   288: astore_2
    //   289: aload_2
    //   290: ifnull +7 -> 297
    //   293: aload_2
    //   294: invokevirtual 310	java/io/BufferedInputStream:close	()V
    //   297: aload 4
    //   299: ifnull +8 -> 307
    //   302: aload 4
    //   304: invokevirtual 313	java/io/ByteArrayOutputStream:close	()V
    //   307: aload_3
    //   308: athrow
    //   309: aload_0
    //   310: getfield 82	cn/domob/android/offerwall/e:h	Ljava/lang/String;
    //   313: ldc 15
    //   315: invokevirtual 98	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   318: ifeq +198 -> 516
    //   321: aload_0
    //   322: getfield 84	cn/domob/android/offerwall/e:l	Ljava/lang/String;
    //   325: ifnull +191 -> 516
    //   328: getstatic 64	cn/domob/android/offerwall/e:d	Lcn/domob/android/offerwall/m;
    //   331: ldc_w 318
    //   334: invokevirtual 249	cn/domob/android/offerwall/m:b	(Ljava/lang/String;)V
    //   337: aload_0
    //   338: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   341: ldc 15
    //   343: invokevirtual 321	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   346: aload_0
    //   347: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   350: iconst_1
    //   351: invokevirtual 324	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   354: aload_0
    //   355: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   358: ldc_w 326
    //   361: aload_0
    //   362: getfield 123	cn/domob/android/offerwall/e:o	Ljava/lang/String;
    //   365: invokevirtual 267	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   368: aload_0
    //   369: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   372: ldc_w 328
    //   375: aload_0
    //   376: getfield 84	cn/domob/android/offerwall/e:l	Ljava/lang/String;
    //   379: invokevirtual 94	java/lang/String:length	()I
    //   382: invokestatic 331	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   385: invokevirtual 267	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   388: aload_0
    //   389: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   392: invokevirtual 335	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   395: astore_2
    //   396: new 337	java/io/BufferedWriter
    //   399: dup
    //   400: new 339	java/io/OutputStreamWriter
    //   403: dup
    //   404: aload_2
    //   405: invokespecial 342	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   408: sipush 4096
    //   411: invokespecial 345	java/io/BufferedWriter:<init>	(Ljava/io/Writer;I)V
    //   414: astore 6
    //   416: aload 6
    //   418: ifnull +26 -> 444
    //   421: aload 6
    //   423: aload_0
    //   424: getfield 84	cn/domob/android/offerwall/e:l	Ljava/lang/String;
    //   427: invokevirtual 348	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   430: aload 6
    //   432: invokevirtual 351	java/io/BufferedWriter:flush	()V
    //   435: aload 6
    //   437: invokevirtual 352	java/io/BufferedWriter:close	()V
    //   440: aload_2
    //   441: invokevirtual 355	java/io/OutputStream:close	()V
    //   444: aload_0
    //   445: aload_0
    //   446: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   449: invokevirtual 358	java/net/HttpURLConnection:getResponseCode	()I
    //   452: putfield 360	cn/domob/android/offerwall/e:q	I
    //   455: aload_0
    //   456: getfield 360	cn/domob/android/offerwall/e:q	I
    //   459: sipush 301
    //   462: if_icmpeq +13 -> 475
    //   465: aload_0
    //   466: getfield 360	cn/domob/android/offerwall/e:q	I
    //   469: sipush 302
    //   472: if_icmpne +63 -> 535
    //   475: aload_0
    //   476: new 106	java/net/URL
    //   479: dup
    //   480: aload_0
    //   481: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   484: ldc_w 362
    //   487: invokevirtual 366	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   490: invokespecial 117	java/net/URL:<init>	(Ljava/lang/String;)V
    //   493: invokevirtual 316	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   496: checkcast 251	java/net/HttpURLConnection
    //   499: putfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   502: aload_0
    //   503: aload_0
    //   504: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   507: invokevirtual 358	java/net/HttpURLConnection:getResponseCode	()I
    //   510: putfield 360	cn/domob/android/offerwall/e:q	I
    //   513: goto -58 -> 455
    //   516: getstatic 64	cn/domob/android/offerwall/e:d	Lcn/domob/android/offerwall/m;
    //   519: ldc_w 368
    //   522: invokevirtual 249	cn/domob/android/offerwall/m:b	(Ljava/lang/String;)V
    //   525: aload_0
    //   526: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   529: invokevirtual 371	java/net/HttpURLConnection:connect	()V
    //   532: goto -88 -> 444
    //   535: aload_0
    //   536: getfield 360	cn/domob/android/offerwall/e:q	I
    //   539: sipush 200
    //   542: if_icmplt +268 -> 810
    //   545: aload_0
    //   546: getfield 360	cn/domob/android/offerwall/e:q	I
    //   549: sipush 304
    //   552: if_icmpgt +258 -> 810
    //   555: getstatic 64	cn/domob/android/offerwall/e:d	Lcn/domob/android/offerwall/m;
    //   558: new 108	java/lang/StringBuilder
    //   561: dup
    //   562: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   565: ldc_w 373
    //   568: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   571: aload_0
    //   572: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   575: invokevirtual 377	java/net/HttpURLConnection:getURL	()Ljava/net/URL;
    //   578: invokevirtual 380	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   581: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   584: invokevirtual 249	cn/domob/android/offerwall/m:b	(Ljava/lang/String;)V
    //   587: new 309	java/io/BufferedInputStream
    //   590: dup
    //   591: aload_0
    //   592: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   595: invokevirtual 384	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   598: sipush 4096
    //   601: invokespecial 387	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   604: astore_2
    //   605: sipush 4096
    //   608: newarray byte
    //   610: astore_3
    //   611: new 312	java/io/ByteArrayOutputStream
    //   614: dup
    //   615: sipush 4096
    //   618: invokespecial 389	java/io/ByteArrayOutputStream:<init>	(I)V
    //   621: astore 5
    //   623: aload_2
    //   624: aload_3
    //   625: invokevirtual 393	java/io/BufferedInputStream:read	([B)I
    //   628: istore_1
    //   629: iload_1
    //   630: iconst_m1
    //   631: if_icmpeq +14 -> 645
    //   634: aload 5
    //   636: aload_3
    //   637: iconst_0
    //   638: iload_1
    //   639: invokevirtual 396	java/io/ByteArrayOutputStream:write	([BII)V
    //   642: goto -19 -> 623
    //   645: aload_0
    //   646: aload 5
    //   648: invokevirtual 400	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   651: putfield 402	cn/domob/android/offerwall/e:s	[B
    //   654: aload_0
    //   655: new 90	java/lang/String
    //   658: dup
    //   659: aload_0
    //   660: getfield 402	cn/domob/android/offerwall/e:s	[B
    //   663: ldc_w 404
    //   666: invokespecial 407	java/lang/String:<init>	([BLjava/lang/String;)V
    //   669: putfield 409	cn/domob/android/offerwall/e:r	Ljava/lang/String;
    //   672: aload_2
    //   673: astore_3
    //   674: aload 5
    //   676: astore_2
    //   677: aload_2
    //   678: astore 5
    //   680: aload_3
    //   681: astore 6
    //   683: aload_0
    //   684: getfield 261	cn/domob/android/offerwall/e:e	Ljava/net/HttpURLConnection;
    //   687: invokevirtual 412	java/net/HttpURLConnection:disconnect	()V
    //   690: aload_3
    //   691: ifnull +7 -> 698
    //   694: aload_3
    //   695: invokevirtual 310	java/io/BufferedInputStream:close	()V
    //   698: aload_2
    //   699: ifnull -431 -> 268
    //   702: aload_2
    //   703: invokevirtual 313	java/io/ByteArrayOutputStream:close	()V
    //   706: return
    //   707: astore_2
    //   708: getstatic 64	cn/domob/android/offerwall/e:d	Lcn/domob/android/offerwall/m;
    //   711: aload_2
    //   712: invokevirtual 226	cn/domob/android/offerwall/m:a	(Ljava/lang/Throwable;)V
    //   715: return
    //   716: astore_3
    //   717: getstatic 64	cn/domob/android/offerwall/e:d	Lcn/domob/android/offerwall/m;
    //   720: aload_3
    //   721: invokevirtual 226	cn/domob/android/offerwall/m:a	(Ljava/lang/Throwable;)V
    //   724: goto -26 -> 698
    //   727: astore_3
    //   728: getstatic 64	cn/domob/android/offerwall/e:d	Lcn/domob/android/offerwall/m;
    //   731: aload_3
    //   732: invokevirtual 226	cn/domob/android/offerwall/m:a	(Ljava/lang/Throwable;)V
    //   735: goto -475 -> 260
    //   738: astore_2
    //   739: getstatic 64	cn/domob/android/offerwall/e:d	Lcn/domob/android/offerwall/m;
    //   742: aload_2
    //   743: invokevirtual 226	cn/domob/android/offerwall/m:a	(Ljava/lang/Throwable;)V
    //   746: return
    //   747: astore_2
    //   748: getstatic 64	cn/domob/android/offerwall/e:d	Lcn/domob/android/offerwall/m;
    //   751: aload_2
    //   752: invokevirtual 226	cn/domob/android/offerwall/m:a	(Ljava/lang/Throwable;)V
    //   755: goto -458 -> 297
    //   758: astore_2
    //   759: getstatic 64	cn/domob/android/offerwall/e:d	Lcn/domob/android/offerwall/m;
    //   762: aload_2
    //   763: invokevirtual 226	cn/domob/android/offerwall/m:a	(Ljava/lang/Throwable;)V
    //   766: goto -459 -> 307
    //   769: astore_3
    //   770: goto -481 -> 289
    //   773: astore_3
    //   774: aload 5
    //   776: astore 4
    //   778: goto -489 -> 289
    //   781: astore_3
    //   782: aload 6
    //   784: astore_2
    //   785: aload 5
    //   787: astore 4
    //   789: goto -500 -> 289
    //   792: astore 4
    //   794: aconst_null
    //   795: astore 5
    //   797: aload_2
    //   798: astore_3
    //   799: aload 5
    //   801: astore_2
    //   802: goto -580 -> 222
    //   805: astore 4
    //   807: goto -585 -> 222
    //   810: aconst_null
    //   811: astore_2
    //   812: aload 5
    //   814: astore_3
    //   815: goto -138 -> 677
    //   818: aconst_null
    //   819: astore_3
    //   820: goto -130 -> 690
    //   823: astore 4
    //   825: aload_2
    //   826: astore_3
    //   827: aload 5
    //   829: astore_2
    //   830: goto -608 -> 222
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	833	0	this	e
    //   628	11	1	i1	int
    //   7	696	2	localObject1	Object
    //   707	5	2	localIOException1	java.io.IOException
    //   738	5	2	localIOException2	java.io.IOException
    //   747	5	2	localIOException3	java.io.IOException
    //   758	5	2	localIOException4	java.io.IOException
    //   784	46	2	localObject2	Object
    //   9	248	3	localObject3	Object
    //   286	22	3	localObject4	Object
    //   610	85	3	localObject5	Object
    //   716	5	3	localIOException5	java.io.IOException
    //   727	5	3	localIOException6	java.io.IOException
    //   769	1	3	localObject6	Object
    //   773	1	3	localObject7	Object
    //   781	1	3	localObject8	Object
    //   798	29	3	localObject9	Object
    //   1	1	4	localObject10	Object
    //   218	85	4	localException1	Exception
    //   776	12	4	localObject11	Object
    //   792	1	4	localException2	Exception
    //   805	1	4	localException3	Exception
    //   823	1	4	localException4	Exception
    //   4	824	5	localObject12	Object
    //   183	600	6	localObject13	Object
    //   197	14	7	str	String
    // Exception table:
    //   from	to	target	type
    //   10	77	218	java/lang/Exception
    //   77	115	218	java/lang/Exception
    //   115	165	218	java/lang/Exception
    //   165	199	218	java/lang/Exception
    //   204	215	218	java/lang/Exception
    //   269	283	218	java/lang/Exception
    //   309	416	218	java/lang/Exception
    //   421	444	218	java/lang/Exception
    //   444	455	218	java/lang/Exception
    //   455	475	218	java/lang/Exception
    //   475	513	218	java/lang/Exception
    //   516	532	218	java/lang/Exception
    //   535	605	218	java/lang/Exception
    //   10	77	286	finally
    //   77	115	286	finally
    //   115	165	286	finally
    //   165	199	286	finally
    //   204	215	286	finally
    //   269	283	286	finally
    //   309	416	286	finally
    //   421	444	286	finally
    //   444	455	286	finally
    //   455	475	286	finally
    //   475	513	286	finally
    //   516	532	286	finally
    //   535	605	286	finally
    //   702	706	707	java/io/IOException
    //   694	698	716	java/io/IOException
    //   256	260	727	java/io/IOException
    //   264	268	738	java/io/IOException
    //   293	297	747	java/io/IOException
    //   302	307	758	java/io/IOException
    //   605	623	769	finally
    //   623	629	773	finally
    //   634	642	773	finally
    //   645	672	773	finally
    //   228	238	781	finally
    //   244	252	781	finally
    //   683	690	781	finally
    //   605	623	792	java/lang/Exception
    //   683	690	805	java/lang/Exception
    //   623	629	823	java/lang/Exception
    //   634	642	823	java/lang/Exception
    //   645	672	823	java/lang/Exception
  }
  
  protected byte[] d()
  {
    return s;
  }
  
  protected String e()
  {
    return r;
  }
  
  protected int f()
  {
    return q;
  }
  
  protected String g()
  {
    return l;
  }
  
  public void run()
  {
    c();
    if (n != null) {
      n.a(this);
    }
  }
  
  static abstract interface a
  {
    public abstract void a(e paramE);
  }
}
