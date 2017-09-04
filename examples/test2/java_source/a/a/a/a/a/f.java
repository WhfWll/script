package a.a.a.a.a;

import android.content.ContentValues;
import android.content.Context;
import java.io.File;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

class f
{
  private static f b = null;
  private static final String c = "rgid";
  private static final String d = "expires";
  private static final String e = "resource";
  private static final String f = "rid";
  private static final String g = "url";
  private static final String h = "type";
  private static final String i = "width";
  private static final String j = "height";
  cn.domob.android.i.f a = new cn.domob.android.i.f(f.class.getSimpleName());
  private int k = 20;
  private int l = 20;
  private boolean m = true;
  
  f() {}
  
  protected static f a()
  {
    try
    {
      if (b == null) {
        b = new f();
      }
      f localF = b;
      return localF;
    }
    finally {}
  }
  
  private void a(Context paramContext, String paramString, ContentValues paramContentValues)
  {
    b.a(paramContext).a("resourceGroup", paramContentValues, "Rgid = ?", new String[] { paramString });
  }
  
  private void a(File paramFile)
  {
    if (paramFile == null) {}
    do
    {
      return;
      try
      {
        if (paramFile.isFile())
        {
          paramFile.delete();
          return;
        }
      }
      catch (Exception paramFile)
      {
        a.a(paramFile);
        return;
      }
    } while (!paramFile.isDirectory());
    File[] arrayOfFile = paramFile.listFiles();
    if ((arrayOfFile == null) || (arrayOfFile.length == 0))
    {
      paramFile.delete();
      return;
    }
    for (;;)
    {
      int n;
      if (n < arrayOfFile.length)
      {
        a(arrayOfFile[n]);
        n += 1;
      }
      else
      {
        paramFile.delete();
        return;
        n = 0;
      }
    }
  }
  
  private void a(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0)) {
      a(new File(paramString));
    }
  }
  
  private void h(Context paramContext)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("Expires");
    localStringBuffer.append(" != ? and ");
    localStringBuffer.append("Expires");
    localStringBuffer.append(" < ? ");
    int n = a(paramContext, localStringBuffer.toString(), new String[] { String.valueOf(0L), String.valueOf(System.currentTimeMillis()) }, null, 0);
    a.b("delete expired group number is " + n);
  }
  
  private void i(Context paramContext)
  {
    a(d.b().b(paramContext));
    b.a(paramContext).b();
  }
  
  private Hashtable<String, String> j(Context paramContext)
  {
    localHashtable = new Hashtable();
    try
    {
      if (d.b().a())
      {
        paramContext = d.b().a(paramContext);
        Object localObject = new File(paramContext);
        if ((((File)localObject).exists()) && (((File)localObject).isDirectory()))
        {
          localObject = ((File)localObject).listFiles();
          if (localObject != null)
          {
            int n = 0;
            while (n < localObject.length)
            {
              String str = localObject[n].getAbsolutePath();
              if ((str != null) && (str.length() > 0))
              {
                int i1 = str.lastIndexOf("/");
                if ((i1 != -1) && (i1 < str.length() - 1))
                {
                  str = str.substring(i1 + 1);
                  if (str.length() > 0) {
                    localHashtable.put(str, paramContext + "/" + str);
                  }
                }
              }
              n += 1;
            }
          }
        }
      }
      return localHashtable;
    }
    catch (Exception paramContext)
    {
      a.a(paramContext);
    }
  }
  
  /* Error */
  protected int a(Context paramContext, String paramString1, String[] paramArrayOfString, String paramString2, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 12
    //   3: aconst_null
    //   4: astore 15
    //   6: aconst_null
    //   7: astore 13
    //   9: aconst_null
    //   10: astore 14
    //   12: iconst_0
    //   13: istore 6
    //   15: iconst_0
    //   16: istore 7
    //   18: aload 13
    //   20: astore 11
    //   22: aload_1
    //   23: invokestatic 73	a/a/a/a/a/b:a	(Landroid/content/Context;)La/a/a/a/a/b;
    //   26: ldc 75
    //   28: iconst_1
    //   29: anewarray 79	java/lang/String
    //   32: dup
    //   33: iconst_0
    //   34: ldc -57
    //   36: aastore
    //   37: aload_2
    //   38: aload_3
    //   39: aload 4
    //   41: aconst_null
    //   42: invokevirtual 202	a/a/a/a/a/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   45: astore_2
    //   46: aload 15
    //   48: astore 4
    //   50: aload_2
    //   51: ifnull +339 -> 390
    //   54: aload 13
    //   56: astore 11
    //   58: aload_2
    //   59: astore 12
    //   61: iload 6
    //   63: istore 7
    //   65: aload_2
    //   66: invokeinterface 207 1 0
    //   71: istore 6
    //   73: aload 13
    //   75: astore 11
    //   77: aload_2
    //   78: astore 12
    //   80: iload 6
    //   82: istore 7
    //   84: aload_2
    //   85: invokeinterface 210 1 0
    //   90: pop
    //   91: aload 13
    //   93: astore 11
    //   95: aload_2
    //   96: astore 12
    //   98: iload 6
    //   100: istore 7
    //   102: aload_2
    //   103: iload 5
    //   105: invokeinterface 214 2 0
    //   110: istore 10
    //   112: iload 10
    //   114: ifne +40 -> 154
    //   117: iconst_0
    //   118: istore 6
    //   120: aload_2
    //   121: ifnull +18 -> 139
    //   124: aload_2
    //   125: invokeinterface 217 1 0
    //   130: ifne +9 -> 139
    //   133: aload_2
    //   134: invokeinterface 220 1 0
    //   139: iconst_0
    //   140: ifeq +11 -> 151
    //   143: new 222	java/lang/NullPointerException
    //   146: dup
    //   147: invokespecial 223	java/lang/NullPointerException:<init>	()V
    //   150: athrow
    //   151: iload 6
    //   153: ireturn
    //   154: iconst_0
    //   155: istore 8
    //   157: aload 14
    //   159: astore_3
    //   160: iload 6
    //   162: istore 7
    //   164: aload_3
    //   165: astore 4
    //   167: aload_3
    //   168: astore 11
    //   170: aload_2
    //   171: astore 12
    //   173: iload 8
    //   175: aload_2
    //   176: invokeinterface 207 1 0
    //   181: iload 5
    //   183: isub
    //   184: if_icmpge +206 -> 390
    //   187: aload_3
    //   188: astore 11
    //   190: aload_2
    //   191: astore 12
    //   193: aload_2
    //   194: aload_2
    //   195: ldc -57
    //   197: invokeinterface 226 2 0
    //   202: invokeinterface 229 2 0
    //   207: astore 13
    //   209: aload_3
    //   210: astore 11
    //   212: aload_2
    //   213: astore 12
    //   215: aload_1
    //   216: invokestatic 73	a/a/a/a/a/b:a	(Landroid/content/Context;)La/a/a/a/a/b;
    //   219: ldc 16
    //   221: iconst_2
    //   222: anewarray 79	java/lang/String
    //   225: dup
    //   226: iconst_0
    //   227: ldc -25
    //   229: aastore
    //   230: dup
    //   231: iconst_1
    //   232: ldc -23
    //   234: aastore
    //   235: ldc 77
    //   237: iconst_1
    //   238: anewarray 79	java/lang/String
    //   241: dup
    //   242: iconst_0
    //   243: aload 13
    //   245: aastore
    //   246: aconst_null
    //   247: aconst_null
    //   248: invokevirtual 202	a/a/a/a/a/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   251: astore 4
    //   253: aload 4
    //   255: ifnull +116 -> 371
    //   258: aload 4
    //   260: invokeinterface 210 1 0
    //   265: pop
    //   266: iconst_0
    //   267: istore 7
    //   269: iload 7
    //   271: aload 4
    //   273: invokeinterface 207 1 0
    //   278: if_icmpge +50 -> 328
    //   281: aload 4
    //   283: aload 4
    //   285: ldc -25
    //   287: invokeinterface 226 2 0
    //   292: invokeinterface 237 2 0
    //   297: istore 9
    //   299: aload_1
    //   300: invokestatic 73	a/a/a/a/a/b:a	(Landroid/content/Context;)La/a/a/a/a/b;
    //   303: iload 9
    //   305: invokestatic 239	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   308: invokevirtual 240	a/a/a/a/a/b:b	(Ljava/lang/String;)V
    //   311: aload 4
    //   313: invokeinterface 243 1 0
    //   318: pop
    //   319: iload 7
    //   321: iconst_1
    //   322: iadd
    //   323: istore 7
    //   325: goto -56 -> 269
    //   328: aload_0
    //   329: new 143	java/lang/StringBuilder
    //   332: dup
    //   333: invokespecial 144	java/lang/StringBuilder:<init>	()V
    //   336: invokestatic 160	a/a/a/a/a/d:b	()La/a/a/a/a/d;
    //   339: aload_1
    //   340: invokevirtual 175	a/a/a/a/a/d:a	(Landroid/content/Context;)Ljava/lang/String;
    //   343: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   346: ldc -73
    //   348: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   351: aload 13
    //   353: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   356: invokevirtual 153	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   359: invokespecial 165	a/a/a/a/a/f:a	(Ljava/lang/String;)V
    //   362: aload_1
    //   363: invokestatic 73	a/a/a/a/a/b:a	(Landroid/content/Context;)La/a/a/a/a/b;
    //   366: aload 13
    //   368: invokevirtual 244	a/a/a/a/a/b:a	(Ljava/lang/String;)V
    //   371: aload_2
    //   372: invokeinterface 243 1 0
    //   377: pop
    //   378: iload 8
    //   380: iconst_1
    //   381: iadd
    //   382: istore 8
    //   384: aload 4
    //   386: astore_3
    //   387: goto -227 -> 160
    //   390: aload_2
    //   391: ifnull +18 -> 409
    //   394: aload_2
    //   395: invokeinterface 217 1 0
    //   400: ifne +9 -> 409
    //   403: aload_2
    //   404: invokeinterface 220 1 0
    //   409: iload 7
    //   411: istore 6
    //   413: aload 4
    //   415: ifnull -264 -> 151
    //   418: iload 7
    //   420: istore 6
    //   422: aload 4
    //   424: invokeinterface 217 1 0
    //   429: ifne -278 -> 151
    //   432: aload 4
    //   434: invokeinterface 220 1 0
    //   439: iload 7
    //   441: ireturn
    //   442: astore_3
    //   443: aconst_null
    //   444: astore_1
    //   445: aconst_null
    //   446: astore_2
    //   447: iconst_0
    //   448: istore 5
    //   450: aload_0
    //   451: getfield 59	a/a/a/a/a/f:a	Lcn/domob/android/i/f;
    //   454: aload_3
    //   455: invokevirtual 97	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   458: aload_2
    //   459: ifnull +18 -> 477
    //   462: aload_2
    //   463: invokeinterface 217 1 0
    //   468: ifne +9 -> 477
    //   471: aload_2
    //   472: invokeinterface 220 1 0
    //   477: iload 5
    //   479: istore 6
    //   481: aload_1
    //   482: ifnull -331 -> 151
    //   485: iload 5
    //   487: istore 6
    //   489: aload_1
    //   490: invokeinterface 217 1 0
    //   495: ifne -344 -> 151
    //   498: aload_1
    //   499: invokeinterface 220 1 0
    //   504: iload 5
    //   506: ireturn
    //   507: astore_1
    //   508: aload 12
    //   510: astore_2
    //   511: aload_2
    //   512: ifnull +18 -> 530
    //   515: aload_2
    //   516: invokeinterface 217 1 0
    //   521: ifne +9 -> 530
    //   524: aload_2
    //   525: invokeinterface 220 1 0
    //   530: aload 11
    //   532: ifnull +20 -> 552
    //   535: aload 11
    //   537: invokeinterface 217 1 0
    //   542: ifne +10 -> 552
    //   545: aload 11
    //   547: invokeinterface 220 1 0
    //   552: aload_1
    //   553: athrow
    //   554: astore_1
    //   555: aload 4
    //   557: astore 11
    //   559: goto -48 -> 511
    //   562: astore_3
    //   563: aload_1
    //   564: astore 11
    //   566: aload_3
    //   567: astore_1
    //   568: goto -57 -> 511
    //   571: astore_3
    //   572: aconst_null
    //   573: astore_1
    //   574: iload 7
    //   576: istore 5
    //   578: goto -128 -> 450
    //   581: astore_3
    //   582: aload 4
    //   584: astore_1
    //   585: iload 6
    //   587: istore 5
    //   589: goto -139 -> 450
    //   592: astore_1
    //   593: aload_3
    //   594: astore 4
    //   596: iload 6
    //   598: istore 5
    //   600: aload_1
    //   601: astore_3
    //   602: aload 4
    //   604: astore_1
    //   605: goto -155 -> 450
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	608	0	this	f
    //   0	608	1	paramContext	Context
    //   0	608	2	paramString1	String
    //   0	608	3	paramArrayOfString	String[]
    //   0	608	4	paramString2	String
    //   0	608	5	paramInt	int
    //   13	584	6	n	int
    //   16	559	7	i1	int
    //   155	228	8	i2	int
    //   297	7	9	i3	int
    //   110	3	10	bool	boolean
    //   20	545	11	localObject1	Object
    //   1	508	12	str1	String
    //   7	360	13	str2	String
    //   10	148	14	localObject2	Object
    //   4	43	15	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   22	46	442	java/lang/Exception
    //   22	46	507	finally
    //   65	73	507	finally
    //   84	91	507	finally
    //   102	112	507	finally
    //   173	187	507	finally
    //   193	209	507	finally
    //   215	253	507	finally
    //   258	266	554	finally
    //   269	319	554	finally
    //   328	371	554	finally
    //   371	378	554	finally
    //   450	458	562	finally
    //   65	73	571	java/lang/Exception
    //   84	91	571	java/lang/Exception
    //   102	112	571	java/lang/Exception
    //   258	266	581	java/lang/Exception
    //   269	319	581	java/lang/Exception
    //   328	371	581	java/lang/Exception
    //   371	378	581	java/lang/Exception
    //   173	187	592	java/lang/Exception
    //   193	209	592	java/lang/Exception
    //   215	253	592	java/lang/Exception
  }
  
  /* Error */
  protected g a(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +323 -> 324
    //   4: aload_2
    //   5: invokevirtual 110	java/lang/String:length	()I
    //   8: ifle +316 -> 324
    //   11: aload_3
    //   12: ifnull +312 -> 324
    //   15: aload_3
    //   16: invokevirtual 110	java/lang/String:length	()I
    //   19: ifle +305 -> 324
    //   22: aload_1
    //   23: invokestatic 73	a/a/a/a/a/b:a	(Landroid/content/Context;)La/a/a/a/a/b;
    //   26: ldc 16
    //   28: iconst_4
    //   29: anewarray 79	java/lang/String
    //   32: dup
    //   33: iconst_0
    //   34: ldc -23
    //   36: aastore
    //   37: dup
    //   38: iconst_1
    //   39: ldc -9
    //   41: aastore
    //   42: dup
    //   43: iconst_2
    //   44: ldc -7
    //   46: aastore
    //   47: dup
    //   48: iconst_3
    //   49: ldc -5
    //   51: aastore
    //   52: ldc -3
    //   54: iconst_2
    //   55: anewarray 79	java/lang/String
    //   58: dup
    //   59: iconst_0
    //   60: aload_2
    //   61: aastore
    //   62: dup
    //   63: iconst_1
    //   64: aload_3
    //   65: aastore
    //   66: aconst_null
    //   67: aconst_null
    //   68: invokevirtual 202	a/a/a/a/a/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   71: astore 7
    //   73: aload 7
    //   75: ifnull +227 -> 302
    //   78: aload 7
    //   80: astore 6
    //   82: aload 7
    //   84: invokeinterface 210 1 0
    //   89: ifeq +213 -> 302
    //   92: aload 7
    //   94: astore 6
    //   96: aload 7
    //   98: aload 7
    //   100: ldc -23
    //   102: invokeinterface 226 2 0
    //   107: invokeinterface 229 2 0
    //   112: astore 8
    //   114: aload 7
    //   116: astore 6
    //   118: aload_0
    //   119: aload 8
    //   121: aload 7
    //   123: aload 7
    //   125: ldc -9
    //   127: invokeinterface 226 2 0
    //   132: invokeinterface 257 2 0
    //   137: invokevirtual 260	a/a/a/a/a/f:a	(Ljava/lang/String;J)Z
    //   140: ifeq +138 -> 278
    //   143: aload 7
    //   145: astore 6
    //   147: new 262	android/content/ContentValues
    //   150: dup
    //   151: invokespecial 263	android/content/ContentValues:<init>	()V
    //   154: astore_3
    //   155: aload 7
    //   157: astore 6
    //   159: aload_3
    //   160: ldc_w 265
    //   163: invokestatic 138	java/lang/System:currentTimeMillis	()J
    //   166: invokestatic 270	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   169: invokevirtual 273	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   172: aload 7
    //   174: astore 6
    //   176: aload_0
    //   177: aload_1
    //   178: aload_2
    //   179: aload_3
    //   180: invokespecial 275	a/a/a/a/a/f:a	(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V
    //   183: aload 7
    //   185: astore 6
    //   187: aload 7
    //   189: aload 7
    //   191: ldc -7
    //   193: invokeinterface 226 2 0
    //   198: invokeinterface 237 2 0
    //   203: istore 4
    //   205: aload 7
    //   207: astore 6
    //   209: aload 7
    //   211: aload 7
    //   213: ldc -5
    //   215: invokeinterface 226 2 0
    //   220: invokeinterface 237 2 0
    //   225: istore 5
    //   227: aload 7
    //   229: astore 6
    //   231: new 277	a/a/a/a/a/g
    //   234: dup
    //   235: invokespecial 278	a/a/a/a/a/g:<init>	()V
    //   238: aload 8
    //   240: invokevirtual 281	a/a/a/a/a/g:a	(Ljava/lang/String;)La/a/a/a/a/g;
    //   243: iload 4
    //   245: invokevirtual 284	a/a/a/a/a/g:a	(I)La/a/a/a/a/g;
    //   248: iload 5
    //   250: invokevirtual 286	a/a/a/a/a/g:b	(I)La/a/a/a/a/g;
    //   253: astore_1
    //   254: aload 7
    //   256: ifnull +20 -> 276
    //   259: aload 7
    //   261: invokeinterface 217 1 0
    //   266: ifne +10 -> 276
    //   269: aload 7
    //   271: invokeinterface 220 1 0
    //   276: aload_1
    //   277: areturn
    //   278: aload 7
    //   280: astore 6
    //   282: invokestatic 289	a/a/a/a/a/d:c	()La/a/a/a/a/a$b;
    //   285: astore_1
    //   286: aload_1
    //   287: ifnull +15 -> 302
    //   290: aload 7
    //   292: astore 6
    //   294: aload_1
    //   295: aload_2
    //   296: aload_3
    //   297: invokeinterface 294 3 0
    //   302: aload 7
    //   304: ifnull +20 -> 324
    //   307: aload 7
    //   309: invokeinterface 217 1 0
    //   314: ifne +10 -> 324
    //   317: aload 7
    //   319: invokeinterface 220 1 0
    //   324: aconst_null
    //   325: areturn
    //   326: astore_1
    //   327: aconst_null
    //   328: astore 7
    //   330: aload 7
    //   332: astore 6
    //   334: aload_0
    //   335: getfield 59	a/a/a/a/a/f:a	Lcn/domob/android/i/f;
    //   338: aload_1
    //   339: invokevirtual 97	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   342: aload 7
    //   344: ifnull -20 -> 324
    //   347: aload 7
    //   349: invokeinterface 217 1 0
    //   354: ifne -30 -> 324
    //   357: aload 7
    //   359: invokeinterface 220 1 0
    //   364: goto -40 -> 324
    //   367: astore_1
    //   368: aconst_null
    //   369: astore 6
    //   371: aload 6
    //   373: ifnull +20 -> 393
    //   376: aload 6
    //   378: invokeinterface 217 1 0
    //   383: ifne +10 -> 393
    //   386: aload 6
    //   388: invokeinterface 220 1 0
    //   393: aload_1
    //   394: athrow
    //   395: astore_1
    //   396: goto -25 -> 371
    //   399: astore_1
    //   400: goto -70 -> 330
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	403	0	this	f
    //   0	403	1	paramContext	Context
    //   0	403	2	paramString1	String
    //   0	403	3	paramString2	String
    //   203	41	4	n	int
    //   225	24	5	i1	int
    //   80	307	6	localCursor1	android.database.Cursor
    //   71	287	7	localCursor2	android.database.Cursor
    //   112	127	8	str	String
    // Exception table:
    //   from	to	target	type
    //   22	73	326	java/lang/Exception
    //   22	73	367	finally
    //   82	92	395	finally
    //   96	114	395	finally
    //   118	143	395	finally
    //   147	155	395	finally
    //   159	172	395	finally
    //   176	183	395	finally
    //   187	205	395	finally
    //   209	227	395	finally
    //   231	254	395	finally
    //   282	286	395	finally
    //   294	302	395	finally
    //   334	342	395	finally
    //   82	92	399	java/lang/Exception
    //   96	114	399	java/lang/Exception
    //   118	143	399	java/lang/Exception
    //   147	155	399	java/lang/Exception
    //   159	172	399	java/lang/Exception
    //   176	183	399	java/lang/Exception
    //   187	205	399	java/lang/Exception
    //   209	227	399	java/lang/Exception
    //   231	254	399	java/lang/Exception
    //   282	286	399	java/lang/Exception
    //   294	302	399	java/lang/Exception
  }
  
  protected void a(Context paramContext, int paramInt)
  {
    a.b(String.format("update the max number of group can saved in phone. old value: %d new value: %d", new Object[] { Integer.valueOf(l), Integer.valueOf(paramInt) }));
    if ((m) || (l != paramInt))
    {
      if (paramInt <= 0)
      {
        d.d();
        i(paramContext);
      }
      l = paramInt;
      m = false;
      c(paramContext);
    }
  }
  
  protected void a(Context paramContext, JSONArray paramJSONArray, String paramString1, String paramString2, String paramString3)
  {
    int n = 0;
    if (paramJSONArray == null)
    {
      a.b("ad response cache jsonarray is null");
      return;
    }
    int i1 = 0;
    Object localObject1;
    int i2;
    if (i1 < paramJSONArray.length())
    {
      localObject1 = paramJSONArray.optJSONObject(i1);
      if (localObject1 == null) {
        i2 = n;
      }
    }
    for (;;)
    {
      i1 += 1;
      n = i2;
      break;
      String str1 = ((JSONObject)localObject1).optString("rgid");
      long l1 = ((JSONObject)localObject1).optLong("expires", -1L);
      localObject1 = ((JSONObject)localObject1).optJSONArray("resource");
      if ((str1 != null) && (str1.length() > 0))
      {
        if (b.a(paramContext).a("resourceGroup", "Rgid = ?", new String[] { str1 }) == 0)
        {
          Object localObject2 = new ContentValues();
          ((ContentValues)localObject2).put("Rgid", str1);
          ((ContentValues)localObject2).put("Expires", Long.valueOf(l1));
          ((ContentValues)localObject2).put("UseDate", Long.valueOf(System.currentTimeMillis()));
          ((ContentValues)localObject2).put("State", Integer.valueOf(0));
          ((ContentValues)localObject2).put("Tracker", paramString1);
          ((ContentValues)localObject2).put("Ppid", paramString2);
          ((ContentValues)localObject2).put("EventTrackerURL", paramString3);
          i2 = n;
          if (b.a(paramContext).a("resourceGroup", (ContentValues)localObject2))
          {
            i2 = n;
            if (localObject1 != null)
            {
              i2 = 0;
              while (i2 < ((JSONArray)localObject1).length())
              {
                Object localObject3 = ((JSONArray)localObject1).optJSONObject(i2);
                int i3 = n;
                if (localObject3 != null)
                {
                  localObject2 = ((JSONObject)localObject3).optString("rid");
                  String str2 = ((JSONObject)localObject3).optString("url");
                  int i4 = ((JSONObject)localObject3).optInt("type", 0);
                  int i5 = ((JSONObject)localObject3).optInt("width", 0);
                  int i6 = ((JSONObject)localObject3).optInt("height", 0);
                  i3 = n;
                  if (localObject2 != null)
                  {
                    i3 = n;
                    if (((String)localObject2).length() > 0)
                    {
                      localObject3 = new c();
                      ((c)localObject3).a((String)localObject2);
                      ((c)localObject3).b(str1);
                      ((c)localObject3).a(i4);
                      ((c)localObject3).c(str2);
                      ((c)localObject3).b(0);
                      ((c)localObject3).c(i5);
                      ((c)localObject3).d(i6);
                      i3 = n;
                      if (b.a(paramContext).a((c)localObject3)) {
                        i3 = n + 1;
                      }
                    }
                  }
                }
                i2 += 1;
                n = i3;
              }
            }
          }
        }
        else
        {
          a.b("this groupID has been saved in DB");
          i2 = n;
        }
      }
      else
      {
        a.d("cache groupID is not available");
        i2 = n;
        continue;
        if (n > 0) {
          d.b().d(paramContext);
        }
        a().g(paramContext);
        return;
        i2 = n;
      }
    }
  }
  
  protected boolean a(Context paramContext)
  {
    if (k > 0) {}
    for (boolean bool = true;; bool = false)
    {
      if ((bool) || (!bool)) {}
      return bool;
    }
  }
  
  /* Error */
  protected boolean a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 73	a/a/a/a/a/b:a	(Landroid/content/Context;)La/a/a/a/a/b;
    //   4: ldc 16
    //   6: iconst_3
    //   7: anewarray 79	java/lang/String
    //   10: dup
    //   11: iconst_0
    //   12: ldc -23
    //   14: aastore
    //   15: dup
    //   16: iconst_1
    //   17: ldc -9
    //   19: aastore
    //   20: dup
    //   21: iconst_2
    //   22: ldc -25
    //   24: aastore
    //   25: ldc_w 396
    //   28: iconst_1
    //   29: anewarray 79	java/lang/String
    //   32: dup
    //   33: iconst_0
    //   34: aload_2
    //   35: aastore
    //   36: aconst_null
    //   37: aconst_null
    //   38: invokevirtual 202	a/a/a/a/a/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   41: astore 8
    //   43: aload 8
    //   45: ifnull +219 -> 264
    //   48: aload 8
    //   50: astore 7
    //   52: aload 8
    //   54: invokeinterface 210 1 0
    //   59: ifeq +205 -> 264
    //   62: iconst_0
    //   63: istore_3
    //   64: iconst_1
    //   65: istore 6
    //   67: iload 6
    //   69: istore 5
    //   71: aload 8
    //   73: astore 7
    //   75: iload_3
    //   76: aload 8
    //   78: invokeinterface 207 1 0
    //   83: if_icmpge +184 -> 267
    //   86: aload 8
    //   88: astore 7
    //   90: aload 8
    //   92: aload 8
    //   94: ldc -23
    //   96: invokeinterface 226 2 0
    //   101: invokeinterface 229 2 0
    //   106: astore 9
    //   108: aload 8
    //   110: astore 7
    //   112: aload_0
    //   113: aload 9
    //   115: aload 8
    //   117: aload 8
    //   119: ldc -9
    //   121: invokeinterface 226 2 0
    //   126: invokeinterface 257 2 0
    //   131: invokevirtual 260	a/a/a/a/a/f:a	(Ljava/lang/String;J)Z
    //   134: ifne +111 -> 245
    //   137: aload 8
    //   139: astore 7
    //   141: aload_0
    //   142: aload 9
    //   144: invokespecial 165	a/a/a/a/a/f:a	(Ljava/lang/String;)V
    //   147: aload 8
    //   149: astore 7
    //   151: aload 8
    //   153: aload 8
    //   155: ldc -25
    //   157: invokeinterface 226 2 0
    //   162: invokeinterface 237 2 0
    //   167: istore 4
    //   169: aload 8
    //   171: astore 7
    //   173: new 262	android/content/ContentValues
    //   176: dup
    //   177: invokespecial 263	android/content/ContentValues:<init>	()V
    //   180: astore 9
    //   182: aload 8
    //   184: astore 7
    //   186: aload 9
    //   188: ldc -23
    //   190: ldc_w 398
    //   193: invokevirtual 343	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   196: aload 8
    //   198: astore 7
    //   200: aload 9
    //   202: ldc -9
    //   204: lconst_0
    //   205: invokestatic 270	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   208: invokevirtual 273	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   211: aload 8
    //   213: astore 7
    //   215: aload_1
    //   216: invokestatic 73	a/a/a/a/a/b:a	(Landroid/content/Context;)La/a/a/a/a/b;
    //   219: ldc 16
    //   221: aload 9
    //   223: ldc_w 400
    //   226: iconst_1
    //   227: anewarray 79	java/lang/String
    //   230: dup
    //   231: iconst_0
    //   232: iload 4
    //   234: invokestatic 239	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   237: aastore
    //   238: invokevirtual 82	a/a/a/a/a/b:a	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   241: pop
    //   242: iconst_0
    //   243: istore 6
    //   245: aload 8
    //   247: astore 7
    //   249: aload 8
    //   251: invokeinterface 243 1 0
    //   256: pop
    //   257: iload_3
    //   258: iconst_1
    //   259: iadd
    //   260: istore_3
    //   261: goto -194 -> 67
    //   264: iconst_1
    //   265: istore 5
    //   267: aload 8
    //   269: ifnull +153 -> 422
    //   272: aload 8
    //   274: invokeinterface 217 1 0
    //   279: ifne +143 -> 422
    //   282: aload 8
    //   284: invokeinterface 220 1 0
    //   289: iload 5
    //   291: ifeq +111 -> 402
    //   294: iconst_1
    //   295: istore_3
    //   296: new 262	android/content/ContentValues
    //   299: dup
    //   300: invokespecial 263	android/content/ContentValues:<init>	()V
    //   303: astore 7
    //   305: aload 7
    //   307: ldc_w 345
    //   310: iload_3
    //   311: invokestatic 302	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   314: invokevirtual 348	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   317: aload_0
    //   318: aload_1
    //   319: aload_2
    //   320: aload 7
    //   322: invokespecial 275	a/a/a/a/a/f:a	(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V
    //   325: iload 5
    //   327: ireturn
    //   328: astore 9
    //   330: aconst_null
    //   331: astore 8
    //   333: aload 8
    //   335: astore 7
    //   337: aload_0
    //   338: getfield 59	a/a/a/a/a/f:a	Lcn/domob/android/i/f;
    //   341: aload 9
    //   343: invokevirtual 97	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   346: aload 8
    //   348: ifnull +68 -> 416
    //   351: aload 8
    //   353: invokeinterface 217 1 0
    //   358: ifne +58 -> 416
    //   361: aload 8
    //   363: invokeinterface 220 1 0
    //   368: iconst_0
    //   369: istore 5
    //   371: goto -82 -> 289
    //   374: astore_1
    //   375: aconst_null
    //   376: astore 7
    //   378: aload 7
    //   380: ifnull +20 -> 400
    //   383: aload 7
    //   385: invokeinterface 217 1 0
    //   390: ifne +10 -> 400
    //   393: aload 7
    //   395: invokeinterface 220 1 0
    //   400: aload_1
    //   401: athrow
    //   402: iconst_0
    //   403: istore_3
    //   404: goto -108 -> 296
    //   407: astore_1
    //   408: goto -30 -> 378
    //   411: astore 9
    //   413: goto -80 -> 333
    //   416: iconst_0
    //   417: istore 5
    //   419: goto -130 -> 289
    //   422: goto -133 -> 289
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	425	0	this	f
    //   0	425	1	paramContext	Context
    //   0	425	2	paramString	String
    //   63	341	3	n	int
    //   167	66	4	i1	int
    //   69	349	5	bool1	boolean
    //   65	179	6	bool2	boolean
    //   50	344	7	localObject1	Object
    //   41	321	8	localCursor	android.database.Cursor
    //   106	116	9	localObject2	Object
    //   328	14	9	localException1	Exception
    //   411	1	9	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	43	328	java/lang/Exception
    //   0	43	374	finally
    //   52	62	407	finally
    //   75	86	407	finally
    //   90	108	407	finally
    //   112	137	407	finally
    //   141	147	407	finally
    //   151	169	407	finally
    //   173	182	407	finally
    //   186	196	407	finally
    //   200	211	407	finally
    //   215	242	407	finally
    //   249	257	407	finally
    //   337	346	407	finally
    //   52	62	411	java/lang/Exception
    //   75	86	411	java/lang/Exception
    //   90	108	411	java/lang/Exception
    //   112	137	411	java/lang/Exception
    //   141	147	411	java/lang/Exception
    //   151	169	411	java/lang/Exception
    //   173	182	411	java/lang/Exception
    //   186	196	411	java/lang/Exception
    //   200	211	411	java/lang/Exception
    //   215	242	411	java/lang/Exception
    //   249	257	411	java/lang/Exception
  }
  
  protected boolean a(String paramString, long paramLong)
  {
    if ((paramString == null) || (paramString.length() == 0) || (paramString.equals("empty")) || (paramLong <= 0L)) {}
    for (;;)
    {
      return false;
      try
      {
        paramString = new File(paramString);
        if (paramString.exists())
        {
          long l1 = paramString.length();
          if (l1 == paramLong) {
            return true;
          }
        }
      }
      catch (Exception paramString)
      {
        a.a(paramString);
      }
    }
    return false;
  }
  
  protected int b()
  {
    return l;
  }
  
  /* Error */
  protected String b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 392	a/a/a/a/a/f:g	(Landroid/content/Context;)V
    //   5: new 114	java/lang/StringBuffer
    //   8: dup
    //   9: invokespecial 115	java/lang/StringBuffer:<init>	()V
    //   12: astore 6
    //   14: aload 6
    //   16: ldc_w 408
    //   19: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   22: pop
    //   23: aload 6
    //   25: ldc 117
    //   27: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   30: pop
    //   31: aload 6
    //   33: ldc_w 410
    //   36: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   39: pop
    //   40: aload 6
    //   42: ldc 117
    //   44: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   47: pop
    //   48: aload 6
    //   50: ldc_w 412
    //   53: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   56: pop
    //   57: aload 6
    //   59: ldc_w 345
    //   62: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   65: pop
    //   66: aload 6
    //   68: ldc_w 414
    //   71: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   74: pop
    //   75: aload 6
    //   77: invokevirtual 128	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   80: astore 6
    //   82: invokestatic 138	java/lang/System:currentTimeMillis	()J
    //   85: lstore 4
    //   87: new 114	java/lang/StringBuffer
    //   90: dup
    //   91: invokespecial 115	java/lang/StringBuffer:<init>	()V
    //   94: astore 7
    //   96: aload_1
    //   97: invokestatic 73	a/a/a/a/a/b:a	(Landroid/content/Context;)La/a/a/a/a/b;
    //   100: ldc 75
    //   102: iconst_1
    //   103: anewarray 79	java/lang/String
    //   106: dup
    //   107: iconst_0
    //   108: ldc -57
    //   110: aastore
    //   111: aload 6
    //   113: iconst_3
    //   114: anewarray 79	java/lang/String
    //   117: dup
    //   118: iconst_0
    //   119: lconst_0
    //   120: invokestatic 132	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   123: aastore
    //   124: dup
    //   125: iconst_1
    //   126: lload 4
    //   128: invokestatic 132	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   131: aastore
    //   132: dup
    //   133: iconst_2
    //   134: iconst_1
    //   135: invokestatic 239	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   138: aastore
    //   139: ldc_w 416
    //   142: aconst_null
    //   143: invokevirtual 202	a/a/a/a/a/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   146: astore 6
    //   148: aload 6
    //   150: ifnull +158 -> 308
    //   153: aload 6
    //   155: astore_1
    //   156: aload_0
    //   157: getfield 59	a/a/a/a/a/f:a	Lcn/domob/android/i/f;
    //   160: ldc_w 418
    //   163: iconst_2
    //   164: anewarray 4	java/lang/Object
    //   167: dup
    //   168: iconst_0
    //   169: aload 6
    //   171: invokeinterface 207 1 0
    //   176: invokestatic 302	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   179: aastore
    //   180: dup
    //   181: iconst_1
    //   182: aload_0
    //   183: getfield 61	a/a/a/a/a/f:k	I
    //   186: invokestatic 302	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   189: aastore
    //   190: invokestatic 306	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   193: invokevirtual 155	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   196: aload 6
    //   198: astore_1
    //   199: aload 6
    //   201: invokeinterface 207 1 0
    //   206: aload_0
    //   207: getfield 61	a/a/a/a/a/f:k	I
    //   210: if_icmple +84 -> 294
    //   213: aload 6
    //   215: astore_1
    //   216: aload_0
    //   217: getfield 61	a/a/a/a/a/f:k	I
    //   220: istore_2
    //   221: aload 6
    //   223: astore_1
    //   224: aload 6
    //   226: invokeinterface 210 1 0
    //   231: pop
    //   232: iconst_0
    //   233: istore_3
    //   234: iload_3
    //   235: iload_2
    //   236: if_icmpge +72 -> 308
    //   239: aload 6
    //   241: astore_1
    //   242: aload 7
    //   244: aload 6
    //   246: aload 6
    //   248: ldc -57
    //   250: invokeinterface 226 2 0
    //   255: invokeinterface 229 2 0
    //   260: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   263: pop
    //   264: aload 6
    //   266: astore_1
    //   267: aload 7
    //   269: ldc_w 420
    //   272: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   275: pop
    //   276: aload 6
    //   278: astore_1
    //   279: aload 6
    //   281: invokeinterface 243 1 0
    //   286: pop
    //   287: iload_3
    //   288: iconst_1
    //   289: iadd
    //   290: istore_3
    //   291: goto -57 -> 234
    //   294: aload 6
    //   296: astore_1
    //   297: aload 6
    //   299: invokeinterface 207 1 0
    //   304: istore_2
    //   305: goto -84 -> 221
    //   308: aload 6
    //   310: ifnull +20 -> 330
    //   313: aload 6
    //   315: invokeinterface 217 1 0
    //   320: ifne +10 -> 330
    //   323: aload 6
    //   325: invokeinterface 220 1 0
    //   330: aload 7
    //   332: invokevirtual 421	java/lang/StringBuffer:length	()I
    //   335: ifle +103 -> 438
    //   338: aload 7
    //   340: invokevirtual 128	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   343: astore_1
    //   344: aload_1
    //   345: iconst_0
    //   346: aload_1
    //   347: invokevirtual 110	java/lang/String:length	()I
    //   350: iconst_1
    //   351: isub
    //   352: invokevirtual 424	java/lang/String:substring	(II)Ljava/lang/String;
    //   355: astore_1
    //   356: aload_1
    //   357: areturn
    //   358: astore 7
    //   360: aconst_null
    //   361: astore 6
    //   363: aload 6
    //   365: astore_1
    //   366: aload_0
    //   367: getfield 59	a/a/a/a/a/f:a	Lcn/domob/android/i/f;
    //   370: aload 7
    //   372: invokevirtual 97	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   375: ldc_w 426
    //   378: astore 7
    //   380: aload 7
    //   382: astore_1
    //   383: aload 6
    //   385: ifnull -29 -> 356
    //   388: aload 7
    //   390: astore_1
    //   391: aload 6
    //   393: invokeinterface 217 1 0
    //   398: ifne -42 -> 356
    //   401: aload 6
    //   403: invokeinterface 220 1 0
    //   408: ldc_w 426
    //   411: areturn
    //   412: astore 6
    //   414: aconst_null
    //   415: astore_1
    //   416: aload_1
    //   417: ifnull +18 -> 435
    //   420: aload_1
    //   421: invokeinterface 217 1 0
    //   426: ifne +9 -> 435
    //   429: aload_1
    //   430: invokeinterface 220 1 0
    //   435: aload 6
    //   437: athrow
    //   438: ldc_w 426
    //   441: areturn
    //   442: astore 6
    //   444: goto -28 -> 416
    //   447: astore 7
    //   449: goto -86 -> 363
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	452	0	this	f
    //   0	452	1	paramContext	Context
    //   220	85	2	n	int
    //   233	58	3	i1	int
    //   85	42	4	l1	long
    //   12	390	6	localObject1	Object
    //   412	24	6	localObject2	Object
    //   442	1	6	localObject3	Object
    //   94	245	7	localStringBuffer	StringBuffer
    //   358	13	7	localException1	Exception
    //   378	11	7	str	String
    //   447	1	7	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   96	148	358	java/lang/Exception
    //   96	148	412	finally
    //   156	196	442	finally
    //   199	213	442	finally
    //   216	221	442	finally
    //   224	232	442	finally
    //   242	264	442	finally
    //   267	276	442	finally
    //   279	287	442	finally
    //   297	305	442	finally
    //   366	375	442	finally
    //   156	196	447	java/lang/Exception
    //   199	213	447	java/lang/Exception
    //   216	221	447	java/lang/Exception
    //   224	232	447	java/lang/Exception
    //   242	264	447	java/lang/Exception
    //   267	276	447	java/lang/Exception
    //   279	287	447	java/lang/Exception
    //   297	305	447	java/lang/Exception
  }
  
  /* Error */
  protected boolean b(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 73	a/a/a/a/a/b:a	(Landroid/content/Context;)La/a/a/a/a/b;
    //   4: ldc 75
    //   6: iconst_1
    //   7: anewarray 79	java/lang/String
    //   10: dup
    //   11: iconst_0
    //   12: ldc -25
    //   14: aastore
    //   15: ldc_w 396
    //   18: iconst_1
    //   19: anewarray 79	java/lang/String
    //   22: dup
    //   23: iconst_0
    //   24: aload_2
    //   25: aastore
    //   26: aconst_null
    //   27: aconst_null
    //   28: invokevirtual 202	a/a/a/a/a/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   31: astore_2
    //   32: aload_2
    //   33: ifnull +37 -> 70
    //   36: aload_2
    //   37: astore_1
    //   38: aload_2
    //   39: invokeinterface 207 1 0
    //   44: istore_3
    //   45: iload_3
    //   46: ifle +24 -> 70
    //   49: aload_2
    //   50: ifnull +18 -> 68
    //   53: aload_2
    //   54: invokeinterface 217 1 0
    //   59: ifne +9 -> 68
    //   62: aload_2
    //   63: invokeinterface 220 1 0
    //   68: iconst_1
    //   69: ireturn
    //   70: aload_2
    //   71: ifnull +18 -> 89
    //   74: aload_2
    //   75: invokeinterface 217 1 0
    //   80: ifne +9 -> 89
    //   83: aload_2
    //   84: invokeinterface 220 1 0
    //   89: iconst_0
    //   90: ireturn
    //   91: astore 4
    //   93: aconst_null
    //   94: astore_2
    //   95: aload_2
    //   96: astore_1
    //   97: aload_0
    //   98: getfield 59	a/a/a/a/a/f:a	Lcn/domob/android/i/f;
    //   101: aload 4
    //   103: invokevirtual 97	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   106: aload_2
    //   107: ifnull -18 -> 89
    //   110: aload_2
    //   111: invokeinterface 217 1 0
    //   116: ifne -27 -> 89
    //   119: aload_2
    //   120: invokeinterface 220 1 0
    //   125: goto -36 -> 89
    //   128: astore_2
    //   129: aconst_null
    //   130: astore_1
    //   131: aload_1
    //   132: ifnull +18 -> 150
    //   135: aload_1
    //   136: invokeinterface 217 1 0
    //   141: ifne +9 -> 150
    //   144: aload_1
    //   145: invokeinterface 220 1 0
    //   150: aload_2
    //   151: athrow
    //   152: astore_2
    //   153: goto -22 -> 131
    //   156: astore 4
    //   158: goto -63 -> 95
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	161	0	this	f
    //   0	161	1	paramContext	Context
    //   0	161	2	paramString	String
    //   44	2	3	n	int
    //   91	11	4	localException1	Exception
    //   156	1	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	32	91	java/lang/Exception
    //   0	32	128	finally
    //   38	45	152	finally
    //   97	106	152	finally
    //   38	45	156	java/lang/Exception
  }
  
  protected void c(Context paramContext)
  {
    h(paramContext);
    d(paramContext);
  }
  
  protected void d(Context paramContext)
  {
    Object localObject = new StringBuffer();
    ((StringBuffer)localObject).append("State");
    ((StringBuffer)localObject).append(" = ?");
    localObject = ((StringBuffer)localObject).toString();
    int n = l;
    n = a(paramContext, (String)localObject, new String[] { String.valueOf(1) }, "UseDate DESC", n);
    a.b("delete excess group number is " + n);
  }
  
  /* Error */
  protected boolean e(Context paramContext)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: getfield 59	a/a/a/a/a/f:a	Lcn/domob/android/i/f;
    //   6: ldc_w 433
    //   9: invokevirtual 155	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   12: invokestatic 138	java/lang/System:currentTimeMillis	()J
    //   15: lstore_3
    //   16: aload_1
    //   17: invokestatic 73	a/a/a/a/a/b:a	(Landroid/content/Context;)La/a/a/a/a/b;
    //   20: ldc 75
    //   22: iconst_1
    //   23: anewarray 79	java/lang/String
    //   26: dup
    //   27: iconst_0
    //   28: ldc -57
    //   30: aastore
    //   31: ldc_w 435
    //   34: iconst_2
    //   35: anewarray 79	java/lang/String
    //   38: dup
    //   39: iconst_0
    //   40: lload_3
    //   41: invokestatic 132	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   44: aastore
    //   45: dup
    //   46: iconst_1
    //   47: lconst_0
    //   48: invokestatic 132	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   51: aastore
    //   52: aconst_null
    //   53: aconst_null
    //   54: invokevirtual 202	a/a/a/a/a/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   57: astore 8
    //   59: aload 8
    //   61: ifnull +250 -> 311
    //   64: aload 8
    //   66: invokeinterface 210 1 0
    //   71: istore 5
    //   73: iload 5
    //   75: ifeq +236 -> 311
    //   78: iconst_0
    //   79: istore 5
    //   81: iload 5
    //   83: istore 7
    //   85: iload_2
    //   86: aload 8
    //   88: invokeinterface 207 1 0
    //   93: if_icmpge +61 -> 154
    //   96: iload 5
    //   98: istore 6
    //   100: iload 5
    //   102: istore 7
    //   104: aload_0
    //   105: aload_1
    //   106: aload 8
    //   108: aload 8
    //   110: ldc -57
    //   112: invokeinterface 226 2 0
    //   117: invokeinterface 229 2 0
    //   122: invokevirtual 437	a/a/a/a/a/f:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   125: ifne +6 -> 131
    //   128: iconst_1
    //   129: istore 6
    //   131: iload 6
    //   133: istore 7
    //   135: aload 8
    //   137: invokeinterface 243 1 0
    //   142: pop
    //   143: iload_2
    //   144: iconst_1
    //   145: iadd
    //   146: istore_2
    //   147: iload 6
    //   149: istore 5
    //   151: goto -70 -> 81
    //   154: iload 5
    //   156: istore 6
    //   158: aload 8
    //   160: ifnull +28 -> 188
    //   163: iload 5
    //   165: istore 6
    //   167: aload 8
    //   169: invokeinterface 217 1 0
    //   174: ifne +14 -> 188
    //   177: aload 8
    //   179: invokeinterface 220 1 0
    //   184: iload 5
    //   186: istore 6
    //   188: iload 6
    //   190: ireturn
    //   191: astore 8
    //   193: aconst_null
    //   194: astore_1
    //   195: iconst_0
    //   196: istore 5
    //   198: aload_0
    //   199: getfield 59	a/a/a/a/a/f:a	Lcn/domob/android/i/f;
    //   202: aload 8
    //   204: invokevirtual 97	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   207: iload 5
    //   209: istore 6
    //   211: aload_1
    //   212: ifnull -24 -> 188
    //   215: iload 5
    //   217: istore 6
    //   219: aload_1
    //   220: invokeinterface 217 1 0
    //   225: ifne -37 -> 188
    //   228: aload_1
    //   229: invokeinterface 220 1 0
    //   234: iload 5
    //   236: ireturn
    //   237: astore_1
    //   238: aconst_null
    //   239: astore 8
    //   241: aload 8
    //   243: ifnull +20 -> 263
    //   246: aload 8
    //   248: invokeinterface 217 1 0
    //   253: ifne +10 -> 263
    //   256: aload 8
    //   258: invokeinterface 220 1 0
    //   263: aload_1
    //   264: athrow
    //   265: astore_1
    //   266: goto -25 -> 241
    //   269: astore 9
    //   271: aload_1
    //   272: astore 8
    //   274: aload 9
    //   276: astore_1
    //   277: goto -36 -> 241
    //   280: astore 9
    //   282: aload 8
    //   284: astore_1
    //   285: aload 9
    //   287: astore 8
    //   289: iconst_0
    //   290: istore 5
    //   292: goto -94 -> 198
    //   295: astore 9
    //   297: iload 7
    //   299: istore 5
    //   301: aload 8
    //   303: astore_1
    //   304: aload 9
    //   306: astore 8
    //   308: goto -110 -> 198
    //   311: iconst_0
    //   312: istore 5
    //   314: goto -160 -> 154
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	317	0	this	f
    //   0	317	1	paramContext	Context
    //   1	146	2	n	int
    //   15	26	3	l1	long
    //   71	242	5	bool1	boolean
    //   98	120	6	bool2	boolean
    //   83	215	7	bool3	boolean
    //   57	121	8	localCursor	android.database.Cursor
    //   191	12	8	localException1	Exception
    //   239	68	8	localObject1	Object
    //   269	6	9	localObject2	Object
    //   280	6	9	localException2	Exception
    //   295	10	9	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   16	59	191	java/lang/Exception
    //   16	59	237	finally
    //   64	73	265	finally
    //   85	96	265	finally
    //   104	128	265	finally
    //   135	143	265	finally
    //   198	207	269	finally
    //   64	73	280	java/lang/Exception
    //   85	96	295	java/lang/Exception
    //   104	128	295	java/lang/Exception
    //   135	143	295	java/lang/Exception
  }
  
  protected void f(Context paramContext)
  {
    Hashtable localHashtable = j(paramContext);
    Iterator localIterator = localHashtable.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!b(paramContext, str)) {
        a((String)localHashtable.get(str));
      }
    }
  }
  
  /* Error */
  protected void g(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 59	a/a/a/a/a/f:a	Lcn/domob/android/i/f;
    //   4: invokevirtual 465	cn/domob/android/i/f:a	()Z
    //   7: ifne +4 -> 11
    //   10: return
    //   11: aload_1
    //   12: invokestatic 73	a/a/a/a/a/b:a	(Landroid/content/Context;)La/a/a/a/a/b;
    //   15: ldc 75
    //   17: aconst_null
    //   18: aconst_null
    //   19: aconst_null
    //   20: aconst_null
    //   21: aconst_null
    //   22: invokevirtual 202	a/a/a/a/a/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   25: astore 8
    //   27: aload_0
    //   28: getfield 59	a/a/a/a/a/f:a	Lcn/domob/android/i/f;
    //   31: new 143	java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial 144	java/lang/StringBuilder:<init>	()V
    //   38: ldc_w 467
    //   41: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: aload 8
    //   46: invokeinterface 207 1 0
    //   51: invokevirtual 152	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   54: invokevirtual 153	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokevirtual 155	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   60: aload 8
    //   62: ifnull +373 -> 435
    //   65: aload 8
    //   67: invokeinterface 210 1 0
    //   72: ifeq +363 -> 435
    //   75: iconst_0
    //   76: istore_2
    //   77: iload_2
    //   78: aload 8
    //   80: invokeinterface 207 1 0
    //   85: if_icmpge +350 -> 435
    //   88: new 114	java/lang/StringBuffer
    //   91: dup
    //   92: invokespecial 115	java/lang/StringBuffer:<init>	()V
    //   95: astore 9
    //   97: aload 8
    //   99: aload 8
    //   101: ldc -57
    //   103: invokeinterface 226 2 0
    //   108: invokeinterface 229 2 0
    //   113: astore 10
    //   115: aload 8
    //   117: aload 8
    //   119: ldc 117
    //   121: invokeinterface 226 2 0
    //   126: invokeinterface 257 2 0
    //   131: lstore 4
    //   133: aload 8
    //   135: aload 8
    //   137: ldc_w 265
    //   140: invokeinterface 226 2 0
    //   145: invokeinterface 257 2 0
    //   150: lstore 6
    //   152: aload 8
    //   154: aload 8
    //   156: ldc_w 345
    //   159: invokeinterface 226 2 0
    //   164: invokeinterface 237 2 0
    //   169: istore_3
    //   170: aload 8
    //   172: aload 8
    //   174: ldc_w 352
    //   177: invokeinterface 226 2 0
    //   182: invokeinterface 229 2 0
    //   187: astore 11
    //   189: aload 8
    //   191: aload 8
    //   193: ldc_w 350
    //   196: invokeinterface 226 2 0
    //   201: invokeinterface 229 2 0
    //   206: astore 12
    //   208: aload 8
    //   210: aload 8
    //   212: ldc_w 354
    //   215: invokeinterface 226 2 0
    //   220: invokeinterface 229 2 0
    //   225: astore 13
    //   227: aload 9
    //   229: ldc_w 469
    //   232: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   235: pop
    //   236: aload 9
    //   238: aload 10
    //   240: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   243: pop
    //   244: aload 9
    //   246: ldc_w 471
    //   249: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   252: pop
    //   253: aload 9
    //   255: ldc_w 473
    //   258: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   261: pop
    //   262: aload 9
    //   264: lload 4
    //   266: invokevirtual 476	java/lang/StringBuffer:append	(J)Ljava/lang/StringBuffer;
    //   269: pop
    //   270: aload 9
    //   272: ldc_w 471
    //   275: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   278: pop
    //   279: aload 9
    //   281: ldc_w 478
    //   284: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   287: pop
    //   288: aload 9
    //   290: lload 6
    //   292: invokevirtual 476	java/lang/StringBuffer:append	(J)Ljava/lang/StringBuffer;
    //   295: pop
    //   296: aload 9
    //   298: ldc_w 471
    //   301: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   304: pop
    //   305: aload 9
    //   307: ldc_w 480
    //   310: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   313: pop
    //   314: aload 9
    //   316: iload_3
    //   317: invokevirtual 483	java/lang/StringBuffer:append	(I)Ljava/lang/StringBuffer;
    //   320: pop
    //   321: aload 9
    //   323: ldc_w 471
    //   326: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   329: pop
    //   330: aload 9
    //   332: ldc_w 485
    //   335: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   338: pop
    //   339: aload 9
    //   341: aload 11
    //   343: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   346: pop
    //   347: aload 9
    //   349: ldc_w 471
    //   352: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   355: pop
    //   356: aload 9
    //   358: ldc_w 487
    //   361: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   364: pop
    //   365: aload 9
    //   367: aload 12
    //   369: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   372: pop
    //   373: aload 9
    //   375: ldc_w 471
    //   378: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   381: pop
    //   382: aload 9
    //   384: ldc_w 489
    //   387: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   390: pop
    //   391: aload 9
    //   393: aload 13
    //   395: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   398: pop
    //   399: aload 9
    //   401: ldc_w 471
    //   404: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   407: pop
    //   408: aload_0
    //   409: getfield 59	a/a/a/a/a/f:a	Lcn/domob/android/i/f;
    //   412: aload 9
    //   414: invokevirtual 128	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   417: invokevirtual 490	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   420: aload 8
    //   422: invokeinterface 243 1 0
    //   427: pop
    //   428: iload_2
    //   429: iconst_1
    //   430: iadd
    //   431: istore_2
    //   432: goto -355 -> 77
    //   435: aload 8
    //   437: ifnull +20 -> 457
    //   440: aload 8
    //   442: invokeinterface 217 1 0
    //   447: ifne +10 -> 457
    //   450: aload 8
    //   452: invokeinterface 220 1 0
    //   457: aload_1
    //   458: invokestatic 73	a/a/a/a/a/b:a	(Landroid/content/Context;)La/a/a/a/a/b;
    //   461: ldc 16
    //   463: aconst_null
    //   464: aconst_null
    //   465: aconst_null
    //   466: aconst_null
    //   467: aconst_null
    //   468: invokevirtual 202	a/a/a/a/a/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   471: astore_1
    //   472: aload_1
    //   473: astore 8
    //   475: aload_0
    //   476: getfield 59	a/a/a/a/a/f:a	Lcn/domob/android/i/f;
    //   479: new 143	java/lang/StringBuilder
    //   482: dup
    //   483: invokespecial 144	java/lang/StringBuilder:<init>	()V
    //   486: ldc_w 492
    //   489: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   492: aload_1
    //   493: invokeinterface 207 1 0
    //   498: invokevirtual 152	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   501: invokevirtual 153	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   504: invokevirtual 155	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   507: aload_1
    //   508: ifnull +523 -> 1031
    //   511: aload_1
    //   512: astore 8
    //   514: aload_1
    //   515: invokeinterface 210 1 0
    //   520: ifeq +511 -> 1031
    //   523: iconst_0
    //   524: istore_2
    //   525: aload_1
    //   526: astore 8
    //   528: iload_2
    //   529: aload_1
    //   530: invokeinterface 207 1 0
    //   535: if_icmpge +496 -> 1031
    //   538: aload_1
    //   539: astore 8
    //   541: new 114	java/lang/StringBuffer
    //   544: dup
    //   545: invokespecial 115	java/lang/StringBuffer:<init>	()V
    //   548: astore 9
    //   550: aload_1
    //   551: astore 8
    //   553: aload_1
    //   554: aload_1
    //   555: ldc_w 494
    //   558: invokeinterface 226 2 0
    //   563: invokeinterface 229 2 0
    //   568: astore 10
    //   570: aload_1
    //   571: astore 8
    //   573: aload_1
    //   574: aload_1
    //   575: ldc -57
    //   577: invokeinterface 226 2 0
    //   582: invokeinterface 229 2 0
    //   587: astore 11
    //   589: aload_1
    //   590: astore 8
    //   592: aload_1
    //   593: aload_1
    //   594: ldc_w 496
    //   597: invokeinterface 226 2 0
    //   602: invokeinterface 229 2 0
    //   607: astore 12
    //   609: aload_1
    //   610: astore 8
    //   612: aload_1
    //   613: aload_1
    //   614: ldc_w 498
    //   617: invokeinterface 226 2 0
    //   622: invokeinterface 229 2 0
    //   627: astore 13
    //   629: aload_1
    //   630: astore 8
    //   632: aload_1
    //   633: aload_1
    //   634: ldc -23
    //   636: invokeinterface 226 2 0
    //   641: invokeinterface 229 2 0
    //   646: astore 14
    //   648: aload_1
    //   649: astore 8
    //   651: aload_1
    //   652: aload_1
    //   653: ldc_w 500
    //   656: invokeinterface 226 2 0
    //   661: invokeinterface 229 2 0
    //   666: astore 15
    //   668: aload_1
    //   669: astore 8
    //   671: aload_1
    //   672: aload_1
    //   673: ldc -9
    //   675: invokeinterface 226 2 0
    //   680: invokeinterface 229 2 0
    //   685: astore 16
    //   687: aload_1
    //   688: astore 8
    //   690: aload_1
    //   691: aload_1
    //   692: ldc_w 502
    //   695: invokeinterface 226 2 0
    //   700: invokeinterface 229 2 0
    //   705: astore 17
    //   707: aload_1
    //   708: astore 8
    //   710: aload 9
    //   712: ldc_w 504
    //   715: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   718: pop
    //   719: aload_1
    //   720: astore 8
    //   722: aload 9
    //   724: aload 10
    //   726: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   729: pop
    //   730: aload_1
    //   731: astore 8
    //   733: aload 9
    //   735: ldc_w 471
    //   738: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   741: pop
    //   742: aload_1
    //   743: astore 8
    //   745: aload 9
    //   747: ldc_w 469
    //   750: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   753: pop
    //   754: aload_1
    //   755: astore 8
    //   757: aload 9
    //   759: aload 11
    //   761: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   764: pop
    //   765: aload_1
    //   766: astore 8
    //   768: aload 9
    //   770: ldc_w 471
    //   773: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   776: pop
    //   777: aload_1
    //   778: astore 8
    //   780: aload 9
    //   782: ldc_w 506
    //   785: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   788: pop
    //   789: aload_1
    //   790: astore 8
    //   792: aload 9
    //   794: aload 12
    //   796: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   799: pop
    //   800: aload_1
    //   801: astore 8
    //   803: aload 9
    //   805: ldc_w 471
    //   808: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   811: pop
    //   812: aload_1
    //   813: astore 8
    //   815: aload 9
    //   817: ldc_w 508
    //   820: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   823: pop
    //   824: aload_1
    //   825: astore 8
    //   827: aload 9
    //   829: aload 13
    //   831: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   834: pop
    //   835: aload_1
    //   836: astore 8
    //   838: aload 9
    //   840: ldc_w 471
    //   843: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   846: pop
    //   847: aload_1
    //   848: astore 8
    //   850: aload 9
    //   852: ldc_w 510
    //   855: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   858: pop
    //   859: aload_1
    //   860: astore 8
    //   862: aload 9
    //   864: aload 14
    //   866: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   869: pop
    //   870: aload_1
    //   871: astore 8
    //   873: aload 9
    //   875: ldc_w 471
    //   878: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   881: pop
    //   882: aload_1
    //   883: astore 8
    //   885: aload 9
    //   887: ldc_w 512
    //   890: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   893: pop
    //   894: aload_1
    //   895: astore 8
    //   897: aload 9
    //   899: aload 15
    //   901: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   904: pop
    //   905: aload_1
    //   906: astore 8
    //   908: aload 9
    //   910: ldc_w 471
    //   913: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   916: pop
    //   917: aload_1
    //   918: astore 8
    //   920: aload 9
    //   922: ldc_w 514
    //   925: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   928: pop
    //   929: aload_1
    //   930: astore 8
    //   932: aload 9
    //   934: aload 16
    //   936: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   939: pop
    //   940: aload_1
    //   941: astore 8
    //   943: aload 9
    //   945: ldc_w 471
    //   948: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   951: pop
    //   952: aload_1
    //   953: astore 8
    //   955: aload 9
    //   957: ldc_w 516
    //   960: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   963: pop
    //   964: aload_1
    //   965: astore 8
    //   967: aload 9
    //   969: aload 17
    //   971: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   974: pop
    //   975: aload_1
    //   976: astore 8
    //   978: aload 9
    //   980: ldc_w 471
    //   983: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   986: pop
    //   987: aload_1
    //   988: astore 8
    //   990: aload 9
    //   992: ldc_w 518
    //   995: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   998: pop
    //   999: aload_1
    //   1000: astore 8
    //   1002: aload_0
    //   1003: getfield 59	a/a/a/a/a/f:a	Lcn/domob/android/i/f;
    //   1006: aload 9
    //   1008: invokevirtual 128	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   1011: invokevirtual 490	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   1014: aload_1
    //   1015: astore 8
    //   1017: aload_1
    //   1018: invokeinterface 243 1 0
    //   1023: pop
    //   1024: iload_2
    //   1025: iconst_1
    //   1026: iadd
    //   1027: istore_2
    //   1028: goto -503 -> 525
    //   1031: aload_1
    //   1032: ifnull -1022 -> 10
    //   1035: aload_1
    //   1036: invokeinterface 217 1 0
    //   1041: ifne -1031 -> 10
    //   1044: aload_1
    //   1045: invokeinterface 220 1 0
    //   1050: return
    //   1051: astore 9
    //   1053: aconst_null
    //   1054: astore_1
    //   1055: aload_1
    //   1056: astore 8
    //   1058: aload_0
    //   1059: getfield 59	a/a/a/a/a/f:a	Lcn/domob/android/i/f;
    //   1062: aload 9
    //   1064: invokevirtual 97	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   1067: aload_1
    //   1068: ifnull -1058 -> 10
    //   1071: aload_1
    //   1072: invokeinterface 217 1 0
    //   1077: ifne -1067 -> 10
    //   1080: aload_1
    //   1081: invokeinterface 220 1 0
    //   1086: return
    //   1087: astore_1
    //   1088: aconst_null
    //   1089: astore 8
    //   1091: aload 8
    //   1093: ifnull +20 -> 1113
    //   1096: aload 8
    //   1098: invokeinterface 217 1 0
    //   1103: ifne +10 -> 1113
    //   1106: aload 8
    //   1108: invokeinterface 220 1 0
    //   1113: aload_1
    //   1114: athrow
    //   1115: astore_1
    //   1116: goto -25 -> 1091
    //   1119: astore_1
    //   1120: goto -29 -> 1091
    //   1123: astore 9
    //   1125: aload 8
    //   1127: astore_1
    //   1128: goto -73 -> 1055
    //   1131: astore 9
    //   1133: goto -78 -> 1055
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1136	0	this	f
    //   0	1136	1	paramContext	Context
    //   76	952	2	n	int
    //   169	148	3	i1	int
    //   131	134	4	l1	long
    //   150	141	6	l2	long
    //   25	1101	8	localObject	Object
    //   95	912	9	localStringBuffer	StringBuffer
    //   1051	12	9	localException1	Exception
    //   1123	1	9	localException2	Exception
    //   1131	1	9	localException3	Exception
    //   113	612	10	str1	String
    //   187	573	11	str2	String
    //   206	589	12	str3	String
    //   225	605	13	str4	String
    //   646	219	14	str5	String
    //   666	234	15	str6	String
    //   685	250	16	str7	String
    //   705	265	17	str8	String
    // Exception table:
    //   from	to	target	type
    //   11	27	1051	java/lang/Exception
    //   11	27	1087	finally
    //   27	60	1115	finally
    //   65	75	1115	finally
    //   77	428	1115	finally
    //   440	457	1115	finally
    //   457	472	1115	finally
    //   475	507	1119	finally
    //   514	523	1119	finally
    //   528	538	1119	finally
    //   541	550	1119	finally
    //   553	570	1119	finally
    //   573	589	1119	finally
    //   592	609	1119	finally
    //   612	629	1119	finally
    //   632	648	1119	finally
    //   651	668	1119	finally
    //   671	687	1119	finally
    //   690	707	1119	finally
    //   710	719	1119	finally
    //   722	730	1119	finally
    //   733	742	1119	finally
    //   745	754	1119	finally
    //   757	765	1119	finally
    //   768	777	1119	finally
    //   780	789	1119	finally
    //   792	800	1119	finally
    //   803	812	1119	finally
    //   815	824	1119	finally
    //   827	835	1119	finally
    //   838	847	1119	finally
    //   850	859	1119	finally
    //   862	870	1119	finally
    //   873	882	1119	finally
    //   885	894	1119	finally
    //   897	905	1119	finally
    //   908	917	1119	finally
    //   920	929	1119	finally
    //   932	940	1119	finally
    //   943	952	1119	finally
    //   955	964	1119	finally
    //   967	975	1119	finally
    //   978	987	1119	finally
    //   990	999	1119	finally
    //   1002	1014	1119	finally
    //   1017	1024	1119	finally
    //   1058	1067	1119	finally
    //   27	60	1123	java/lang/Exception
    //   65	75	1123	java/lang/Exception
    //   77	428	1123	java/lang/Exception
    //   440	457	1123	java/lang/Exception
    //   457	472	1123	java/lang/Exception
    //   475	507	1131	java/lang/Exception
    //   514	523	1131	java/lang/Exception
    //   528	538	1131	java/lang/Exception
    //   541	550	1131	java/lang/Exception
    //   553	570	1131	java/lang/Exception
    //   573	589	1131	java/lang/Exception
    //   592	609	1131	java/lang/Exception
    //   612	629	1131	java/lang/Exception
    //   632	648	1131	java/lang/Exception
    //   651	668	1131	java/lang/Exception
    //   671	687	1131	java/lang/Exception
    //   690	707	1131	java/lang/Exception
    //   710	719	1131	java/lang/Exception
    //   722	730	1131	java/lang/Exception
    //   733	742	1131	java/lang/Exception
    //   745	754	1131	java/lang/Exception
    //   757	765	1131	java/lang/Exception
    //   768	777	1131	java/lang/Exception
    //   780	789	1131	java/lang/Exception
    //   792	800	1131	java/lang/Exception
    //   803	812	1131	java/lang/Exception
    //   815	824	1131	java/lang/Exception
    //   827	835	1131	java/lang/Exception
    //   838	847	1131	java/lang/Exception
    //   850	859	1131	java/lang/Exception
    //   862	870	1131	java/lang/Exception
    //   873	882	1131	java/lang/Exception
    //   885	894	1131	java/lang/Exception
    //   897	905	1131	java/lang/Exception
    //   908	917	1131	java/lang/Exception
    //   920	929	1131	java/lang/Exception
    //   932	940	1131	java/lang/Exception
    //   943	952	1131	java/lang/Exception
    //   955	964	1131	java/lang/Exception
    //   967	975	1131	java/lang/Exception
    //   978	987	1131	java/lang/Exception
    //   990	999	1131	java/lang/Exception
    //   1002	1014	1131	java/lang/Exception
    //   1017	1024	1131	java/lang/Exception
  }
}
