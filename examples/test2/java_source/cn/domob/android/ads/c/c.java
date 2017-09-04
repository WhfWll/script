package cn.domob.android.ads.c;

import cn.domob.android.i.f;

public class c
{
  private static f a = new f(c.class.getSimpleName());
  private static final float b = 300000.0F;
  
  public c() {}
  
  /* Error */
  public static boolean a(android.graphics.Bitmap paramBitmap, long paramLong, String paramString)
  {
    // Byte code:
    //   0: invokestatic 41	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   3: invokevirtual 44	java/util/UUID:toString	()Ljava/lang/String;
    //   6: astore 8
    //   8: aconst_null
    //   9: astore 6
    //   11: aload_0
    //   12: ifnull +7 -> 19
    //   15: aload_3
    //   16: ifnonnull +63 -> 79
    //   19: iconst_0
    //   20: ifeq +11 -> 31
    //   23: new 46	java/lang/NullPointerException
    //   26: dup
    //   27: invokespecial 47	java/lang/NullPointerException:<init>	()V
    //   30: athrow
    //   31: aload_0
    //   32: ifnull +22 -> 54
    //   35: aload_0
    //   36: invokevirtual 53	android/graphics/Bitmap:isRecycled	()Z
    //   39: ifne +15 -> 54
    //   42: getstatic 25	cn/domob/android/ads/c/c:a	Lcn/domob/android/i/f;
    //   45: ldc 55
    //   47: invokevirtual 57	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   50: aload_0
    //   51: invokevirtual 60	android/graphics/Bitmap:recycle	()V
    //   54: iconst_0
    //   55: ifeq +11 -> 66
    //   58: new 46	java/lang/NullPointerException
    //   61: dup
    //   62: invokespecial 47	java/lang/NullPointerException:<init>	()V
    //   65: athrow
    //   66: iconst_0
    //   67: ireturn
    //   68: astore_0
    //   69: getstatic 25	cn/domob/android/ads/c/c:a	Lcn/domob/android/i/f;
    //   72: aload_0
    //   73: invokevirtual 63	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   76: goto -22 -> 54
    //   79: new 65	java/net/URL
    //   82: dup
    //   83: aload_3
    //   84: invokespecial 66	java/net/URL:<init>	(Ljava/lang/String;)V
    //   87: invokevirtual 70	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   90: checkcast 72	java/net/HttpURLConnection
    //   93: astore_3
    //   94: aload_3
    //   95: sipush 5000
    //   98: invokevirtual 76	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   101: aload_3
    //   102: iconst_1
    //   103: invokevirtual 80	java/net/HttpURLConnection:setDoInput	(Z)V
    //   106: aload_3
    //   107: iconst_1
    //   108: invokevirtual 83	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   111: aload_3
    //   112: iconst_0
    //   113: invokevirtual 86	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   116: aload_3
    //   117: ldc 88
    //   119: invokevirtual 91	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   122: aload_3
    //   123: ldc 93
    //   125: ldc 95
    //   127: invokevirtual 99	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   130: aload_3
    //   131: ldc 101
    //   133: ldc 103
    //   135: invokevirtual 99	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   138: aload_3
    //   139: ldc 105
    //   141: new 107	java/lang/StringBuilder
    //   144: dup
    //   145: invokespecial 108	java/lang/StringBuilder:<init>	()V
    //   148: ldc 110
    //   150: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: ldc 116
    //   155: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: aload 8
    //   160: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   166: invokevirtual 99	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   169: new 119	java/io/DataOutputStream
    //   172: dup
    //   173: aload_3
    //   174: invokevirtual 123	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   177: invokespecial 126	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   180: astore 7
    //   182: new 107	java/lang/StringBuilder
    //   185: dup
    //   186: invokespecial 108	java/lang/StringBuilder:<init>	()V
    //   189: astore 6
    //   191: aload 6
    //   193: ldc -128
    //   195: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: pop
    //   199: aload 6
    //   201: aload 8
    //   203: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: pop
    //   207: aload 6
    //   209: ldc -126
    //   211: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: pop
    //   215: aload 6
    //   217: new 107	java/lang/StringBuilder
    //   220: dup
    //   221: invokespecial 108	java/lang/StringBuilder:<init>	()V
    //   224: ldc -124
    //   226: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: aload_0
    //   230: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   233: ldc -119
    //   235: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: ldc -126
    //   240: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   246: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   249: pop
    //   250: aload 6
    //   252: new 107	java/lang/StringBuilder
    //   255: dup
    //   256: invokespecial 108	java/lang/StringBuilder:<init>	()V
    //   259: ldc -117
    //   261: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: ldc 103
    //   266: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: ldc -126
    //   271: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   277: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   280: pop
    //   281: aload 6
    //   283: ldc -126
    //   285: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: pop
    //   289: aload 7
    //   291: aload 6
    //   293: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   296: invokevirtual 145	java/lang/String:getBytes	()[B
    //   299: invokevirtual 149	java/io/DataOutputStream:write	([B)V
    //   302: new 151	java/io/ByteArrayOutputStream
    //   305: dup
    //   306: invokespecial 152	java/io/ByteArrayOutputStream:<init>	()V
    //   309: astore 6
    //   311: ldc 9
    //   313: lload_1
    //   314: l2f
    //   315: fdiv
    //   316: ldc -103
    //   318: fmul
    //   319: f2i
    //   320: istore 5
    //   322: iload 5
    //   324: istore 4
    //   326: iload 5
    //   328: bipush 100
    //   330: if_icmple +7 -> 337
    //   333: bipush 100
    //   335: istore 4
    //   337: getstatic 25	cn/domob/android/ads/c/c:a	Lcn/domob/android/i/f;
    //   340: new 107	java/lang/StringBuilder
    //   343: dup
    //   344: invokespecial 108	java/lang/StringBuilder:<init>	()V
    //   347: ldc -101
    //   349: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   352: iload 4
    //   354: invokevirtual 158	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   357: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   360: invokevirtual 160	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   363: aload_0
    //   364: getstatic 166	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   367: iload 4
    //   369: aload 6
    //   371: invokevirtual 170	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   374: pop
    //   375: new 172	java/io/ByteArrayInputStream
    //   378: dup
    //   379: aload 6
    //   381: invokevirtual 175	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   384: invokespecial 177	java/io/ByteArrayInputStream:<init>	([B)V
    //   387: astore 9
    //   389: sipush 1024
    //   392: newarray byte
    //   394: astore 6
    //   396: aload 9
    //   398: aload 6
    //   400: invokevirtual 183	java/io/InputStream:read	([B)I
    //   403: istore 4
    //   405: iload 4
    //   407: iconst_m1
    //   408: if_icmpeq +79 -> 487
    //   411: aload 7
    //   413: aload 6
    //   415: iconst_0
    //   416: iload 4
    //   418: invokevirtual 186	java/io/DataOutputStream:write	([BII)V
    //   421: goto -25 -> 396
    //   424: astore 8
    //   426: aload_3
    //   427: astore 6
    //   429: aload 7
    //   431: astore_3
    //   432: aload 8
    //   434: astore 7
    //   436: getstatic 25	cn/domob/android/ads/c/c:a	Lcn/domob/android/i/f;
    //   439: aload 7
    //   441: invokevirtual 63	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   444: aload_3
    //   445: ifnull +7 -> 452
    //   448: aload_3
    //   449: invokevirtual 189	java/io/DataOutputStream:close	()V
    //   452: aload_0
    //   453: ifnull +22 -> 475
    //   456: aload_0
    //   457: invokevirtual 53	android/graphics/Bitmap:isRecycled	()Z
    //   460: ifne +15 -> 475
    //   463: getstatic 25	cn/domob/android/ads/c/c:a	Lcn/domob/android/i/f;
    //   466: ldc 55
    //   468: invokevirtual 57	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   471: aload_0
    //   472: invokevirtual 60	android/graphics/Bitmap:recycle	()V
    //   475: aload 6
    //   477: ifnull -411 -> 66
    //   480: aload 6
    //   482: invokevirtual 192	java/net/HttpURLConnection:disconnect	()V
    //   485: iconst_0
    //   486: ireturn
    //   487: aload 9
    //   489: invokevirtual 193	java/io/InputStream:close	()V
    //   492: aload 7
    //   494: ldc -126
    //   496: invokevirtual 145	java/lang/String:getBytes	()[B
    //   499: invokevirtual 149	java/io/DataOutputStream:write	([B)V
    //   502: aload 7
    //   504: new 107	java/lang/StringBuilder
    //   507: dup
    //   508: invokespecial 108	java/lang/StringBuilder:<init>	()V
    //   511: ldc -128
    //   513: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   516: aload 8
    //   518: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   521: ldc -128
    //   523: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   526: ldc -126
    //   528: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   531: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   534: invokevirtual 145	java/lang/String:getBytes	()[B
    //   537: invokevirtual 149	java/io/DataOutputStream:write	([B)V
    //   540: aload 7
    //   542: invokevirtual 196	java/io/DataOutputStream:flush	()V
    //   545: aload_3
    //   546: invokevirtual 200	java/net/HttpURLConnection:getResponseCode	()I
    //   549: istore 4
    //   551: iload 4
    //   553: sipush 200
    //   556: if_icmplt +65 -> 621
    //   559: iload 4
    //   561: sipush 300
    //   564: if_icmpgt +57 -> 621
    //   567: aload 7
    //   569: ifnull +8 -> 577
    //   572: aload 7
    //   574: invokevirtual 189	java/io/DataOutputStream:close	()V
    //   577: aload_0
    //   578: ifnull +22 -> 600
    //   581: aload_0
    //   582: invokevirtual 53	android/graphics/Bitmap:isRecycled	()Z
    //   585: ifne +15 -> 600
    //   588: getstatic 25	cn/domob/android/ads/c/c:a	Lcn/domob/android/i/f;
    //   591: ldc 55
    //   593: invokevirtual 57	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   596: aload_0
    //   597: invokevirtual 60	android/graphics/Bitmap:recycle	()V
    //   600: aload_3
    //   601: ifnull +7 -> 608
    //   604: aload_3
    //   605: invokevirtual 192	java/net/HttpURLConnection:disconnect	()V
    //   608: iconst_1
    //   609: ireturn
    //   610: astore_0
    //   611: getstatic 25	cn/domob/android/ads/c/c:a	Lcn/domob/android/i/f;
    //   614: aload_0
    //   615: invokevirtual 63	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   618: goto -18 -> 600
    //   621: aload 7
    //   623: ifnull +8 -> 631
    //   626: aload 7
    //   628: invokevirtual 189	java/io/DataOutputStream:close	()V
    //   631: aload_0
    //   632: ifnull +22 -> 654
    //   635: aload_0
    //   636: invokevirtual 53	android/graphics/Bitmap:isRecycled	()Z
    //   639: ifne +15 -> 654
    //   642: getstatic 25	cn/domob/android/ads/c/c:a	Lcn/domob/android/i/f;
    //   645: ldc 55
    //   647: invokevirtual 57	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   650: aload_0
    //   651: invokevirtual 60	android/graphics/Bitmap:recycle	()V
    //   654: aload_3
    //   655: ifnull +7 -> 662
    //   658: aload_3
    //   659: invokevirtual 192	java/net/HttpURLConnection:disconnect	()V
    //   662: iconst_0
    //   663: ireturn
    //   664: astore_0
    //   665: getstatic 25	cn/domob/android/ads/c/c:a	Lcn/domob/android/i/f;
    //   668: aload_0
    //   669: invokevirtual 63	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   672: goto -18 -> 654
    //   675: astore_0
    //   676: getstatic 25	cn/domob/android/ads/c/c:a	Lcn/domob/android/i/f;
    //   679: aload_0
    //   680: invokevirtual 63	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   683: goto -208 -> 475
    //   686: astore_3
    //   687: aconst_null
    //   688: astore 6
    //   690: aconst_null
    //   691: astore 7
    //   693: getstatic 25	cn/domob/android/ads/c/c:a	Lcn/domob/android/i/f;
    //   696: aload_3
    //   697: invokevirtual 63	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   700: aload 7
    //   702: ifnull +8 -> 710
    //   705: aload 7
    //   707: invokevirtual 189	java/io/DataOutputStream:close	()V
    //   710: aload_0
    //   711: ifnull +22 -> 733
    //   714: aload_0
    //   715: invokevirtual 53	android/graphics/Bitmap:isRecycled	()Z
    //   718: ifne +15 -> 733
    //   721: getstatic 25	cn/domob/android/ads/c/c:a	Lcn/domob/android/i/f;
    //   724: ldc 55
    //   726: invokevirtual 57	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   729: aload_0
    //   730: invokevirtual 60	android/graphics/Bitmap:recycle	()V
    //   733: aload 6
    //   735: ifnull -669 -> 66
    //   738: aload 6
    //   740: invokevirtual 192	java/net/HttpURLConnection:disconnect	()V
    //   743: iconst_0
    //   744: ireturn
    //   745: astore_0
    //   746: getstatic 25	cn/domob/android/ads/c/c:a	Lcn/domob/android/i/f;
    //   749: aload_0
    //   750: invokevirtual 63	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   753: goto -20 -> 733
    //   756: astore_3
    //   757: aconst_null
    //   758: astore 6
    //   760: aconst_null
    //   761: astore 7
    //   763: aload 7
    //   765: ifnull +8 -> 773
    //   768: aload 7
    //   770: invokevirtual 189	java/io/DataOutputStream:close	()V
    //   773: aload_0
    //   774: ifnull +22 -> 796
    //   777: aload_0
    //   778: invokevirtual 53	android/graphics/Bitmap:isRecycled	()Z
    //   781: ifne +15 -> 796
    //   784: getstatic 25	cn/domob/android/ads/c/c:a	Lcn/domob/android/i/f;
    //   787: ldc 55
    //   789: invokevirtual 57	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   792: aload_0
    //   793: invokevirtual 60	android/graphics/Bitmap:recycle	()V
    //   796: aload 6
    //   798: ifnull +8 -> 806
    //   801: aload 6
    //   803: invokevirtual 192	java/net/HttpURLConnection:disconnect	()V
    //   806: aload_3
    //   807: athrow
    //   808: astore_0
    //   809: getstatic 25	cn/domob/android/ads/c/c:a	Lcn/domob/android/i/f;
    //   812: aload_0
    //   813: invokevirtual 63	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   816: goto -20 -> 796
    //   819: astore 8
    //   821: aconst_null
    //   822: astore 7
    //   824: aload_3
    //   825: astore 6
    //   827: aload 8
    //   829: astore_3
    //   830: goto -67 -> 763
    //   833: astore 8
    //   835: aload_3
    //   836: astore 6
    //   838: aload 8
    //   840: astore_3
    //   841: goto -78 -> 763
    //   844: astore 8
    //   846: aload_3
    //   847: astore 7
    //   849: aload 8
    //   851: astore_3
    //   852: goto -89 -> 763
    //   855: astore_3
    //   856: goto -93 -> 763
    //   859: astore 8
    //   861: aconst_null
    //   862: astore 7
    //   864: aload_3
    //   865: astore 6
    //   867: aload 8
    //   869: astore_3
    //   870: goto -177 -> 693
    //   873: astore 8
    //   875: aload_3
    //   876: astore 6
    //   878: aload 8
    //   880: astore_3
    //   881: goto -188 -> 693
    //   884: astore 7
    //   886: aconst_null
    //   887: astore_3
    //   888: goto -452 -> 436
    //   891: astore 7
    //   893: aload_3
    //   894: astore 6
    //   896: aconst_null
    //   897: astore_3
    //   898: goto -462 -> 436
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	901	0	paramBitmap	android.graphics.Bitmap
    //   0	901	1	paramLong	long
    //   0	901	3	paramString	String
    //   324	241	4	i	int
    //   320	11	5	j	int
    //   9	886	6	localObject1	Object
    //   180	683	7	localObject2	Object
    //   884	1	7	localException1	Exception
    //   891	1	7	localException2	Exception
    //   6	196	8	str	String
    //   424	93	8	localException3	Exception
    //   819	9	8	localObject3	Object
    //   833	6	8	localObject4	Object
    //   844	6	8	localObject5	Object
    //   859	9	8	localError1	Error
    //   873	6	8	localError2	Error
    //   387	101	9	localByteArrayInputStream	java.io.ByteArrayInputStream
    // Exception table:
    //   from	to	target	type
    //   23	31	68	java/io/IOException
    //   35	54	68	java/io/IOException
    //   182	322	424	java/lang/Exception
    //   337	396	424	java/lang/Exception
    //   396	405	424	java/lang/Exception
    //   411	421	424	java/lang/Exception
    //   487	551	424	java/lang/Exception
    //   572	577	610	java/io/IOException
    //   581	600	610	java/io/IOException
    //   626	631	664	java/io/IOException
    //   635	654	664	java/io/IOException
    //   448	452	675	java/io/IOException
    //   456	475	675	java/io/IOException
    //   79	94	686	java/lang/Error
    //   705	710	745	java/io/IOException
    //   714	733	745	java/io/IOException
    //   79	94	756	finally
    //   768	773	808	java/io/IOException
    //   777	796	808	java/io/IOException
    //   94	182	819	finally
    //   182	322	833	finally
    //   337	396	833	finally
    //   396	405	833	finally
    //   411	421	833	finally
    //   487	551	833	finally
    //   436	444	844	finally
    //   693	700	855	finally
    //   94	182	859	java/lang/Error
    //   182	322	873	java/lang/Error
    //   337	396	873	java/lang/Error
    //   396	405	873	java/lang/Error
    //   411	421	873	java/lang/Error
    //   487	551	873	java/lang/Error
    //   79	94	884	java/lang/Exception
    //   94	182	891	java/lang/Exception
  }
}
