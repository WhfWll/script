package com.bangcle.everisk.utils_l;

import android.content.Context;
import android.os.Build;
import com.bangcle.everisk.shell.LibProc;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public final class e
{
  private static int aa = 10000;
  
  public static String a(String paramString, int paramInt)
  {
    paramString = a(paramString, null, paramInt);
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = new String(paramString, "utf-8");
      return paramString;
    }
    catch (Exception paramString)
    {
      LibProc.a(paramString);
    }
    return null;
  }
  
  public static byte[] a(String paramString1, String paramString2, int paramInt)
  {
    aa = 10000;
    int i = 0;
    for (;;)
    {
      a localA;
      int j;
      try
      {
        localA = b(paramString1, paramString2);
        if (U != null)
        {
          j = U.length;
          LibProc.a("RiskStub.HTTP", "url: " + paramString1 + ", path: " + paramString2 + ", ret=" + T + ",len: " + j);
          if (localA.z()) {
            return null;
          }
        }
        else
        {
          j = 0;
          continue;
        }
        if (T != 1) {}
      }
      catch (Exception paramString1)
      {
        LibProc.a(paramString1);
        return null;
      }
      for (int k = 1; k != 0; k = 0)
      {
        aa = 10000;
        return U;
      }
      k = i;
      if (paramInt != -1)
      {
        i += 1;
        k = i;
        if (i >= paramInt) {
          return null;
        }
      }
      if (j > 0)
      {
        i = k;
        if (paramString2 != null) {
          continue;
        }
      }
      long l = aa;
      try
      {
        Thread.sleep(l);
        j = aa + aa;
        aa = j;
        i = k;
        if (j <= 900000) {
          continue;
        }
        aa = 900000;
        i = k;
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
  }
  
  /* Error */
  private static a b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: new 37	com/bangcle/everisk/utils_l/a
    //   5: dup
    //   6: invokespecial 90	com/bangcle/everisk/utils_l/a:<init>	()V
    //   9: astore 8
    //   11: ldc 92
    //   13: new 45	java/lang/StringBuilder
    //   16: dup
    //   17: ldc 94
    //   19: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   22: aload_0
    //   23: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: ldc 96
    //   28: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: invokestatic 73	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   37: new 98	java/net/URL
    //   40: dup
    //   41: aload_0
    //   42: invokespecial 99	java/net/URL:<init>	(Ljava/lang/String;)V
    //   45: invokevirtual 103	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   48: checkcast 105	java/net/HttpURLConnection
    //   51: astore 6
    //   53: aload 6
    //   55: ldc 107
    //   57: invokevirtual 110	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   60: aload_1
    //   61: ifnull +175 -> 236
    //   64: ldc 92
    //   66: new 45	java/lang/StringBuilder
    //   69: dup
    //   70: ldc 112
    //   72: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   75: aload_1
    //   76: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: ldc 96
    //   81: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   87: invokestatic 73	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   90: new 114	java/io/File
    //   93: dup
    //   94: aload_1
    //   95: invokespecial 115	java/io/File:<init>	(Ljava/lang/String;)V
    //   98: astore 7
    //   100: aload 7
    //   102: invokevirtual 118	java/io/File:getParent	()Ljava/lang/String;
    //   105: invokestatic 122	com/bangcle/everisk/utils_l/e:e	(Ljava/lang/String;)Z
    //   108: ifne +48 -> 156
    //   111: ldc 124
    //   113: new 45	java/lang/StringBuilder
    //   116: dup
    //   117: ldc 126
    //   119: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   122: aload 7
    //   124: invokevirtual 118	java/io/File:getParent	()Ljava/lang/String;
    //   127: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: ldc 96
    //   132: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   138: invokestatic 73	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   141: aload 8
    //   143: aconst_null
    //   144: invokevirtual 130	com/bangcle/everisk/utils_l/a:c	(Ljava/lang/Exception;)Lcom/bangcle/everisk/utils_l/a;
    //   147: areturn
    //   148: astore_0
    //   149: aload 8
    //   151: aload_0
    //   152: invokevirtual 130	com/bangcle/everisk/utils_l/a:c	(Ljava/lang/Exception;)Lcom/bangcle/everisk/utils_l/a;
    //   155: areturn
    //   156: aload 7
    //   158: invokevirtual 133	java/io/File:exists	()Z
    //   161: istore_3
    //   162: iload_3
    //   163: ifeq +180 -> 343
    //   166: aload 7
    //   168: invokevirtual 137	java/io/File:length	()J
    //   171: lstore 4
    //   173: ldc 124
    //   175: new 45	java/lang/StringBuilder
    //   178: dup
    //   179: ldc -117
    //   181: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   184: lload 4
    //   186: invokevirtual 142	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   189: ldc 96
    //   191: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   197: invokestatic 73	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   200: lload 4
    //   202: lconst_0
    //   203: lcmp
    //   204: ifeq +32 -> 236
    //   207: aload 6
    //   209: ldc -112
    //   211: new 45	java/lang/StringBuilder
    //   214: dup
    //   215: ldc -110
    //   217: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   220: lload 4
    //   222: invokevirtual 142	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   225: ldc -108
    //   227: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   233: invokevirtual 151	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   236: new 153	java/io/ByteArrayOutputStream
    //   239: dup
    //   240: invokespecial 154	java/io/ByteArrayOutputStream:<init>	()V
    //   243: astore 9
    //   245: aload 6
    //   247: invokevirtual 158	java/net/HttpURLConnection:getResponseCode	()I
    //   250: istore_2
    //   251: sipush 200
    //   254: iload_2
    //   255: if_icmpeq +109 -> 364
    //   258: sipush 206
    //   261: iload_2
    //   262: if_icmpeq +102 -> 364
    //   265: ldc 124
    //   267: new 45	java/lang/StringBuilder
    //   270: dup
    //   271: ldc -96
    //   273: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   276: iload_2
    //   277: invokevirtual 64	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   280: ldc 96
    //   282: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   288: invokestatic 73	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   291: sipush 416
    //   294: iload_2
    //   295: if_icmpne +12 -> 307
    //   298: iload_3
    //   299: ifeq +8 -> 307
    //   302: aload_1
    //   303: invokestatic 162	com/bangcle/everisk/utils_l/e:c	(Ljava/lang/String;)Z
    //   306: pop
    //   307: aload 8
    //   309: aconst_null
    //   310: invokevirtual 164	com/bangcle/everisk/utils_l/a:b	(Ljava/lang/Exception;)Lcom/bangcle/everisk/utils_l/a;
    //   313: pop
    //   314: aconst_null
    //   315: astore 6
    //   317: aload 9
    //   319: invokevirtual 167	java/io/ByteArrayOutputStream:close	()V
    //   322: aload 6
    //   324: ifnull +8 -> 332
    //   327: aload 6
    //   329: invokevirtual 170	java/io/InputStream:close	()V
    //   332: aload 8
    //   334: invokevirtual 77	com/bangcle/everisk/utils_l/a:z	()Z
    //   337: ifeq +204 -> 541
    //   340: aload 8
    //   342: areturn
    //   343: aload_1
    //   344: invokestatic 173	com/bangcle/everisk/utils_l/e:d	(Ljava/lang/String;)Z
    //   347: ifne +341 -> 688
    //   350: ldc -81
    //   352: ldc -79
    //   354: invokestatic 73	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   357: aload 8
    //   359: aconst_null
    //   360: invokevirtual 130	com/bangcle/everisk/utils_l/a:c	(Ljava/lang/Exception;)Lcom/bangcle/everisk/utils_l/a;
    //   363: areturn
    //   364: aload 6
    //   366: invokevirtual 181	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   369: ldc -73
    //   371: invokeinterface 189 2 0
    //   376: checkcast 191	java/util/List
    //   379: iconst_0
    //   380: invokeinterface 194 2 0
    //   385: checkcast 20	java/lang/String
    //   388: astore 7
    //   390: ldc 124
    //   392: new 45	java/lang/StringBuilder
    //   395: dup
    //   396: ldc -60
    //   398: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   401: aload 7
    //   403: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   406: ldc 96
    //   408: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   411: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   414: invokestatic 73	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   417: aload 6
    //   419: invokevirtual 200	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   422: astore 6
    //   424: sipush 1024
    //   427: newarray byte
    //   429: astore 7
    //   431: aload 6
    //   433: aload 7
    //   435: invokevirtual 204	java/io/InputStream:read	([B)I
    //   438: istore_2
    //   439: iload_2
    //   440: iconst_m1
    //   441: if_icmpeq +28 -> 469
    //   444: aload 9
    //   446: aload 7
    //   448: iconst_0
    //   449: iload_2
    //   450: invokevirtual 208	java/io/ByteArrayOutputStream:write	([BII)V
    //   453: goto -22 -> 431
    //   456: astore 7
    //   458: aload 8
    //   460: aload 7
    //   462: invokevirtual 164	com/bangcle/everisk/utils_l/a:b	(Ljava/lang/Exception;)Lcom/bangcle/everisk/utils_l/a;
    //   465: pop
    //   466: goto -149 -> 317
    //   469: ldc 124
    //   471: new 45	java/lang/StringBuilder
    //   474: dup
    //   475: ldc -46
    //   477: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   480: aload 9
    //   482: invokevirtual 213	java/io/ByteArrayOutputStream:size	()I
    //   485: invokevirtual 64	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   488: ldc 96
    //   490: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   493: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   496: invokestatic 73	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   499: aload 8
    //   501: iconst_1
    //   502: putfield 61	com/bangcle/everisk/utils_l/a:T	I
    //   505: goto -188 -> 317
    //   508: astore 7
    //   510: aload 8
    //   512: aload 7
    //   514: invokevirtual 164	com/bangcle/everisk/utils_l/a:b	(Ljava/lang/Exception;)Lcom/bangcle/everisk/utils_l/a;
    //   517: pop
    //   518: goto -201 -> 317
    //   521: astore 7
    //   523: aconst_null
    //   524: astore 6
    //   526: aload 7
    //   528: invokestatic 31	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/Exception;)V
    //   531: aload 8
    //   533: aconst_null
    //   534: invokevirtual 130	com/bangcle/everisk/utils_l/a:c	(Ljava/lang/Exception;)Lcom/bangcle/everisk/utils_l/a;
    //   537: pop
    //   538: goto -221 -> 317
    //   541: aload 8
    //   543: aload 9
    //   545: invokevirtual 217	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   548: putfield 41	com/bangcle/everisk/utils_l/a:U	[B
    //   551: aload 8
    //   553: getfield 41	com/bangcle/everisk/utils_l/a:U	[B
    //   556: arraylength
    //   557: ifne +6 -> 563
    //   560: aload 8
    //   562: areturn
    //   563: aload_1
    //   564: ifnull +66 -> 630
    //   567: ldc 124
    //   569: new 45	java/lang/StringBuilder
    //   572: dup
    //   573: ldc -37
    //   575: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   578: aload 8
    //   580: getfield 41	com/bangcle/everisk/utils_l/a:U	[B
    //   583: arraylength
    //   584: invokevirtual 64	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   587: ldc 96
    //   589: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   592: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   595: invokestatic 73	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   598: new 221	java/io/RandomAccessFile
    //   601: dup
    //   602: aload_1
    //   603: ldc -33
    //   605: invokespecial 225	java/io/RandomAccessFile:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   608: astore_1
    //   609: aload_1
    //   610: aload_1
    //   611: invokevirtual 226	java/io/RandomAccessFile:length	()J
    //   614: invokevirtual 229	java/io/RandomAccessFile:seek	(J)V
    //   617: aload_1
    //   618: aload 8
    //   620: getfield 41	com/bangcle/everisk/utils_l/a:U	[B
    //   623: invokevirtual 232	java/io/RandomAccessFile:write	([B)V
    //   626: aload_1
    //   627: invokevirtual 233	java/io/RandomAccessFile:close	()V
    //   630: ldc 124
    //   632: new 45	java/lang/StringBuilder
    //   635: dup
    //   636: ldc -21
    //   638: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   641: aload_0
    //   642: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   645: ldc -19
    //   647: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   650: aload 8
    //   652: getfield 61	com/bangcle/everisk/utils_l/a:T	I
    //   655: invokevirtual 64	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   658: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   661: invokestatic 73	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   664: aload 8
    //   666: areturn
    //   667: astore 7
    //   669: goto -143 -> 526
    //   672: astore 7
    //   674: aconst_null
    //   675: astore 6
    //   677: goto -167 -> 510
    //   680: astore 7
    //   682: aconst_null
    //   683: astore 6
    //   685: goto -227 -> 458
    //   688: lconst_0
    //   689: lstore 4
    //   691: goto -518 -> 173
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	694	0	paramString1	String
    //   0	694	1	paramString2	String
    //   250	200	2	i	int
    //   1	298	3	bool	boolean
    //   171	519	4	l	long
    //   51	633	6	localObject1	Object
    //   98	349	7	localObject2	Object
    //   456	5	7	localEOFException1	java.io.EOFException
    //   508	5	7	localIOException1	java.io.IOException
    //   521	6	7	localException1	Exception
    //   667	1	7	localException2	Exception
    //   672	1	7	localIOException2	java.io.IOException
    //   680	1	7	localEOFException2	java.io.EOFException
    //   9	656	8	localA	a
    //   243	301	9	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   37	60	148	java/io/IOException
    //   424	431	456	java/io/EOFException
    //   431	439	456	java/io/EOFException
    //   444	453	456	java/io/EOFException
    //   469	505	456	java/io/EOFException
    //   424	431	508	java/io/IOException
    //   431	439	508	java/io/IOException
    //   444	453	508	java/io/IOException
    //   469	505	508	java/io/IOException
    //   245	251	521	java/lang/Exception
    //   265	291	521	java/lang/Exception
    //   302	307	521	java/lang/Exception
    //   307	314	521	java/lang/Exception
    //   364	424	521	java/lang/Exception
    //   424	431	667	java/lang/Exception
    //   431	439	667	java/lang/Exception
    //   444	453	667	java/lang/Exception
    //   469	505	667	java/lang/Exception
    //   245	251	672	java/io/IOException
    //   265	291	672	java/io/IOException
    //   302	307	672	java/io/IOException
    //   307	314	672	java/io/IOException
    //   364	424	672	java/io/IOException
    //   245	251	680	java/io/EOFException
    //   265	291	680	java/io/EOFException
    //   302	307	680	java/io/EOFException
    //   307	314	680	java/io/EOFException
    //   364	424	680	java/io/EOFException
  }
  
  public static String c(Context paramContext)
  {
    String str1 = "";
    try
    {
      paramContext = paramContext.getFilesDir();
      if (paramContext == null) {
        return "";
      }
      String str2 = paramContext.getCanonicalPath();
      paramContext = str2;
      if (str2 == null) {
        return "";
      }
    }
    catch (Exception paramContext)
    {
      LibProc.a(paramContext);
      paramContext = str1;
    }
    return paramContext;
  }
  
  public static boolean c(String paramString)
  {
    try
    {
      LibProc.a("RiskStubShell.File", "delete file " + paramString);
      boolean bool = new File(paramString).delete();
      return bool;
    }
    catch (Exception paramString) {}
    return false;
  }
  
  /* Error */
  public static boolean c(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: ldc_w 259
    //   9: new 45	java/lang/StringBuilder
    //   12: dup
    //   13: ldc_w 261
    //   16: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   19: aload_0
    //   20: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: ldc 96
    //   25: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   31: invokestatic 73	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   34: ldc_w 259
    //   37: new 45	java/lang/StringBuilder
    //   40: dup
    //   41: ldc_w 263
    //   44: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   47: aload_1
    //   48: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: ldc 96
    //   53: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: invokestatic 73	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   62: new 114	java/io/File
    //   65: dup
    //   66: aload_0
    //   67: invokespecial 115	java/io/File:<init>	(Ljava/lang/String;)V
    //   70: invokevirtual 133	java/io/File:exists	()Z
    //   73: ifne +5 -> 78
    //   76: iconst_0
    //   77: ireturn
    //   78: new 114	java/io/File
    //   81: dup
    //   82: aload_1
    //   83: invokespecial 115	java/io/File:<init>	(Ljava/lang/String;)V
    //   86: invokevirtual 118	java/io/File:getParent	()Ljava/lang/String;
    //   89: invokestatic 122	com/bangcle/everisk/utils_l/e:e	(Ljava/lang/String;)Z
    //   92: ifeq +225 -> 317
    //   95: new 265	java/io/BufferedInputStream
    //   98: dup
    //   99: new 267	java/io/FileInputStream
    //   102: dup
    //   103: aload_0
    //   104: invokespecial 268	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   107: invokespecial 271	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   110: astore_3
    //   111: new 273	java/io/BufferedOutputStream
    //   114: dup
    //   115: new 275	java/io/FileOutputStream
    //   118: dup
    //   119: aload_1
    //   120: invokespecial 276	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   123: invokespecial 279	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   126: astore_0
    //   127: sipush 1024
    //   130: newarray byte
    //   132: astore_1
    //   133: aload_3
    //   134: aload_1
    //   135: invokevirtual 280	java/io/BufferedInputStream:read	([B)I
    //   138: istore_2
    //   139: iload_2
    //   140: iconst_m1
    //   141: if_icmpeq +49 -> 190
    //   144: aload_0
    //   145: aload_1
    //   146: iconst_0
    //   147: iload_2
    //   148: invokevirtual 281	java/io/BufferedOutputStream:write	([BII)V
    //   151: goto -18 -> 133
    //   154: astore 4
    //   156: aload_3
    //   157: astore_1
    //   158: aload 4
    //   160: astore_3
    //   161: aload_3
    //   162: invokestatic 31	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/Exception;)V
    //   165: aload_1
    //   166: ifnull +7 -> 173
    //   169: aload_1
    //   170: invokevirtual 282	java/io/BufferedInputStream:close	()V
    //   173: aload_0
    //   174: ifnull +143 -> 317
    //   177: aload_0
    //   178: invokevirtual 283	java/io/BufferedOutputStream:close	()V
    //   181: iconst_0
    //   182: ireturn
    //   183: astore_0
    //   184: aload_0
    //   185: invokestatic 31	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/Exception;)V
    //   188: iconst_0
    //   189: ireturn
    //   190: aload_0
    //   191: invokevirtual 286	java/io/BufferedOutputStream:flush	()V
    //   194: aload_3
    //   195: invokevirtual 282	java/io/BufferedInputStream:close	()V
    //   198: aload_0
    //   199: invokevirtual 283	java/io/BufferedOutputStream:close	()V
    //   202: iconst_1
    //   203: ireturn
    //   204: astore_0
    //   205: aload_0
    //   206: invokestatic 31	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/Exception;)V
    //   209: iconst_1
    //   210: ireturn
    //   211: astore_1
    //   212: aload_1
    //   213: invokestatic 31	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/Exception;)V
    //   216: goto -18 -> 198
    //   219: astore_1
    //   220: aload_1
    //   221: invokestatic 31	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/Exception;)V
    //   224: goto -51 -> 173
    //   227: astore_0
    //   228: aconst_null
    //   229: astore_3
    //   230: aload 4
    //   232: astore_1
    //   233: aload_3
    //   234: ifnull +7 -> 241
    //   237: aload_3
    //   238: invokevirtual 282	java/io/BufferedInputStream:close	()V
    //   241: aload_1
    //   242: ifnull +7 -> 249
    //   245: aload_1
    //   246: invokevirtual 283	java/io/BufferedOutputStream:close	()V
    //   249: aload_0
    //   250: athrow
    //   251: astore_3
    //   252: aload_3
    //   253: invokestatic 31	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/Exception;)V
    //   256: goto -15 -> 241
    //   259: astore_1
    //   260: aload_1
    //   261: invokestatic 31	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/Exception;)V
    //   264: goto -15 -> 249
    //   267: astore_0
    //   268: aload 4
    //   270: astore_1
    //   271: goto -38 -> 233
    //   274: astore 4
    //   276: aload_0
    //   277: astore_1
    //   278: aload 4
    //   280: astore_0
    //   281: goto -48 -> 233
    //   284: astore 4
    //   286: aload_1
    //   287: astore_3
    //   288: aload_0
    //   289: astore_1
    //   290: aload 4
    //   292: astore_0
    //   293: goto -60 -> 233
    //   296: astore_3
    //   297: aconst_null
    //   298: astore_0
    //   299: aload 5
    //   301: astore_1
    //   302: goto -141 -> 161
    //   305: astore 4
    //   307: aconst_null
    //   308: astore_0
    //   309: aload_3
    //   310: astore_1
    //   311: aload 4
    //   313: astore_3
    //   314: goto -153 -> 161
    //   317: iconst_0
    //   318: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	319	0	paramString1	String
    //   0	319	1	paramString2	String
    //   138	10	2	i	int
    //   110	128	3	localObject1	Object
    //   251	2	3	localException1	Exception
    //   287	1	3	str	String
    //   296	14	3	localException2	Exception
    //   313	1	3	localException3	Exception
    //   1	1	4	localObject2	Object
    //   154	115	4	localException4	Exception
    //   274	5	4	localObject3	Object
    //   284	7	4	localObject4	Object
    //   305	7	4	localException5	Exception
    //   4	296	5	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   127	133	154	java/lang/Exception
    //   133	139	154	java/lang/Exception
    //   144	151	154	java/lang/Exception
    //   190	194	154	java/lang/Exception
    //   177	181	183	java/lang/Exception
    //   198	202	204	java/lang/Exception
    //   194	198	211	java/lang/Exception
    //   169	173	219	java/lang/Exception
    //   62	76	227	finally
    //   78	111	227	finally
    //   237	241	251	java/lang/Exception
    //   245	249	259	java/lang/Exception
    //   111	127	267	finally
    //   127	133	274	finally
    //   133	139	274	finally
    //   144	151	274	finally
    //   190	194	274	finally
    //   161	165	284	finally
    //   62	76	296	java/lang/Exception
    //   78	111	296	java/lang/Exception
    //   111	127	305	java/lang/Exception
  }
  
  public static ArrayList d(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    LibProc.a("RiskStubShell.ExtractZipFile", "zfile: " + paramString1 + ", DstDir: " + paramString2);
    ZipInputStream localZipInputStream;
    for (;;)
    {
      byte[] arrayOfByte;
      ZipEntry localZipEntry;
      File localFile;
      try
      {
        paramString1 = new FileInputStream(paramString1);
        localZipInputStream = new ZipInputStream(paramString1);
        arrayOfByte = new byte['Ā'];
        localZipEntry = localZipInputStream.getNextEntry();
        if (localZipEntry == null) {
          break;
        }
        localFile = new File(paramString2 + "/" + localZipEntry.getName());
        localObject = new File(localFile.getParentFile().getPath());
        if (localZipEntry.isDirectory())
        {
          if (!localFile.exists()) {
            localFile.mkdirs();
          }
          localZipInputStream.closeEntry();
          continue;
        }
        if (((File)localObject).exists()) {
          break label210;
        }
      }
      catch (Exception paramString1)
      {
        LibProc.a("RiskStubShell.ExtractZipFile", "ERROR: " + paramString1.getMessage());
        LibProc.a(paramString1);
        return localArrayList;
      }
      ((File)localObject).mkdirs();
      label210:
      Object localObject = new FileOutputStream(localFile);
      LibProc.a("RiskStubShell.ExtractZipFile", "ze.getName: " + localFile.getAbsolutePath());
      localArrayList.add(localZipEntry.getName());
      for (;;)
      {
        int i = localZipInputStream.read(arrayOfByte);
        if (i <= 0) {
          break;
        }
        ((FileOutputStream)localObject).write(arrayOfByte, 0, i);
      }
      localZipInputStream.closeEntry();
      ((FileOutputStream)localObject).close();
    }
    paramString1.close();
    localZipInputStream.close();
    return localArrayList;
  }
  
  private static boolean d(String paramString)
  {
    try
    {
      paramString = new File(paramString);
      if (paramString.isFile()) {
        return true;
      }
      boolean bool = paramString.createNewFile();
      return bool;
    }
    catch (Exception paramString) {}
    return false;
  }
  
  public static boolean e(String paramString)
  {
    try
    {
      File localFile = new File(paramString);
      if (!localFile.exists()) {
        return localFile.mkdirs();
      }
      if (localFile.isDirectory()) {
        return true;
      }
      if (c(paramString))
      {
        boolean bool = localFile.mkdirs();
        return bool;
      }
    }
    catch (Exception paramString) {}
    return false;
  }
  
  public static String f(String paramString)
  {
    String str = Build.CPU_ABI;
    Object localObject = new File(paramString + "/lib");
    if (!((File)localObject).exists()) {}
    label323:
    for (;;)
    {
      return str;
      paramString = new File(paramString + "lib/libRiskStub.so");
      int i;
      if (!paramString.exists())
      {
        localObject = ((File)localObject).listFiles();
        i = 0;
        if (i < localObject.length) {
          if ((localObject[i].getName().endsWith(".so")) && (!localObject[i].getName().contains("DexHelper"))) {
            paramString = new File(localObject[i].getPath());
          }
        }
      }
      for (;;)
      {
        if (!paramString.exists()) {
          break label323;
        }
        for (;;)
        {
          try
          {
            paramString = new c(paramString);
            LibProc.a("RiskStubShell.ABI", "ARCH: <" + paramString.E().F() + ">");
            if ((paramString.E().F() != 3) && (paramString.E().F() != 62)) {
              continue;
            }
            paramString = "x86";
          }
          catch (Exception paramString)
          {
            LibProc.a(paramString);
            paramString = str;
            continue;
          }
          LibProc.a("RiskStubShell.ABI", "ABI: <" + paramString + ">");
          return paramString;
          i += 1;
          break;
          if (paramString.E().F() == 40)
          {
            if (str.contains("arm")) {
              continue;
            }
            LibProc.a("RiskStubShell.ABI", "SO is ARM, BUT CPU_ABI is x86. 1");
            paramString = "armeabi";
          }
          else
          {
            paramString = "other:" + paramString.E().F();
          }
        }
      }
    }
  }
}
