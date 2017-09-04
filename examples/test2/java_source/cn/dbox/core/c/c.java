package cn.dbox.core.c;

import android.content.Context;
import android.database.Cursor;
import cn.dbox.core.h.b;
import cn.dbox.core.h.d;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.HashMap;

public class c
  implements Runnable
{
  public static final String a = "GET";
  public static final String b = "POST";
  public static final int c = 20000;
  private static d d = new d(c.class.getSimpleName());
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
  
  public c(Context paramContext, String paramString, a paramA)
  {
    this(paramContext, paramString, null, null, "GET", null, 20000, paramA);
  }
  
  public c(Context paramContext, String paramString1, String paramString2, a paramA)
  {
    this(paramContext, paramString1, null, null, "POST", paramString2, 20000, paramA);
  }
  
  public c(Context paramContext, String paramString1, String paramString2, HashMap<String, String> paramHashMap, String paramString3, String paramString4, int paramInt, a paramA)
  {
    f = paramContext;
    i = paramString2;
    j = paramHashMap;
    h = paramString3;
    l = paramString4;
    m = paramInt;
    n = paramA;
    if (f == null) {}
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
      try
      {
        h();
        return;
      }
      catch (Exception paramContext)
      {
        d.b("get error when dealing with apn");
        d.a(paramContext);
        return;
      }
      catch (Error paramContext)
      {
        d.b("get error when dealing with apn");
        d.a(paramContext);
      }
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
        Cursor localCursor = b.t(f);
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
        d.e(this, "获取APN失败");
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
  
  public String a()
  {
    return p;
  }
  
  public void a(String paramString)
  {
    p = paramString;
  }
  
  public void b()
  {
    d.a(this, "Do HTTP connection.");
    new Thread(this).start();
  }
  
  /* Error */
  public void c()
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
    //   11: getfield 123	cn/dbox/core/c/c:g	Ljava/net/URL;
    //   14: ifnull +812 -> 826
    //   17: getstatic 64	cn/dbox/core/c/c:d	Lcn/dbox/core/h/d;
    //   20: new 112	java/lang/StringBuilder
    //   23: dup
    //   24: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   27: ldc -5
    //   29: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: aload_0
    //   33: getfield 123	cn/dbox/core/c/c:g	Ljava/net/URL;
    //   36: invokevirtual 252	java/net/URL:toString	()Ljava/lang/String;
    //   39: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: invokevirtual 143	cn/dbox/core/h/d:b	(Ljava/lang/String;)V
    //   48: iconst_1
    //   49: invokestatic 258	java/net/HttpURLConnection:setFollowRedirects	(Z)V
    //   52: aload_0
    //   53: getfield 176	cn/dbox/core/c/c:k	Ljava/net/Proxy;
    //   56: ifnull +213 -> 269
    //   59: aload_0
    //   60: aload_0
    //   61: getfield 123	cn/dbox/core/c/c:g	Ljava/net/URL;
    //   64: aload_0
    //   65: getfield 176	cn/dbox/core/c/c:k	Ljava/net/Proxy;
    //   68: invokevirtual 262	java/net/URL:openConnection	(Ljava/net/Proxy;)Ljava/net/URLConnection;
    //   71: checkcast 254	java/net/HttpURLConnection
    //   74: putfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   77: aload_0
    //   78: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   81: ifnull +745 -> 826
    //   84: aload_0
    //   85: getfield 82	cn/dbox/core/c/c:i	Ljava/lang/String;
    //   88: ifnull +27 -> 115
    //   91: aload_0
    //   92: getfield 82	cn/dbox/core/c/c:i	Ljava/lang/String;
    //   95: invokevirtual 98	java/lang/String:length	()I
    //   98: ifeq +17 -> 115
    //   101: aload_0
    //   102: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   105: ldc_w 266
    //   108: aload_0
    //   109: getfield 82	cn/dbox/core/c/c:i	Ljava/lang/String;
    //   112: invokevirtual 270	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   115: aload_0
    //   116: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   119: iconst_0
    //   120: invokevirtual 273	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   123: aload_0
    //   124: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   127: aload_0
    //   128: getfield 90	cn/dbox/core/c/c:m	I
    //   131: invokevirtual 277	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   134: aload_0
    //   135: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   138: aload_0
    //   139: getfield 90	cn/dbox/core/c/c:m	I
    //   142: invokevirtual 280	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   145: aload_0
    //   146: getfield 84	cn/dbox/core/c/c:j	Ljava/util/HashMap;
    //   149: ifnull +160 -> 309
    //   152: aload_0
    //   153: getfield 84	cn/dbox/core/c/c:j	Ljava/util/HashMap;
    //   156: invokevirtual 286	java/util/HashMap:keySet	()Ljava/util/Set;
    //   159: invokeinterface 292 1 0
    //   164: astore_2
    //   165: aload_2
    //   166: invokeinterface 297 1 0
    //   171: ifeq +138 -> 309
    //   174: aload_2
    //   175: invokeinterface 301 1 0
    //   180: checkcast 94	java/lang/String
    //   183: astore 6
    //   185: aload_0
    //   186: getfield 84	cn/dbox/core/c/c:j	Ljava/util/HashMap;
    //   189: aload 6
    //   191: invokevirtual 305	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   194: checkcast 94	java/lang/String
    //   197: astore 7
    //   199: aload 7
    //   201: ifnull -36 -> 165
    //   204: aload_0
    //   205: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   208: aload 6
    //   210: aload 7
    //   212: invokevirtual 308	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   215: goto -50 -> 165
    //   218: astore 4
    //   220: aconst_null
    //   221: astore_2
    //   222: aload_2
    //   223: astore 5
    //   225: aload_3
    //   226: astore 6
    //   228: getstatic 64	cn/dbox/core/c/c:d	Lcn/dbox/core/h/d;
    //   231: aload_0
    //   232: ldc_w 310
    //   235: invokevirtual 233	cn/dbox/core/h/d:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   238: aload_2
    //   239: astore 5
    //   241: aload_3
    //   242: astore 6
    //   244: getstatic 64	cn/dbox/core/c/c:d	Lcn/dbox/core/h/d;
    //   247: aload 4
    //   249: invokevirtual 146	cn/dbox/core/h/d:a	(Ljava/lang/Throwable;)V
    //   252: aload_3
    //   253: ifnull +7 -> 260
    //   256: aload_3
    //   257: invokevirtual 313	java/io/BufferedInputStream:close	()V
    //   260: aload_2
    //   261: ifnull +7 -> 268
    //   264: aload_2
    //   265: invokevirtual 316	java/io/ByteArrayOutputStream:close	()V
    //   268: return
    //   269: aload_0
    //   270: aload_0
    //   271: getfield 123	cn/dbox/core/c/c:g	Ljava/net/URL;
    //   274: invokevirtual 319	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   277: checkcast 254	java/net/HttpURLConnection
    //   280: putfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   283: goto -206 -> 77
    //   286: astore_3
    //   287: aconst_null
    //   288: astore_2
    //   289: aload_2
    //   290: ifnull +7 -> 297
    //   293: aload_2
    //   294: invokevirtual 313	java/io/BufferedInputStream:close	()V
    //   297: aload 4
    //   299: ifnull +8 -> 307
    //   302: aload 4
    //   304: invokevirtual 316	java/io/ByteArrayOutputStream:close	()V
    //   307: aload_3
    //   308: athrow
    //   309: aload_0
    //   310: getfield 86	cn/dbox/core/c/c:h	Ljava/lang/String;
    //   313: ldc 15
    //   315: invokevirtual 102	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   318: ifeq +206 -> 524
    //   321: aload_0
    //   322: getfield 88	cn/dbox/core/c/c:l	Ljava/lang/String;
    //   325: ifnull +199 -> 524
    //   328: getstatic 64	cn/dbox/core/c/c:d	Lcn/dbox/core/h/d;
    //   331: ldc_w 321
    //   334: invokevirtual 143	cn/dbox/core/h/d:b	(Ljava/lang/String;)V
    //   337: aload_0
    //   338: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   341: ldc 15
    //   343: invokevirtual 324	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   346: aload_0
    //   347: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   350: iconst_1
    //   351: invokevirtual 327	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   354: aload_0
    //   355: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   358: ldc_w 329
    //   361: aload_0
    //   362: getfield 127	cn/dbox/core/c/c:o	Ljava/lang/String;
    //   365: invokevirtual 270	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   368: aload_0
    //   369: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   372: ldc_w 331
    //   375: aload_0
    //   376: getfield 88	cn/dbox/core/c/c:l	Ljava/lang/String;
    //   379: invokevirtual 98	java/lang/String:length	()I
    //   382: invokestatic 334	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   385: invokevirtual 270	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   388: aload_0
    //   389: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   392: invokevirtual 338	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   395: astore_2
    //   396: new 340	java/io/BufferedWriter
    //   399: dup
    //   400: new 342	java/io/OutputStreamWriter
    //   403: dup
    //   404: aload_2
    //   405: invokespecial 345	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   408: sipush 4096
    //   411: invokespecial 348	java/io/BufferedWriter:<init>	(Ljava/io/Writer;I)V
    //   414: astore 6
    //   416: aload 6
    //   418: ifnull +26 -> 444
    //   421: aload 6
    //   423: aload_0
    //   424: getfield 88	cn/dbox/core/c/c:l	Ljava/lang/String;
    //   427: invokevirtual 351	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   430: aload 6
    //   432: invokevirtual 354	java/io/BufferedWriter:flush	()V
    //   435: aload 6
    //   437: invokevirtual 355	java/io/BufferedWriter:close	()V
    //   440: aload_2
    //   441: invokevirtual 358	java/io/OutputStream:close	()V
    //   444: aload_0
    //   445: aload_0
    //   446: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   449: invokevirtual 361	java/net/HttpURLConnection:getResponseCode	()I
    //   452: putfield 363	cn/dbox/core/c/c:q	I
    //   455: aload_0
    //   456: getfield 363	cn/dbox/core/c/c:q	I
    //   459: sipush 301
    //   462: if_icmpeq +13 -> 475
    //   465: aload_0
    //   466: getfield 363	cn/dbox/core/c/c:q	I
    //   469: sipush 302
    //   472: if_icmpne +71 -> 543
    //   475: aload_0
    //   476: new 110	java/net/URL
    //   479: dup
    //   480: aload_0
    //   481: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   484: ldc_w 365
    //   487: invokevirtual 369	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   490: invokespecial 121	java/net/URL:<init>	(Ljava/lang/String;)V
    //   493: invokevirtual 319	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   496: checkcast 254	java/net/HttpURLConnection
    //   499: putfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   502: aload_0
    //   503: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   506: iconst_0
    //   507: invokevirtual 273	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   510: aload_0
    //   511: aload_0
    //   512: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   515: invokevirtual 361	java/net/HttpURLConnection:getResponseCode	()I
    //   518: putfield 363	cn/dbox/core/c/c:q	I
    //   521: goto -66 -> 455
    //   524: getstatic 64	cn/dbox/core/c/c:d	Lcn/dbox/core/h/d;
    //   527: ldc_w 371
    //   530: invokevirtual 143	cn/dbox/core/h/d:b	(Ljava/lang/String;)V
    //   533: aload_0
    //   534: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   537: invokevirtual 374	java/net/HttpURLConnection:connect	()V
    //   540: goto -96 -> 444
    //   543: aload_0
    //   544: getfield 363	cn/dbox/core/c/c:q	I
    //   547: sipush 200
    //   550: if_icmplt +268 -> 818
    //   553: aload_0
    //   554: getfield 363	cn/dbox/core/c/c:q	I
    //   557: sipush 304
    //   560: if_icmpgt +258 -> 818
    //   563: getstatic 64	cn/dbox/core/c/c:d	Lcn/dbox/core/h/d;
    //   566: new 112	java/lang/StringBuilder
    //   569: dup
    //   570: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   573: ldc_w 376
    //   576: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   579: aload_0
    //   580: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   583: invokevirtual 380	java/net/HttpURLConnection:getURL	()Ljava/net/URL;
    //   586: invokevirtual 383	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   589: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   592: invokevirtual 143	cn/dbox/core/h/d:b	(Ljava/lang/String;)V
    //   595: new 312	java/io/BufferedInputStream
    //   598: dup
    //   599: aload_0
    //   600: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   603: invokevirtual 387	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   606: sipush 4096
    //   609: invokespecial 390	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   612: astore_2
    //   613: sipush 4096
    //   616: newarray byte
    //   618: astore_3
    //   619: new 315	java/io/ByteArrayOutputStream
    //   622: dup
    //   623: sipush 4096
    //   626: invokespecial 392	java/io/ByteArrayOutputStream:<init>	(I)V
    //   629: astore 5
    //   631: aload_2
    //   632: aload_3
    //   633: invokevirtual 396	java/io/BufferedInputStream:read	([B)I
    //   636: istore_1
    //   637: iload_1
    //   638: iconst_m1
    //   639: if_icmpeq +14 -> 653
    //   642: aload 5
    //   644: aload_3
    //   645: iconst_0
    //   646: iload_1
    //   647: invokevirtual 399	java/io/ByteArrayOutputStream:write	([BII)V
    //   650: goto -19 -> 631
    //   653: aload_0
    //   654: aload 5
    //   656: invokevirtual 403	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   659: putfield 405	cn/dbox/core/c/c:s	[B
    //   662: aload_0
    //   663: new 94	java/lang/String
    //   666: dup
    //   667: aload_0
    //   668: getfield 405	cn/dbox/core/c/c:s	[B
    //   671: ldc_w 407
    //   674: invokespecial 410	java/lang/String:<init>	([BLjava/lang/String;)V
    //   677: putfield 412	cn/dbox/core/c/c:r	Ljava/lang/String;
    //   680: aload_2
    //   681: astore_3
    //   682: aload 5
    //   684: astore_2
    //   685: aload_2
    //   686: astore 5
    //   688: aload_3
    //   689: astore 6
    //   691: aload_0
    //   692: getfield 264	cn/dbox/core/c/c:e	Ljava/net/HttpURLConnection;
    //   695: invokevirtual 415	java/net/HttpURLConnection:disconnect	()V
    //   698: aload_3
    //   699: ifnull +7 -> 706
    //   702: aload_3
    //   703: invokevirtual 313	java/io/BufferedInputStream:close	()V
    //   706: aload_2
    //   707: ifnull -439 -> 268
    //   710: aload_2
    //   711: invokevirtual 316	java/io/ByteArrayOutputStream:close	()V
    //   714: return
    //   715: astore_2
    //   716: getstatic 64	cn/dbox/core/c/c:d	Lcn/dbox/core/h/d;
    //   719: aload_2
    //   720: invokevirtual 146	cn/dbox/core/h/d:a	(Ljava/lang/Throwable;)V
    //   723: return
    //   724: astore_3
    //   725: getstatic 64	cn/dbox/core/c/c:d	Lcn/dbox/core/h/d;
    //   728: aload_3
    //   729: invokevirtual 146	cn/dbox/core/h/d:a	(Ljava/lang/Throwable;)V
    //   732: goto -26 -> 706
    //   735: astore_3
    //   736: getstatic 64	cn/dbox/core/c/c:d	Lcn/dbox/core/h/d;
    //   739: aload_3
    //   740: invokevirtual 146	cn/dbox/core/h/d:a	(Ljava/lang/Throwable;)V
    //   743: goto -483 -> 260
    //   746: astore_2
    //   747: getstatic 64	cn/dbox/core/c/c:d	Lcn/dbox/core/h/d;
    //   750: aload_2
    //   751: invokevirtual 146	cn/dbox/core/h/d:a	(Ljava/lang/Throwable;)V
    //   754: return
    //   755: astore_2
    //   756: getstatic 64	cn/dbox/core/c/c:d	Lcn/dbox/core/h/d;
    //   759: aload_2
    //   760: invokevirtual 146	cn/dbox/core/h/d:a	(Ljava/lang/Throwable;)V
    //   763: goto -466 -> 297
    //   766: astore_2
    //   767: getstatic 64	cn/dbox/core/c/c:d	Lcn/dbox/core/h/d;
    //   770: aload_2
    //   771: invokevirtual 146	cn/dbox/core/h/d:a	(Ljava/lang/Throwable;)V
    //   774: goto -467 -> 307
    //   777: astore_3
    //   778: goto -489 -> 289
    //   781: astore_3
    //   782: aload 5
    //   784: astore 4
    //   786: goto -497 -> 289
    //   789: astore_3
    //   790: aload 6
    //   792: astore_2
    //   793: aload 5
    //   795: astore 4
    //   797: goto -508 -> 289
    //   800: astore 4
    //   802: aconst_null
    //   803: astore 5
    //   805: aload_2
    //   806: astore_3
    //   807: aload 5
    //   809: astore_2
    //   810: goto -588 -> 222
    //   813: astore 4
    //   815: goto -593 -> 222
    //   818: aconst_null
    //   819: astore_2
    //   820: aload 5
    //   822: astore_3
    //   823: goto -138 -> 685
    //   826: aconst_null
    //   827: astore_3
    //   828: goto -130 -> 698
    //   831: astore 4
    //   833: aload_2
    //   834: astore_3
    //   835: aload 5
    //   837: astore_2
    //   838: goto -616 -> 222
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	841	0	this	c
    //   636	11	1	i1	int
    //   7	704	2	localObject1	Object
    //   715	5	2	localIOException1	java.io.IOException
    //   746	5	2	localIOException2	java.io.IOException
    //   755	5	2	localIOException3	java.io.IOException
    //   766	5	2	localIOException4	java.io.IOException
    //   792	46	2	localObject2	Object
    //   9	248	3	localObject3	Object
    //   286	22	3	localObject4	Object
    //   618	85	3	localObject5	Object
    //   724	5	3	localIOException5	java.io.IOException
    //   735	5	3	localIOException6	java.io.IOException
    //   777	1	3	localObject6	Object
    //   781	1	3	localObject7	Object
    //   789	1	3	localObject8	Object
    //   806	29	3	localObject9	Object
    //   1	1	4	localObject10	Object
    //   218	85	4	localException1	Exception
    //   784	12	4	localObject11	Object
    //   800	1	4	localException2	Exception
    //   813	1	4	localException3	Exception
    //   831	1	4	localException4	Exception
    //   4	832	5	localObject12	Object
    //   183	608	6	localObject13	Object
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
    //   475	521	218	java/lang/Exception
    //   524	540	218	java/lang/Exception
    //   543	613	218	java/lang/Exception
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
    //   475	521	286	finally
    //   524	540	286	finally
    //   543	613	286	finally
    //   710	714	715	java/io/IOException
    //   702	706	724	java/io/IOException
    //   256	260	735	java/io/IOException
    //   264	268	746	java/io/IOException
    //   293	297	755	java/io/IOException
    //   302	307	766	java/io/IOException
    //   613	631	777	finally
    //   631	637	781	finally
    //   642	650	781	finally
    //   653	680	781	finally
    //   228	238	789	finally
    //   244	252	789	finally
    //   691	698	789	finally
    //   613	631	800	java/lang/Exception
    //   691	698	813	java/lang/Exception
    //   631	637	831	java/lang/Exception
    //   642	650	831	java/lang/Exception
    //   653	680	831	java/lang/Exception
  }
  
  public byte[] d()
  {
    return s;
  }
  
  public String e()
  {
    return r;
  }
  
  public int f()
  {
    return q;
  }
  
  public String g()
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
  
  public static abstract interface a
  {
    public abstract void a(c paramC);
  }
}
