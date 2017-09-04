package cn.domob.android.ads;

import android.content.Context;
import cn.domob.android.i.f;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.X509TrustManager;

class t
{
  private static f a = new f(t.class.getSimpleName());
  private static String b = "https://api.domob.cn/d";
  private static final int g = 5;
  private static final int i = 10000;
  private b c = new b();
  private a d = new a();
  private Context e;
  private int f = 0;
  private boolean h = false;
  
  public t(Context paramContext)
  {
    e = paramContext;
    paramContext = localSSLContext;
    try
    {
      localSSLContext = SSLContext.getInstance("TLS");
      paramContext = localSSLContext;
      b localB = c;
      paramContext = localSSLContext;
      SecureRandom localSecureRandom = new SecureRandom();
      paramContext = localSSLContext;
      localSSLContext.init(null, new X509TrustManager[] { localB }, localSecureRandom);
      paramContext = localSSLContext;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      for (;;)
      {
        a.a(localGeneralSecurityException);
      }
    }
    if (paramContext != null) {
      HttpsURLConnection.setDefaultSSLSocketFactory(paramContext.getSocketFactory());
    }
    HttpsURLConnection.setDefaultHostnameVerifier(d);
  }
  
  /* Error */
  private String a(String paramString, int paramInt, g paramG)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 8
    //   9: aconst_null
    //   10: astore 7
    //   12: aload_0
    //   13: iload_2
    //   14: putfield 62	cn/domob/android/ads/t:f	I
    //   17: new 109	java/lang/StringBuffer
    //   20: dup
    //   21: ldc 111
    //   23: invokespecial 112	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   26: astore 5
    //   28: new 114	java/net/URL
    //   31: dup
    //   32: getstatic 46	cn/domob/android/ads/t:b	Ljava/lang/String;
    //   35: invokespecial 115	java/net/URL:<init>	(Ljava/lang/String;)V
    //   38: invokevirtual 119	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   41: checkcast 89	javax/net/ssl/HttpsURLConnection
    //   44: astore 4
    //   46: aload 4
    //   48: iconst_1
    //   49: invokevirtual 123	javax/net/ssl/HttpsURLConnection:setDoOutput	(Z)V
    //   52: aload 4
    //   54: iconst_0
    //   55: invokevirtual 126	javax/net/ssl/HttpsURLConnection:setUseCaches	(Z)V
    //   58: aload 4
    //   60: iconst_1
    //   61: invokevirtual 129	javax/net/ssl/HttpsURLConnection:setDoInput	(Z)V
    //   64: aload 4
    //   66: ldc -125
    //   68: invokevirtual 134	javax/net/ssl/HttpsURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   71: aload 4
    //   73: ldc -120
    //   75: ldc -118
    //   77: invokevirtual 142	javax/net/ssl/HttpsURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   80: aload 4
    //   82: sipush 10000
    //   85: invokevirtual 146	javax/net/ssl/HttpsURLConnection:setConnectTimeout	(I)V
    //   88: aload 4
    //   90: sipush 10000
    //   93: invokevirtual 149	javax/net/ssl/HttpsURLConnection:setReadTimeout	(I)V
    //   96: aload 4
    //   98: invokevirtual 153	javax/net/ssl/HttpsURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   101: astore 6
    //   103: aload 6
    //   105: ifnonnull +58 -> 163
    //   108: getstatic 42	cn/domob/android/ads/t:a	Lcn/domob/android/i/f;
    //   111: ldc -101
    //   113: invokevirtual 157	cn/domob/android/i/f:e	(Ljava/lang/String;)V
    //   116: aload 4
    //   118: ifnull +8 -> 126
    //   121: aload 4
    //   123: invokevirtual 160	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   126: aload 6
    //   128: ifnull +8 -> 136
    //   131: aload 6
    //   133: invokevirtual 164	java/io/OutputStream:close	()V
    //   136: iconst_0
    //   137: ifeq +11 -> 148
    //   140: new 166	java/lang/NullPointerException
    //   143: dup
    //   144: invokespecial 167	java/lang/NullPointerException:<init>	()V
    //   147: athrow
    //   148: iconst_0
    //   149: ifeq +11 -> 160
    //   152: new 166	java/lang/NullPointerException
    //   155: dup
    //   156: invokespecial 167	java/lang/NullPointerException:<init>	()V
    //   159: athrow
    //   160: ldc 111
    //   162: areturn
    //   163: aload 6
    //   165: aload_1
    //   166: invokevirtual 173	java/lang/String:getBytes	()[B
    //   169: invokevirtual 177	java/io/OutputStream:write	([B)V
    //   172: aload 6
    //   174: invokevirtual 180	java/io/OutputStream:flush	()V
    //   177: aload 6
    //   179: invokevirtual 164	java/io/OutputStream:close	()V
    //   182: aload 4
    //   184: invokevirtual 184	javax/net/ssl/HttpsURLConnection:getInputStream	()Ljava/io/InputStream;
    //   187: astore 8
    //   189: aload 8
    //   191: astore 7
    //   193: new 186	java/io/BufferedReader
    //   196: dup
    //   197: new 188	java/io/InputStreamReader
    //   200: dup
    //   201: aload 7
    //   203: invokespecial 191	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   206: invokespecial 194	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   209: astore 9
    //   211: aload 5
    //   213: astore 11
    //   215: aload 9
    //   217: invokevirtual 197	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   220: astore 8
    //   222: aload 8
    //   224: ifnull +108 -> 332
    //   227: aload 5
    //   229: astore 11
    //   231: aload 5
    //   233: aload 8
    //   235: invokevirtual 201	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   238: pop
    //   239: goto -28 -> 211
    //   242: astore 8
    //   244: aload 5
    //   246: astore_1
    //   247: aload 9
    //   249: astore_3
    //   250: aload 4
    //   252: astore 5
    //   254: aload 6
    //   256: astore 4
    //   258: aload 8
    //   260: astore 6
    //   262: getstatic 42	cn/domob/android/ads/t:a	Lcn/domob/android/i/f;
    //   265: aload 6
    //   267: invokevirtual 100	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   270: getstatic 42	cn/domob/android/ads/t:a	Lcn/domob/android/i/f;
    //   273: aload_0
    //   274: getfield 66	cn/domob/android/ads/t:e	Landroid/content/Context;
    //   277: ldc -53
    //   279: invokevirtual 206	cn/domob/android/i/f:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   282: aload 5
    //   284: ifnull +8 -> 292
    //   287: aload 5
    //   289: invokevirtual 160	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   292: aload 4
    //   294: ifnull +8 -> 302
    //   297: aload 4
    //   299: invokevirtual 164	java/io/OutputStream:close	()V
    //   302: aload 7
    //   304: ifnull +8 -> 312
    //   307: aload 7
    //   309: invokevirtual 209	java/io/InputStream:close	()V
    //   312: aload_1
    //   313: astore 4
    //   315: aload_3
    //   316: ifnull +10 -> 326
    //   319: aload_3
    //   320: invokevirtual 210	java/io/BufferedReader:close	()V
    //   323: aload_1
    //   324: astore 4
    //   326: aload 4
    //   328: invokevirtual 213	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   331: areturn
    //   332: aload 5
    //   334: astore 11
    //   336: getstatic 42	cn/domob/android/ads/t:a	Lcn/domob/android/i/f;
    //   339: ldc -41
    //   341: new 217	java/lang/StringBuilder
    //   344: dup
    //   345: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   348: invokestatic 224	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   351: invokevirtual 227	java/lang/Thread:getName	()Ljava/lang/String;
    //   354: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   357: ldc -24
    //   359: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: aload 4
    //   364: invokevirtual 236	javax/net/ssl/HttpsURLConnection:getResponseCode	()I
    //   367: invokevirtual 239	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   370: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   373: invokevirtual 242	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   376: aload 5
    //   378: astore 11
    //   380: aload_0
    //   381: getfield 62	cn/domob/android/ads/t:f	I
    //   384: iconst_5
    //   385: if_icmpge +1105 -> 1490
    //   388: aload 5
    //   390: astore 11
    //   392: aload 4
    //   394: invokevirtual 236	javax/net/ssl/HttpsURLConnection:getResponseCode	()I
    //   397: iconst_m1
    //   398: if_icmpne +1092 -> 1490
    //   401: aload 5
    //   403: astore 11
    //   405: aload_0
    //   406: aload_0
    //   407: getfield 62	cn/domob/android/ads/t:f	I
    //   410: iconst_1
    //   411: iadd
    //   412: putfield 62	cn/domob/android/ads/t:f	I
    //   415: aload 5
    //   417: astore 11
    //   419: getstatic 42	cn/domob/android/ads/t:a	Lcn/domob/android/i/f;
    //   422: ldc -41
    //   424: new 217	java/lang/StringBuilder
    //   427: dup
    //   428: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   431: ldc -12
    //   433: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   436: aload_0
    //   437: getfield 62	cn/domob/android/ads/t:f	I
    //   440: invokevirtual 239	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   443: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   446: invokevirtual 242	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   449: aload 5
    //   451: astore 11
    //   453: aload_0
    //   454: aload_1
    //   455: aload_0
    //   456: getfield 62	cn/domob/android/ads/t:f	I
    //   459: aload_3
    //   460: invokespecial 246	cn/domob/android/ads/t:a	(Ljava/lang/String;ILcn/domob/android/ads/g;)Ljava/lang/String;
    //   463: astore 10
    //   465: aload 5
    //   467: astore 8
    //   469: aload 10
    //   471: ifnull +18 -> 489
    //   474: aload 5
    //   476: astore 11
    //   478: new 109	java/lang/StringBuffer
    //   481: dup
    //   482: aload 10
    //   484: invokespecial 112	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   487: astore 8
    //   489: aload 8
    //   491: astore 11
    //   493: aload_0
    //   494: getfield 62	cn/domob/android/ads/t:f	I
    //   497: iconst_5
    //   498: if_icmpne +23 -> 521
    //   501: aload 8
    //   503: astore 11
    //   505: aload_0
    //   506: getfield 64	cn/domob/android/ads/t:h	Z
    //   509: ifne +12 -> 521
    //   512: aload 8
    //   514: astore 11
    //   516: aload_0
    //   517: iconst_1
    //   518: putfield 64	cn/domob/android/ads/t:h	Z
    //   521: aload 8
    //   523: astore_1
    //   524: aload 4
    //   526: ifnull +8 -> 534
    //   529: aload 4
    //   531: invokevirtual 160	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   534: aload 6
    //   536: ifnull +8 -> 544
    //   539: aload 6
    //   541: invokevirtual 164	java/io/OutputStream:close	()V
    //   544: aload 7
    //   546: ifnull +8 -> 554
    //   549: aload 7
    //   551: invokevirtual 209	java/io/InputStream:close	()V
    //   554: aload 9
    //   556: ifnull +8 -> 564
    //   559: aload 9
    //   561: invokevirtual 210	java/io/BufferedReader:close	()V
    //   564: aload_1
    //   565: astore 4
    //   567: goto -241 -> 326
    //   570: astore_3
    //   571: aload_1
    //   572: astore 4
    //   574: goto -248 -> 326
    //   577: astore 10
    //   579: aconst_null
    //   580: astore 8
    //   582: aconst_null
    //   583: astore 7
    //   585: aconst_null
    //   586: astore 6
    //   588: aload 9
    //   590: astore 4
    //   592: aload 4
    //   594: astore 13
    //   596: aload 8
    //   598: astore 12
    //   600: aload 7
    //   602: astore 11
    //   604: aload 6
    //   606: astore 9
    //   608: aload_0
    //   609: getfield 62	cn/domob/android/ads/t:f	I
    //   612: iconst_5
    //   613: if_icmpge +261 -> 874
    //   616: aload 4
    //   618: astore 13
    //   620: aload 8
    //   622: astore 12
    //   624: aload 7
    //   626: astore 11
    //   628: aload 6
    //   630: astore 9
    //   632: aload_0
    //   633: aload_0
    //   634: getfield 62	cn/domob/android/ads/t:f	I
    //   637: iconst_1
    //   638: iadd
    //   639: putfield 62	cn/domob/android/ads/t:f	I
    //   642: aload 4
    //   644: astore 13
    //   646: aload 8
    //   648: astore 12
    //   650: aload 7
    //   652: astore 11
    //   654: aload 6
    //   656: astore 9
    //   658: getstatic 42	cn/domob/android/ads/t:a	Lcn/domob/android/i/f;
    //   661: ldc -41
    //   663: new 217	java/lang/StringBuilder
    //   666: dup
    //   667: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   670: ldc -8
    //   672: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   675: aload_0
    //   676: getfield 62	cn/domob/android/ads/t:f	I
    //   679: invokevirtual 239	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   682: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   685: invokevirtual 242	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   688: aload 4
    //   690: astore 13
    //   692: aload 8
    //   694: astore 12
    //   696: aload 7
    //   698: astore 11
    //   700: aload 6
    //   702: astore 9
    //   704: aload_0
    //   705: aload_1
    //   706: aload_0
    //   707: getfield 62	cn/domob/android/ads/t:f	I
    //   710: aload_3
    //   711: invokespecial 246	cn/domob/android/ads/t:a	(Ljava/lang/String;ILcn/domob/android/ads/g;)Ljava/lang/String;
    //   714: astore_1
    //   715: aload_1
    //   716: ifnull +768 -> 1484
    //   719: aload 4
    //   721: astore 13
    //   723: aload 8
    //   725: astore 12
    //   727: aload 7
    //   729: astore 11
    //   731: aload 6
    //   733: astore 9
    //   735: new 109	java/lang/StringBuffer
    //   738: dup
    //   739: aload_1
    //   740: invokespecial 112	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   743: astore_3
    //   744: aload_3
    //   745: astore_1
    //   746: aload 4
    //   748: astore 13
    //   750: aload 8
    //   752: astore 12
    //   754: aload 7
    //   756: astore 11
    //   758: aload 6
    //   760: astore 9
    //   762: aload_0
    //   763: getfield 62	cn/domob/android/ads/t:f	I
    //   766: iconst_5
    //   767: if_icmpne +51 -> 818
    //   770: aload_3
    //   771: astore_1
    //   772: aload 4
    //   774: astore 13
    //   776: aload 8
    //   778: astore 12
    //   780: aload 7
    //   782: astore 11
    //   784: aload 6
    //   786: astore 9
    //   788: aload_0
    //   789: getfield 64	cn/domob/android/ads/t:h	Z
    //   792: ifne +26 -> 818
    //   795: aload 4
    //   797: astore 13
    //   799: aload 8
    //   801: astore 12
    //   803: aload 7
    //   805: astore 11
    //   807: aload 6
    //   809: astore 9
    //   811: aload_0
    //   812: iconst_1
    //   813: putfield 64	cn/domob/android/ads/t:h	Z
    //   816: aload_3
    //   817: astore_1
    //   818: aload 4
    //   820: ifnull +8 -> 828
    //   823: aload 4
    //   825: invokevirtual 160	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   828: aload 6
    //   830: ifnull +8 -> 838
    //   833: aload 6
    //   835: invokevirtual 164	java/io/OutputStream:close	()V
    //   838: aload 7
    //   840: ifnull +8 -> 848
    //   843: aload 7
    //   845: invokevirtual 209	java/io/InputStream:close	()V
    //   848: aload_1
    //   849: astore 4
    //   851: aload 8
    //   853: ifnull -527 -> 326
    //   856: aload 8
    //   858: invokevirtual 210	java/io/BufferedReader:close	()V
    //   861: aload_1
    //   862: astore 4
    //   864: goto -538 -> 326
    //   867: astore_3
    //   868: aload_1
    //   869: astore 4
    //   871: goto -545 -> 326
    //   874: aload 4
    //   876: astore 13
    //   878: aload 8
    //   880: astore 12
    //   882: aload 7
    //   884: astore 11
    //   886: aload 6
    //   888: astore 9
    //   890: getstatic 42	cn/domob/android/ads/t:a	Lcn/domob/android/i/f;
    //   893: aload 10
    //   895: invokevirtual 100	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   898: aload 4
    //   900: astore 13
    //   902: aload 8
    //   904: astore 12
    //   906: aload 7
    //   908: astore 11
    //   910: aload 6
    //   912: astore 9
    //   914: getstatic 42	cn/domob/android/ads/t:a	Lcn/domob/android/i/f;
    //   917: aload_0
    //   918: getfield 66	cn/domob/android/ads/t:e	Landroid/content/Context;
    //   921: new 217	java/lang/StringBuilder
    //   924: dup
    //   925: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   928: ldc -6
    //   930: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   933: aload 10
    //   935: invokevirtual 253	java/io/IOException:getMessage	()Ljava/lang/String;
    //   938: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   941: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   944: invokevirtual 206	cn/domob/android/i/f:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   947: aload 5
    //   949: astore_1
    //   950: goto -132 -> 818
    //   953: aload_3
    //   954: astore 13
    //   956: aload 5
    //   958: astore 12
    //   960: aload 7
    //   962: astore 11
    //   964: aload 6
    //   966: astore 9
    //   968: getstatic 42	cn/domob/android/ads/t:a	Lcn/domob/android/i/f;
    //   971: aload 4
    //   973: invokevirtual 100	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   976: aload_3
    //   977: ifnull +7 -> 984
    //   980: aload_3
    //   981: invokevirtual 160	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   984: aload 6
    //   986: ifnull +8 -> 994
    //   989: aload 6
    //   991: invokevirtual 164	java/io/OutputStream:close	()V
    //   994: aload 7
    //   996: ifnull +8 -> 1004
    //   999: aload 7
    //   1001: invokevirtual 209	java/io/InputStream:close	()V
    //   1004: aload_1
    //   1005: astore 4
    //   1007: aload 5
    //   1009: ifnull -683 -> 326
    //   1012: aload 5
    //   1014: invokevirtual 210	java/io/BufferedReader:close	()V
    //   1017: aload_1
    //   1018: astore 4
    //   1020: goto -694 -> 326
    //   1023: astore_3
    //   1024: aload_1
    //   1025: astore 4
    //   1027: goto -701 -> 326
    //   1030: astore_1
    //   1031: aconst_null
    //   1032: astore 4
    //   1034: aconst_null
    //   1035: astore 7
    //   1037: aconst_null
    //   1038: astore 6
    //   1040: aload 8
    //   1042: astore_3
    //   1043: aload_3
    //   1044: ifnull +7 -> 1051
    //   1047: aload_3
    //   1048: invokevirtual 160	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   1051: aload 6
    //   1053: ifnull +8 -> 1061
    //   1056: aload 6
    //   1058: invokevirtual 164	java/io/OutputStream:close	()V
    //   1061: aload 7
    //   1063: ifnull +8 -> 1071
    //   1066: aload 7
    //   1068: invokevirtual 209	java/io/InputStream:close	()V
    //   1071: aload 4
    //   1073: ifnull +8 -> 1081
    //   1076: aload 4
    //   1078: invokevirtual 210	java/io/BufferedReader:close	()V
    //   1081: aload_1
    //   1082: athrow
    //   1083: astore_3
    //   1084: goto -3 -> 1081
    //   1087: astore_1
    //   1088: aconst_null
    //   1089: astore 5
    //   1091: aconst_null
    //   1092: astore 7
    //   1094: aconst_null
    //   1095: astore 6
    //   1097: aload 4
    //   1099: astore_3
    //   1100: aload 5
    //   1102: astore 4
    //   1104: goto -61 -> 1043
    //   1107: astore_1
    //   1108: aconst_null
    //   1109: astore 5
    //   1111: aconst_null
    //   1112: astore 7
    //   1114: aload 4
    //   1116: astore_3
    //   1117: aload 5
    //   1119: astore 4
    //   1121: goto -78 -> 1043
    //   1124: astore_1
    //   1125: aconst_null
    //   1126: astore 5
    //   1128: aload 4
    //   1130: astore_3
    //   1131: aload 5
    //   1133: astore 4
    //   1135: goto -92 -> 1043
    //   1138: astore_1
    //   1139: aload 4
    //   1141: astore_3
    //   1142: aload 9
    //   1144: astore 4
    //   1146: goto -103 -> 1043
    //   1149: astore_1
    //   1150: aload 4
    //   1152: astore 6
    //   1154: aload_3
    //   1155: astore 4
    //   1157: aload 5
    //   1159: astore_3
    //   1160: goto -117 -> 1043
    //   1163: astore_1
    //   1164: aload 13
    //   1166: astore_3
    //   1167: aload 12
    //   1169: astore 4
    //   1171: aload 11
    //   1173: astore 7
    //   1175: aload 9
    //   1177: astore 6
    //   1179: goto -136 -> 1043
    //   1182: astore 9
    //   1184: aconst_null
    //   1185: astore 8
    //   1187: aconst_null
    //   1188: astore 7
    //   1190: aconst_null
    //   1191: astore 6
    //   1193: aload 4
    //   1195: astore_3
    //   1196: aload 5
    //   1198: astore_1
    //   1199: aload 9
    //   1201: astore 4
    //   1203: aload 8
    //   1205: astore 5
    //   1207: goto -254 -> 953
    //   1210: astore 9
    //   1212: aconst_null
    //   1213: astore 8
    //   1215: aconst_null
    //   1216: astore 7
    //   1218: aload 4
    //   1220: astore_3
    //   1221: aload 5
    //   1223: astore_1
    //   1224: aload 9
    //   1226: astore 4
    //   1228: aload 8
    //   1230: astore 5
    //   1232: goto -279 -> 953
    //   1235: astore 9
    //   1237: aconst_null
    //   1238: astore 8
    //   1240: aload 4
    //   1242: astore_3
    //   1243: aload 5
    //   1245: astore_1
    //   1246: aload 9
    //   1248: astore 4
    //   1250: aload 8
    //   1252: astore 5
    //   1254: goto -301 -> 953
    //   1257: astore 8
    //   1259: aload 4
    //   1261: astore_3
    //   1262: aload 5
    //   1264: astore_1
    //   1265: aload 8
    //   1267: astore 4
    //   1269: aload 9
    //   1271: astore 5
    //   1273: goto -320 -> 953
    //   1276: astore 5
    //   1278: aload 4
    //   1280: astore_3
    //   1281: aload 8
    //   1283: astore_1
    //   1284: aload 5
    //   1286: astore 4
    //   1288: aload 9
    //   1290: astore 5
    //   1292: goto -339 -> 953
    //   1295: astore 10
    //   1297: aconst_null
    //   1298: astore 8
    //   1300: aconst_null
    //   1301: astore 7
    //   1303: aconst_null
    //   1304: astore 6
    //   1306: goto -714 -> 592
    //   1309: astore 10
    //   1311: aconst_null
    //   1312: astore 8
    //   1314: aconst_null
    //   1315: astore 7
    //   1317: goto -725 -> 592
    //   1320: astore 10
    //   1322: aconst_null
    //   1323: astore 8
    //   1325: goto -733 -> 592
    //   1328: astore 10
    //   1330: aload 11
    //   1332: astore 5
    //   1334: aload 9
    //   1336: astore 8
    //   1338: goto -746 -> 592
    //   1341: astore_3
    //   1342: aload_1
    //   1343: astore 4
    //   1345: goto -1019 -> 326
    //   1348: astore 6
    //   1350: aconst_null
    //   1351: astore 4
    //   1353: aconst_null
    //   1354: astore 8
    //   1356: aload 5
    //   1358: astore_1
    //   1359: aconst_null
    //   1360: astore_3
    //   1361: aload 8
    //   1363: astore 5
    //   1365: goto -1103 -> 262
    //   1368: astore 6
    //   1370: aconst_null
    //   1371: astore 9
    //   1373: aload 4
    //   1375: astore 8
    //   1377: aload 5
    //   1379: astore_1
    //   1380: aconst_null
    //   1381: astore_3
    //   1382: aload 9
    //   1384: astore 4
    //   1386: aload 8
    //   1388: astore 5
    //   1390: goto -1128 -> 262
    //   1393: astore_3
    //   1394: aload 6
    //   1396: astore 8
    //   1398: aload 4
    //   1400: astore 9
    //   1402: aload 5
    //   1404: astore_1
    //   1405: aconst_null
    //   1406: astore 4
    //   1408: aload_3
    //   1409: astore 6
    //   1411: aload 4
    //   1413: astore_3
    //   1414: aload 8
    //   1416: astore 4
    //   1418: aload 9
    //   1420: astore 5
    //   1422: goto -1160 -> 262
    //   1425: astore_3
    //   1426: aload 6
    //   1428: astore 8
    //   1430: aload 4
    //   1432: astore 9
    //   1434: aload 5
    //   1436: astore_1
    //   1437: aconst_null
    //   1438: astore 4
    //   1440: aload_3
    //   1441: astore 6
    //   1443: aload 4
    //   1445: astore_3
    //   1446: aload 8
    //   1448: astore 4
    //   1450: aload 9
    //   1452: astore 5
    //   1454: goto -1192 -> 262
    //   1457: astore 10
    //   1459: aload 4
    //   1461: astore 5
    //   1463: aload 8
    //   1465: astore_1
    //   1466: aload 9
    //   1468: astore_3
    //   1469: aload 6
    //   1471: astore 4
    //   1473: aload 10
    //   1475: astore 6
    //   1477: goto -1215 -> 262
    //   1480: astore_1
    //   1481: goto -1321 -> 160
    //   1484: aload 5
    //   1486: astore_3
    //   1487: goto -743 -> 744
    //   1490: aload 5
    //   1492: astore_1
    //   1493: goto -969 -> 524
    //   1496: astore 4
    //   1498: aconst_null
    //   1499: astore 9
    //   1501: aconst_null
    //   1502: astore 7
    //   1504: aconst_null
    //   1505: astore 8
    //   1507: aload 5
    //   1509: astore_1
    //   1510: aload 6
    //   1512: astore_3
    //   1513: aload 9
    //   1515: astore 5
    //   1517: aload 8
    //   1519: astore 6
    //   1521: goto -568 -> 953
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1524	0	this	t
    //   0	1524	1	paramString	String
    //   0	1524	2	paramInt	int
    //   0	1524	3	paramG	g
    //   44	1428	4	localObject1	Object
    //   1496	1	4	localThrowable1	Throwable
    //   26	1246	5	localObject2	Object
    //   1276	9	5	localThrowable2	Throwable
    //   1290	226	5	localObject3	Object
    //   4	1301	6	localObject4	Object
    //   1348	1	6	localMalformedURLException1	java.net.MalformedURLException
    //   1368	27	6	localMalformedURLException2	java.net.MalformedURLException
    //   1409	111	6	localObject5	Object
    //   10	1493	7	localObject6	Object
    //   7	227	8	localObject7	Object
    //   242	17	8	localMalformedURLException3	java.net.MalformedURLException
    //   467	784	8	localObject8	Object
    //   1257	25	8	localThrowable3	Throwable
    //   1298	220	8	localObject9	Object
    //   1	1175	9	localObject10	Object
    //   1182	18	9	localThrowable4	Throwable
    //   1210	15	9	localThrowable5	Throwable
    //   1235	100	9	localThrowable6	Throwable
    //   1371	143	9	localObject11	Object
    //   463	20	10	str	String
    //   577	357	10	localIOException1	java.io.IOException
    //   1295	1	10	localIOException2	java.io.IOException
    //   1309	1	10	localIOException3	java.io.IOException
    //   1320	1	10	localIOException4	java.io.IOException
    //   1328	1	10	localIOException5	java.io.IOException
    //   1457	17	10	localMalformedURLException4	java.net.MalformedURLException
    //   213	1118	11	localObject12	Object
    //   598	570	12	localObject13	Object
    //   594	571	13	localObject14	Object
    // Exception table:
    //   from	to	target	type
    //   215	222	242	java/net/MalformedURLException
    //   231	239	242	java/net/MalformedURLException
    //   336	376	242	java/net/MalformedURLException
    //   380	388	242	java/net/MalformedURLException
    //   392	401	242	java/net/MalformedURLException
    //   405	415	242	java/net/MalformedURLException
    //   419	449	242	java/net/MalformedURLException
    //   453	465	242	java/net/MalformedURLException
    //   478	489	242	java/net/MalformedURLException
    //   539	544	570	java/lang/Throwable
    //   549	554	570	java/lang/Throwable
    //   559	564	570	java/lang/Throwable
    //   28	46	577	java/io/IOException
    //   833	838	867	java/lang/Throwable
    //   843	848	867	java/lang/Throwable
    //   856	861	867	java/lang/Throwable
    //   989	994	1023	java/lang/Throwable
    //   999	1004	1023	java/lang/Throwable
    //   1012	1017	1023	java/lang/Throwable
    //   28	46	1030	finally
    //   1056	1061	1083	java/lang/Throwable
    //   1066	1071	1083	java/lang/Throwable
    //   1076	1081	1083	java/lang/Throwable
    //   46	103	1087	finally
    //   108	116	1107	finally
    //   163	189	1107	finally
    //   193	211	1124	finally
    //   215	222	1138	finally
    //   231	239	1138	finally
    //   336	376	1138	finally
    //   380	388	1138	finally
    //   392	401	1138	finally
    //   405	415	1138	finally
    //   419	449	1138	finally
    //   453	465	1138	finally
    //   478	489	1138	finally
    //   493	501	1138	finally
    //   505	512	1138	finally
    //   516	521	1138	finally
    //   262	282	1149	finally
    //   608	616	1163	finally
    //   632	642	1163	finally
    //   658	688	1163	finally
    //   704	715	1163	finally
    //   735	744	1163	finally
    //   762	770	1163	finally
    //   788	795	1163	finally
    //   811	816	1163	finally
    //   890	898	1163	finally
    //   914	947	1163	finally
    //   968	976	1163	finally
    //   46	103	1182	java/lang/Throwable
    //   108	116	1210	java/lang/Throwable
    //   163	189	1210	java/lang/Throwable
    //   193	211	1235	java/lang/Throwable
    //   215	222	1257	java/lang/Throwable
    //   231	239	1257	java/lang/Throwable
    //   336	376	1257	java/lang/Throwable
    //   380	388	1257	java/lang/Throwable
    //   392	401	1257	java/lang/Throwable
    //   405	415	1257	java/lang/Throwable
    //   419	449	1257	java/lang/Throwable
    //   453	465	1257	java/lang/Throwable
    //   478	489	1257	java/lang/Throwable
    //   493	501	1276	java/lang/Throwable
    //   505	512	1276	java/lang/Throwable
    //   516	521	1276	java/lang/Throwable
    //   46	103	1295	java/io/IOException
    //   108	116	1309	java/io/IOException
    //   163	189	1309	java/io/IOException
    //   193	211	1320	java/io/IOException
    //   215	222	1328	java/io/IOException
    //   231	239	1328	java/io/IOException
    //   336	376	1328	java/io/IOException
    //   380	388	1328	java/io/IOException
    //   392	401	1328	java/io/IOException
    //   405	415	1328	java/io/IOException
    //   419	449	1328	java/io/IOException
    //   453	465	1328	java/io/IOException
    //   478	489	1328	java/io/IOException
    //   493	501	1328	java/io/IOException
    //   505	512	1328	java/io/IOException
    //   516	521	1328	java/io/IOException
    //   297	302	1341	java/lang/Throwable
    //   307	312	1341	java/lang/Throwable
    //   319	323	1341	java/lang/Throwable
    //   28	46	1348	java/net/MalformedURLException
    //   46	103	1368	java/net/MalformedURLException
    //   108	116	1393	java/net/MalformedURLException
    //   163	189	1393	java/net/MalformedURLException
    //   193	211	1425	java/net/MalformedURLException
    //   493	501	1457	java/net/MalformedURLException
    //   505	512	1457	java/net/MalformedURLException
    //   516	521	1457	java/net/MalformedURLException
    //   131	136	1480	java/lang/Throwable
    //   140	148	1480	java/lang/Throwable
    //   152	160	1480	java/lang/Throwable
    //   28	46	1496	java/lang/Throwable
  }
  
  protected String a(String paramString, g paramG)
  {
    return a(paramString, 0, paramG);
  }
  
  class a
    implements HostnameVerifier
  {
    a() {}
    
    public boolean verify(String paramString, SSLSession paramSSLSession)
    {
      return true;
    }
  }
  
  class b
    implements X509TrustManager
  {
    b() {}
    
    public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
    
    public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
    
    public X509Certificate[] getAcceptedIssuers()
    {
      return null;
    }
  }
}
