package com.lidroid.xutils.http.callback;

public class FileDownloadHandler
{
  public FileDownloadHandler() {}
  
  /* Error */
  public java.io.File handleEntity(org.apache.http.HttpEntity paramHttpEntity, RequestCallBackHandler paramRequestCallBackHandler, String paramString1, boolean paramBoolean, String paramString2)
    throws java.io.IOException
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +10 -> 11
    //   4: aload_3
    //   5: invokestatic 19	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   8: ifeq +7 -> 15
    //   11: aconst_null
    //   12: astore_1
    //   13: aload_1
    //   14: areturn
    //   15: new 21	java/io/File
    //   18: dup
    //   19: aload_3
    //   20: invokespecial 24	java/io/File:<init>	(Ljava/lang/String;)V
    //   23: astore 13
    //   25: aload 13
    //   27: invokevirtual 28	java/io/File:exists	()Z
    //   30: ifne +32 -> 62
    //   33: aload 13
    //   35: invokevirtual 32	java/io/File:getParentFile	()Ljava/io/File;
    //   38: astore 14
    //   40: aload 14
    //   42: invokevirtual 28	java/io/File:exists	()Z
    //   45: ifne +11 -> 56
    //   48: aload 14
    //   50: invokevirtual 35	java/io/File:mkdirs	()Z
    //   53: ifeq +9 -> 62
    //   56: aload 13
    //   58: invokevirtual 38	java/io/File:createNewFile	()Z
    //   61: pop
    //   62: lconst_0
    //   63: lstore 7
    //   65: aconst_null
    //   66: astore 15
    //   68: aconst_null
    //   69: astore 14
    //   71: iload 4
    //   73: ifeq +87 -> 160
    //   76: aload 13
    //   78: invokevirtual 42	java/io/File:length	()J
    //   81: lstore 7
    //   83: new 44	java/io/FileOutputStream
    //   86: dup
    //   87: aload_3
    //   88: iconst_1
    //   89: invokespecial 47	java/io/FileOutputStream:<init>	(Ljava/lang/String;Z)V
    //   92: astore_3
    //   93: aload_1
    //   94: invokeinterface 52 1 0
    //   99: lload 7
    //   101: ladd
    //   102: lstore 11
    //   104: new 54	java/io/BufferedInputStream
    //   107: dup
    //   108: aload_1
    //   109: invokeinterface 58 1 0
    //   114: invokespecial 61	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   117: astore_1
    //   118: new 63	java/io/BufferedOutputStream
    //   121: dup
    //   122: aload_3
    //   123: invokespecial 66	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   126: astore_3
    //   127: aload_2
    //   128: ifnull +44 -> 172
    //   131: aload_2
    //   132: lload 11
    //   134: lload 7
    //   136: iconst_1
    //   137: invokeinterface 72 6 0
    //   142: istore 4
    //   144: iload 4
    //   146: ifne +26 -> 172
    //   149: aload_1
    //   150: invokestatic 78	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   153: aload_3
    //   154: invokestatic 78	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   157: aload 13
    //   159: areturn
    //   160: new 44	java/io/FileOutputStream
    //   163: dup
    //   164: aload_3
    //   165: invokespecial 79	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   168: astore_3
    //   169: goto -76 -> 93
    //   172: sipush 4096
    //   175: newarray byte
    //   177: astore 14
    //   179: aload_1
    //   180: aload 14
    //   182: invokevirtual 83	java/io/BufferedInputStream:read	([B)I
    //   185: istore 6
    //   187: iload 6
    //   189: iconst_m1
    //   190: if_icmpne +86 -> 276
    //   193: aload_3
    //   194: invokevirtual 86	java/io/BufferedOutputStream:flush	()V
    //   197: aload_2
    //   198: ifnull +15 -> 213
    //   201: aload_2
    //   202: lload 11
    //   204: lload 7
    //   206: iconst_1
    //   207: invokeinterface 72 6 0
    //   212: pop
    //   213: aload_1
    //   214: invokestatic 78	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   217: aload_3
    //   218: invokestatic 78	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   221: aload 13
    //   223: astore_1
    //   224: aload 13
    //   226: invokevirtual 28	java/io/File:exists	()Z
    //   229: ifeq -216 -> 13
    //   232: aload 13
    //   234: astore_1
    //   235: aload 5
    //   237: invokestatic 19	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   240: ifne -227 -> 13
    //   243: new 21	java/io/File
    //   246: dup
    //   247: aload 13
    //   249: invokevirtual 90	java/io/File:getParent	()Ljava/lang/String;
    //   252: aload 5
    //   254: invokespecial 93	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   257: astore_1
    //   258: aload_1
    //   259: invokevirtual 28	java/io/File:exists	()Z
    //   262: ifne +89 -> 351
    //   265: aload 13
    //   267: aload_1
    //   268: invokevirtual 97	java/io/File:renameTo	(Ljava/io/File;)Z
    //   271: ifeq +117 -> 388
    //   274: aload_1
    //   275: areturn
    //   276: aload_3
    //   277: aload 14
    //   279: iconst_0
    //   280: iload 6
    //   282: invokevirtual 101	java/io/BufferedOutputStream:write	([BII)V
    //   285: lload 7
    //   287: iload 6
    //   289: i2l
    //   290: ladd
    //   291: lstore 9
    //   293: lload 9
    //   295: lstore 7
    //   297: aload_2
    //   298: ifnull -119 -> 179
    //   301: aload_2
    //   302: lload 11
    //   304: lload 9
    //   306: iconst_0
    //   307: invokeinterface 72 6 0
    //   312: istore 4
    //   314: lload 9
    //   316: lstore 7
    //   318: iload 4
    //   320: ifne -141 -> 179
    //   323: aload_1
    //   324: invokestatic 78	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   327: aload_3
    //   328: invokestatic 78	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   331: aload 13
    //   333: areturn
    //   334: astore_2
    //   335: aload 14
    //   337: astore_3
    //   338: aload 15
    //   340: astore_1
    //   341: aload_1
    //   342: invokestatic 78	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   345: aload_3
    //   346: invokestatic 78	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   349: aload_2
    //   350: athrow
    //   351: new 21	java/io/File
    //   354: dup
    //   355: aload 13
    //   357: invokevirtual 90	java/io/File:getParent	()Ljava/lang/String;
    //   360: new 103	java/lang/StringBuilder
    //   363: dup
    //   364: invokestatic 108	java/lang/System:currentTimeMillis	()J
    //   367: invokestatic 114	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   370: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   373: aload 5
    //   375: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   378: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   381: invokespecial 93	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   384: astore_1
    //   385: goto -127 -> 258
    //   388: aload 13
    //   390: astore_1
    //   391: goto -117 -> 274
    //   394: astore_2
    //   395: aload 14
    //   397: astore_3
    //   398: goto -57 -> 341
    //   401: astore_2
    //   402: goto -61 -> 341
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	405	0	this	FileDownloadHandler
    //   0	405	1	paramHttpEntity	org.apache.http.HttpEntity
    //   0	405	2	paramRequestCallBackHandler	RequestCallBackHandler
    //   0	405	3	paramString1	String
    //   0	405	4	paramBoolean	boolean
    //   0	405	5	paramString2	String
    //   185	103	6	i	int
    //   63	254	7	l1	long
    //   291	24	9	l2	long
    //   102	201	11	l3	long
    //   23	366	13	localFile	java.io.File
    //   38	358	14	localObject1	Object
    //   66	273	15	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   76	93	334	finally
    //   93	118	334	finally
    //   160	169	334	finally
    //   118	127	394	finally
    //   131	144	401	finally
    //   172	179	401	finally
    //   179	187	401	finally
    //   193	197	401	finally
    //   201	213	401	finally
    //   276	285	401	finally
    //   301	314	401	finally
  }
}
