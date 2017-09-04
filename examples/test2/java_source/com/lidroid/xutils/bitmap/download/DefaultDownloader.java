package com.lidroid.xutils.bitmap.download;

public class DefaultDownloader
  extends Downloader
{
  public DefaultDownloader() {}
  
  /* Error */
  public long downloadToStream(String paramString, java.io.OutputStream paramOutputStream, com.lidroid.xutils.BitmapUtils.BitmapLoadTask<?> paramBitmapLoadTask)
  {
    // Byte code:
    //   0: aload_3
    //   1: ifnull +17 -> 18
    //   4: aload_3
    //   5: invokevirtual 19	com/lidroid/xutils/BitmapUtils$BitmapLoadTask:isCancelled	()Z
    //   8: ifne +10 -> 18
    //   11: aload_3
    //   12: invokevirtual 23	com/lidroid/xutils/BitmapUtils$BitmapLoadTask:getTargetContainer	()Landroid/view/View;
    //   15: ifnonnull +7 -> 22
    //   18: ldc2_w 24
    //   21: lreturn
    //   22: aconst_null
    //   23: astore 16
    //   25: aconst_null
    //   26: astore 15
    //   28: invokestatic 30	com/lidroid/xutils/util/OtherUtils:trustAllHttpsURLConnection	()V
    //   31: lconst_0
    //   32: lstore 9
    //   34: aload 15
    //   36: astore 14
    //   38: aload 16
    //   40: astore 13
    //   42: aload_1
    //   43: ldc 32
    //   45: invokevirtual 38	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   48: ifeq +120 -> 168
    //   51: aload 15
    //   53: astore 14
    //   55: aload 16
    //   57: astore 13
    //   59: new 40	java/io/FileInputStream
    //   62: dup
    //   63: aload_1
    //   64: invokespecial 43	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   67: astore_1
    //   68: aload 15
    //   70: astore 14
    //   72: aload 16
    //   74: astore 13
    //   76: aload_1
    //   77: invokevirtual 47	java/io/FileInputStream:available	()I
    //   80: i2l
    //   81: lstore 5
    //   83: aload 15
    //   85: astore 14
    //   87: aload 16
    //   89: astore 13
    //   91: new 49	java/io/BufferedInputStream
    //   94: dup
    //   95: aload_1
    //   96: invokespecial 52	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   99: astore_1
    //   100: aload_1
    //   101: astore 13
    //   103: aload_1
    //   104: astore 14
    //   106: invokestatic 58	java/lang/System:currentTimeMillis	()J
    //   109: lstore 7
    //   111: aload_1
    //   112: astore 13
    //   114: aload_1
    //   115: astore 14
    //   117: aload_0
    //   118: invokevirtual 61	com/lidroid/xutils/bitmap/download/DefaultDownloader:getDefaultExpiry	()J
    //   121: lstore 11
    //   123: lload 7
    //   125: lload 11
    //   127: ladd
    //   128: lstore 7
    //   130: aload_1
    //   131: astore 14
    //   133: aload_1
    //   134: astore 13
    //   136: aload_3
    //   137: invokevirtual 19	com/lidroid/xutils/BitmapUtils$BitmapLoadTask:isCancelled	()Z
    //   140: ifne +20 -> 160
    //   143: aload_1
    //   144: astore 14
    //   146: aload_1
    //   147: astore 13
    //   149: aload_3
    //   150: invokevirtual 23	com/lidroid/xutils/BitmapUtils$BitmapLoadTask:getTargetContainer	()Landroid/view/View;
    //   153: astore 15
    //   155: aload 15
    //   157: ifnonnull +242 -> 399
    //   160: aload_1
    //   161: invokestatic 67	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   164: ldc2_w 24
    //   167: lreturn
    //   168: aload 15
    //   170: astore 14
    //   172: aload 16
    //   174: astore 13
    //   176: aload_1
    //   177: ldc 69
    //   179: invokevirtual 38	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   182: ifeq +72 -> 254
    //   185: aload 15
    //   187: astore 14
    //   189: aload 16
    //   191: astore 13
    //   193: aload_0
    //   194: invokevirtual 73	com/lidroid/xutils/bitmap/download/DefaultDownloader:getContext	()Landroid/content/Context;
    //   197: invokevirtual 79	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   200: aload_1
    //   201: bipush 7
    //   203: aload_1
    //   204: invokevirtual 82	java/lang/String:length	()I
    //   207: invokevirtual 86	java/lang/String:substring	(II)Ljava/lang/String;
    //   210: invokevirtual 92	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   213: astore_1
    //   214: aload 15
    //   216: astore 14
    //   218: aload 16
    //   220: astore 13
    //   222: aload_1
    //   223: invokevirtual 95	java/io/InputStream:available	()I
    //   226: i2l
    //   227: lstore 5
    //   229: aload 15
    //   231: astore 14
    //   233: aload 16
    //   235: astore 13
    //   237: new 49	java/io/BufferedInputStream
    //   240: dup
    //   241: aload_1
    //   242: invokespecial 52	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   245: astore_1
    //   246: ldc2_w 96
    //   249: lstore 7
    //   251: goto -121 -> 130
    //   254: aload 15
    //   256: astore 14
    //   258: aload 16
    //   260: astore 13
    //   262: new 99	java/net/URL
    //   265: dup
    //   266: aload_1
    //   267: invokespecial 100	java/net/URL:<init>	(Ljava/lang/String;)V
    //   270: invokevirtual 104	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   273: astore 17
    //   275: aload 15
    //   277: astore 14
    //   279: aload 16
    //   281: astore 13
    //   283: aload 17
    //   285: aload_0
    //   286: invokevirtual 107	com/lidroid/xutils/bitmap/download/DefaultDownloader:getDefaultConnectTimeout	()I
    //   289: invokevirtual 113	java/net/URLConnection:setConnectTimeout	(I)V
    //   292: aload 15
    //   294: astore 14
    //   296: aload 16
    //   298: astore 13
    //   300: aload 17
    //   302: aload_0
    //   303: invokevirtual 116	com/lidroid/xutils/bitmap/download/DefaultDownloader:getDefaultReadTimeout	()I
    //   306: invokevirtual 119	java/net/URLConnection:setReadTimeout	(I)V
    //   309: aload 15
    //   311: astore 14
    //   313: aload 16
    //   315: astore 13
    //   317: new 49	java/io/BufferedInputStream
    //   320: dup
    //   321: aload 17
    //   323: invokevirtual 123	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   326: invokespecial 52	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   329: astore_1
    //   330: aload_1
    //   331: astore 13
    //   333: aload_1
    //   334: astore 14
    //   336: aload 17
    //   338: invokevirtual 126	java/net/URLConnection:getExpiration	()J
    //   341: lstore 5
    //   343: lload 5
    //   345: lstore 7
    //   347: aload_1
    //   348: astore 13
    //   350: aload_1
    //   351: astore 14
    //   353: lload 5
    //   355: invokestatic 58	java/lang/System:currentTimeMillis	()J
    //   358: lcmp
    //   359: ifge +19 -> 378
    //   362: aload_1
    //   363: astore 13
    //   365: aload_1
    //   366: astore 14
    //   368: invokestatic 58	java/lang/System:currentTimeMillis	()J
    //   371: aload_0
    //   372: invokevirtual 61	com/lidroid/xutils/bitmap/download/DefaultDownloader:getDefaultExpiry	()J
    //   375: ladd
    //   376: lstore 7
    //   378: aload_1
    //   379: astore 13
    //   381: aload_1
    //   382: astore 14
    //   384: aload 17
    //   386: invokevirtual 129	java/net/URLConnection:getContentLength	()I
    //   389: istore 4
    //   391: iload 4
    //   393: i2l
    //   394: lstore 5
    //   396: goto -266 -> 130
    //   399: aload_1
    //   400: astore 14
    //   402: aload_1
    //   403: astore 13
    //   405: sipush 4096
    //   408: newarray byte
    //   410: astore 15
    //   412: aload_1
    //   413: astore 14
    //   415: aload_1
    //   416: astore 13
    //   418: new 131	java/io/BufferedOutputStream
    //   421: dup
    //   422: aload_2
    //   423: invokespecial 134	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   426: astore_2
    //   427: aload_1
    //   428: astore 14
    //   430: aload_1
    //   431: astore 13
    //   433: aload_1
    //   434: aload 15
    //   436: invokevirtual 138	java/io/BufferedInputStream:read	([B)I
    //   439: istore 4
    //   441: iload 4
    //   443: iconst_m1
    //   444: if_icmpne +20 -> 464
    //   447: aload_1
    //   448: astore 14
    //   450: aload_1
    //   451: astore 13
    //   453: aload_2
    //   454: invokevirtual 141	java/io/BufferedOutputStream:flush	()V
    //   457: aload_1
    //   458: invokestatic 67	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   461: lload 7
    //   463: lreturn
    //   464: aload_1
    //   465: astore 14
    //   467: aload_1
    //   468: astore 13
    //   470: aload_2
    //   471: aload 15
    //   473: iconst_0
    //   474: iload 4
    //   476: invokevirtual 145	java/io/BufferedOutputStream:write	([BII)V
    //   479: lload 9
    //   481: iload 4
    //   483: i2l
    //   484: ladd
    //   485: lstore 9
    //   487: aload_1
    //   488: astore 14
    //   490: aload_1
    //   491: astore 13
    //   493: aload_3
    //   494: invokevirtual 19	com/lidroid/xutils/BitmapUtils$BitmapLoadTask:isCancelled	()Z
    //   497: ifne +20 -> 517
    //   500: aload_1
    //   501: astore 14
    //   503: aload_1
    //   504: astore 13
    //   506: aload_3
    //   507: invokevirtual 23	com/lidroid/xutils/BitmapUtils$BitmapLoadTask:getTargetContainer	()Landroid/view/View;
    //   510: astore 16
    //   512: aload 16
    //   514: ifnonnull +11 -> 525
    //   517: aload_1
    //   518: invokestatic 67	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   521: ldc2_w 24
    //   524: lreturn
    //   525: aload_1
    //   526: astore 14
    //   528: aload_1
    //   529: astore 13
    //   531: aload_3
    //   532: lload 5
    //   534: lload 9
    //   536: invokevirtual 149	com/lidroid/xutils/BitmapUtils$BitmapLoadTask:updateProgress	(JJ)V
    //   539: goto -112 -> 427
    //   542: astore_1
    //   543: aload 14
    //   545: astore 13
    //   547: aload_1
    //   548: invokevirtual 153	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   551: aload_1
    //   552: invokestatic 159	com/lidroid/xutils/util/LogUtils:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   555: aload 14
    //   557: invokestatic 67	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   560: ldc2_w 24
    //   563: lreturn
    //   564: astore_1
    //   565: aload 13
    //   567: invokestatic 67	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   570: aload_1
    //   571: athrow
    //   572: astore_1
    //   573: goto -8 -> 565
    //   576: astore_1
    //   577: goto -34 -> 543
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	580	0	this	DefaultDownloader
    //   0	580	1	paramString	String
    //   0	580	2	paramOutputStream	java.io.OutputStream
    //   0	580	3	paramBitmapLoadTask	com.lidroid.xutils.BitmapUtils.BitmapLoadTask<?>
    //   389	93	4	i	int
    //   81	452	5	l1	long
    //   109	353	7	l2	long
    //   32	503	9	l3	long
    //   121	5	11	l4	long
    //   40	526	13	localObject1	Object
    //   36	520	14	localObject2	Object
    //   26	446	15	localObject3	Object
    //   23	490	16	localView	android.view.View
    //   273	112	17	localURLConnection	java.net.URLConnection
    // Exception table:
    //   from	to	target	type
    //   42	51	542	java/lang/Throwable
    //   59	68	542	java/lang/Throwable
    //   76	83	542	java/lang/Throwable
    //   91	100	542	java/lang/Throwable
    //   136	143	542	java/lang/Throwable
    //   149	155	542	java/lang/Throwable
    //   176	185	542	java/lang/Throwable
    //   193	214	542	java/lang/Throwable
    //   222	229	542	java/lang/Throwable
    //   237	246	542	java/lang/Throwable
    //   262	275	542	java/lang/Throwable
    //   283	292	542	java/lang/Throwable
    //   300	309	542	java/lang/Throwable
    //   317	330	542	java/lang/Throwable
    //   405	412	542	java/lang/Throwable
    //   418	427	542	java/lang/Throwable
    //   433	441	542	java/lang/Throwable
    //   453	457	542	java/lang/Throwable
    //   470	479	542	java/lang/Throwable
    //   493	500	542	java/lang/Throwable
    //   506	512	542	java/lang/Throwable
    //   531	539	542	java/lang/Throwable
    //   42	51	564	finally
    //   59	68	564	finally
    //   76	83	564	finally
    //   91	100	564	finally
    //   136	143	564	finally
    //   149	155	564	finally
    //   176	185	564	finally
    //   193	214	564	finally
    //   222	229	564	finally
    //   237	246	564	finally
    //   262	275	564	finally
    //   283	292	564	finally
    //   300	309	564	finally
    //   317	330	564	finally
    //   405	412	564	finally
    //   418	427	564	finally
    //   433	441	564	finally
    //   453	457	564	finally
    //   470	479	564	finally
    //   493	500	564	finally
    //   506	512	564	finally
    //   531	539	564	finally
    //   547	555	564	finally
    //   106	111	572	finally
    //   117	123	572	finally
    //   336	343	572	finally
    //   353	362	572	finally
    //   368	378	572	finally
    //   384	391	572	finally
    //   106	111	576	java/lang/Throwable
    //   117	123	576	java/lang/Throwable
    //   336	343	576	java/lang/Throwable
    //   353	362	576	java/lang/Throwable
    //   368	378	576	java/lang/Throwable
    //   384	391	576	java/lang/Throwable
  }
}
