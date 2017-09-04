package cn.domob.android.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import cn.domob.android.ads.c.b;
import cn.domob.android.i.f;
import cn.domob.android.i.h;
import java.io.File;

final class c
{
  private static f a = new f(c.class.getSimpleName());
  
  c() {}
  
  /* Error */
  protected String a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 33	cn/domob/android/ads/c/b:a	(Landroid/content/Context;)Lcn/domob/android/ads/c/b;
    //   4: astore 4
    //   6: aload 4
    //   8: ldc 35
    //   10: aconst_null
    //   11: new 37	java/lang/StringBuilder
    //   14: dup
    //   15: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   18: ldc 40
    //   20: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: aload_2
    //   24: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: ldc 46
    //   29: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   35: aconst_null
    //   36: aconst_null
    //   37: invokevirtual 52	cn/domob/android/ads/c/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   40: astore_3
    //   41: aload_3
    //   42: ifnull +107 -> 149
    //   45: aload_3
    //   46: astore_2
    //   47: aload_3
    //   48: invokeinterface 58 1 0
    //   53: ifeq +96 -> 149
    //   56: aload_3
    //   57: astore_2
    //   58: aload_3
    //   59: aload_3
    //   60: ldc 60
    //   62: invokeinterface 64 2 0
    //   67: invokeinterface 68 2 0
    //   72: astore 5
    //   74: aload_3
    //   75: astore_2
    //   76: aload_0
    //   77: aload_1
    //   78: aload 5
    //   80: invokevirtual 72	cn/domob/android/ads/c:c	(Landroid/content/Context;Ljava/lang/String;)Z
    //   83: ifeq +167 -> 250
    //   86: aload_3
    //   87: astore_2
    //   88: aload_0
    //   89: aload_1
    //   90: aload 5
    //   92: invokevirtual 75	cn/domob/android/ads/c:d	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   95: astore 6
    //   97: aload_3
    //   98: astore_2
    //   99: aload 6
    //   101: invokestatic 81	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   104: ifeq +76 -> 180
    //   107: aload_3
    //   108: astore_2
    //   109: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   112: new 37	java/lang/StringBuilder
    //   115: dup
    //   116: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   119: ldc 83
    //   121: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: aload 5
    //   126: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: ldc 85
    //   131: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: invokevirtual 88	cn/domob/android/i/f:e	(Ljava/lang/String;)V
    //   140: aload_3
    //   141: astore_2
    //   142: aload_0
    //   143: aload_1
    //   144: aload 5
    //   146: invokevirtual 92	cn/domob/android/ads/c:f	(Landroid/content/Context;Ljava/lang/String;)V
    //   149: aload_3
    //   150: ifnull +18 -> 168
    //   153: aload_3
    //   154: invokeinterface 95 1 0
    //   159: ifne +9 -> 168
    //   162: aload_3
    //   163: invokeinterface 98 1 0
    //   168: aload 4
    //   170: ifnull +8 -> 178
    //   173: aload 4
    //   175: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   178: aconst_null
    //   179: areturn
    //   180: aload_3
    //   181: astore_2
    //   182: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   185: new 37	java/lang/StringBuilder
    //   188: dup
    //   189: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   192: ldc 103
    //   194: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: aload 5
    //   199: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: ldc 105
    //   204: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: aload 6
    //   209: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: invokevirtual 107	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   218: aload_3
    //   219: ifnull +18 -> 237
    //   222: aload_3
    //   223: invokeinterface 95 1 0
    //   228: ifne +9 -> 237
    //   231: aload_3
    //   232: invokeinterface 98 1 0
    //   237: aload 4
    //   239: ifnull +8 -> 247
    //   242: aload 4
    //   244: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   247: aload 6
    //   249: areturn
    //   250: aload_3
    //   251: astore_2
    //   252: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   255: ldc 109
    //   257: iconst_1
    //   258: anewarray 4	java/lang/Object
    //   261: dup
    //   262: iconst_0
    //   263: aload 5
    //   265: aastore
    //   266: invokestatic 115	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   269: invokevirtual 107	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   272: goto -123 -> 149
    //   275: astore_1
    //   276: aload_3
    //   277: astore_2
    //   278: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   281: aload_1
    //   282: invokevirtual 118	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   285: aload_3
    //   286: ifnull +18 -> 304
    //   289: aload_3
    //   290: invokeinterface 95 1 0
    //   295: ifne +9 -> 304
    //   298: aload_3
    //   299: invokeinterface 98 1 0
    //   304: aload 4
    //   306: ifnull -128 -> 178
    //   309: aload 4
    //   311: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   314: goto -136 -> 178
    //   317: astore_1
    //   318: aconst_null
    //   319: astore_2
    //   320: aload_2
    //   321: ifnull +18 -> 339
    //   324: aload_2
    //   325: invokeinterface 95 1 0
    //   330: ifne +9 -> 339
    //   333: aload_2
    //   334: invokeinterface 98 1 0
    //   339: aload 4
    //   341: ifnull +8 -> 349
    //   344: aload 4
    //   346: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   349: aload_1
    //   350: athrow
    //   351: astore_1
    //   352: goto -32 -> 320
    //   355: astore_1
    //   356: aconst_null
    //   357: astore_3
    //   358: goto -82 -> 276
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	361	0	this	c
    //   0	361	1	paramContext	Context
    //   0	361	2	paramString	String
    //   40	318	3	localCursor	Cursor
    //   4	341	4	localB	b
    //   72	192	5	str1	String
    //   95	153	6	str2	String
    // Exception table:
    //   from	to	target	type
    //   47	56	275	java/lang/Exception
    //   58	74	275	java/lang/Exception
    //   76	86	275	java/lang/Exception
    //   88	97	275	java/lang/Exception
    //   99	107	275	java/lang/Exception
    //   109	140	275	java/lang/Exception
    //   142	149	275	java/lang/Exception
    //   182	218	275	java/lang/Exception
    //   252	272	275	java/lang/Exception
    //   6	41	317	finally
    //   47	56	351	finally
    //   58	74	351	finally
    //   76	86	351	finally
    //   88	97	351	finally
    //   99	107	351	finally
    //   109	140	351	finally
    //   142	149	351	finally
    //   182	218	351	finally
    //   252	272	351	finally
    //   278	285	351	finally
    //   6	41	355	java/lang/Exception
  }
  
  /* Error */
  protected void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 33	cn/domob/android/ads/c/b:a	(Landroid/content/Context;)Lcn/domob/android/ads/c/b;
    //   4: astore 8
    //   6: invokestatic 125	java/lang/System:currentTimeMillis	()J
    //   9: lstore 4
    //   11: new 37	java/lang/StringBuilder
    //   14: dup
    //   15: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   18: ldc 127
    //   20: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: lload 4
    //   25: invokevirtual 130	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   28: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   31: astore_1
    //   32: aload 8
    //   34: ldc -124
    //   36: aconst_null
    //   37: aload_1
    //   38: aconst_null
    //   39: aconst_null
    //   40: invokevirtual 52	cn/domob/android/ads/c/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   43: astore 6
    //   45: aload 6
    //   47: ifnull +210 -> 257
    //   50: aload 6
    //   52: astore_1
    //   53: aload 6
    //   55: invokeinterface 136 1 0
    //   60: ifle +197 -> 257
    //   63: aload 6
    //   65: astore_1
    //   66: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   69: new 37	java/lang/StringBuilder
    //   72: dup
    //   73: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   76: ldc -118
    //   78: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: aload 6
    //   83: invokeinterface 136 1 0
    //   88: invokevirtual 141	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   91: ldc -113
    //   93: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   99: invokevirtual 145	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   102: iconst_0
    //   103: istore_2
    //   104: aload 6
    //   106: astore_1
    //   107: iload_2
    //   108: aload 6
    //   110: invokeinterface 136 1 0
    //   115: if_icmpge +153 -> 268
    //   118: aload 6
    //   120: astore_1
    //   121: aload 6
    //   123: iload_2
    //   124: invokeinterface 149 2 0
    //   129: pop
    //   130: aload 6
    //   132: astore_1
    //   133: aload 6
    //   135: ldc -105
    //   137: invokeinterface 64 2 0
    //   142: istore_3
    //   143: aload 6
    //   145: astore_1
    //   146: new 37	java/lang/StringBuilder
    //   149: dup
    //   150: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   153: ldc -103
    //   155: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: aload 6
    //   160: iload_3
    //   161: invokeinterface 68 2 0
    //   166: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: ldc 46
    //   171: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   177: astore 7
    //   179: aload 6
    //   181: astore_1
    //   182: aload 8
    //   184: ldc -124
    //   186: aload 7
    //   188: aconst_null
    //   189: invokevirtual 156	cn/domob/android/ads/c/b:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   192: istore_3
    //   193: aload 6
    //   195: astore_1
    //   196: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   199: new 37	java/lang/StringBuilder
    //   202: dup
    //   203: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   206: ldc -98
    //   208: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   211: aload 7
    //   213: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   219: invokevirtual 145	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   222: aload 6
    //   224: astore_1
    //   225: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   228: new 37	java/lang/StringBuilder
    //   231: dup
    //   232: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   235: ldc -96
    //   237: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: iload_3
    //   241: invokevirtual 141	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   244: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   247: invokevirtual 145	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   250: iload_2
    //   251: iconst_1
    //   252: iadd
    //   253: istore_2
    //   254: goto -150 -> 104
    //   257: aload 6
    //   259: astore_1
    //   260: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   263: ldc -94
    //   265: invokevirtual 145	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   268: aload 6
    //   270: ifnull +10 -> 280
    //   273: aload 6
    //   275: invokeinterface 98 1 0
    //   280: aload 8
    //   282: ifnull +8 -> 290
    //   285: aload 8
    //   287: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   290: return
    //   291: astore 7
    //   293: aconst_null
    //   294: astore 6
    //   296: aload 6
    //   298: astore_1
    //   299: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   302: aload 7
    //   304: invokevirtual 118	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   307: aload 6
    //   309: astore_1
    //   310: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   313: ldc -92
    //   315: invokevirtual 166	cn/domob/android/i/f:c	(Ljava/lang/String;)V
    //   318: aload 6
    //   320: ifnull +10 -> 330
    //   323: aload 6
    //   325: invokeinterface 98 1 0
    //   330: aload 8
    //   332: ifnull -42 -> 290
    //   335: aload 8
    //   337: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   340: return
    //   341: astore 6
    //   343: aconst_null
    //   344: astore_1
    //   345: aload_1
    //   346: ifnull +9 -> 355
    //   349: aload_1
    //   350: invokeinterface 98 1 0
    //   355: aload 8
    //   357: ifnull +8 -> 365
    //   360: aload 8
    //   362: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   365: aload 6
    //   367: athrow
    //   368: astore 6
    //   370: goto -25 -> 345
    //   373: astore 7
    //   375: goto -79 -> 296
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	378	0	this	c
    //   0	378	1	paramContext	Context
    //   103	151	2	i	int
    //   142	99	3	j	int
    //   9	15	4	l	long
    //   43	281	6	localCursor	Cursor
    //   341	25	6	localObject1	Object
    //   368	1	6	localObject2	Object
    //   177	35	7	str	String
    //   291	12	7	localException1	Exception
    //   373	1	7	localException2	Exception
    //   4	357	8	localB	b
    // Exception table:
    //   from	to	target	type
    //   32	45	291	java/lang/Exception
    //   32	45	341	finally
    //   53	63	368	finally
    //   66	102	368	finally
    //   107	118	368	finally
    //   121	130	368	finally
    //   133	143	368	finally
    //   146	179	368	finally
    //   182	193	368	finally
    //   196	222	368	finally
    //   225	250	368	finally
    //   260	268	368	finally
    //   299	307	368	finally
    //   310	318	368	finally
    //   53	63	373	java/lang/Exception
    //   66	102	373	java/lang/Exception
    //   107	118	373	java/lang/Exception
    //   121	130	373	java/lang/Exception
    //   133	143	373	java/lang/Exception
    //   146	179	373	java/lang/Exception
    //   182	193	373	java/lang/Exception
    //   196	222	373	java/lang/Exception
    //   225	250	373	java/lang/Exception
    //   260	268	373	java/lang/Exception
  }
  
  protected void a(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    paramContext = b.a(paramContext);
    ContentValues localContentValues = new ContentValues();
    if (paramString2 != null) {}
    try
    {
      localContentValues.put("local_path", paramString2);
      if (paramLong != 0L) {
        localContentValues.put("ts", Long.valueOf(paramLong));
      }
      if (localContentValues.size() != 0) {
        paramContext.a("alias_info", localContentValues, "alias= \"" + paramString1 + "\"", null);
      }
      return;
    }
    catch (Exception paramString1)
    {
      a.a(paramString1);
      a.e("Failed to update alias info.");
      return;
    }
    finally
    {
      if (paramContext != null) {
        paramContext.b();
      }
    }
  }
  
  protected void a(String paramString)
  {
    try
    {
      a.a("Delete file:" + paramString);
      if ((paramString != null) && (paramString.length() != 0))
      {
        File localFile = new File(paramString);
        if (localFile.exists())
        {
          if (localFile.delete())
          {
            a.a("Success to delete file " + paramString);
            return;
          }
          a.e("Failed to delete file " + paramString);
          return;
        }
      }
    }
    catch (Exception localException)
    {
      a.e("Error happened when deleting file " + paramString);
      a.a(localException);
    }
  }
  
  /* Error */
  protected boolean a(Context paramContext, K paramK)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: aload_2
    //   4: invokevirtual 225	cn/domob/android/ads/K:g	()Z
    //   7: ifne +14 -> 21
    //   10: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   13: ldc -29
    //   15: invokevirtual 88	cn/domob/android/i/f:e	(Ljava/lang/String;)V
    //   18: iload 4
    //   20: ireturn
    //   21: aload_1
    //   22: invokestatic 33	cn/domob/android/ads/c/b:a	(Landroid/content/Context;)Lcn/domob/android/ads/c/b;
    //   25: astore 7
    //   27: new 169	android/content/ContentValues
    //   30: dup
    //   31: invokespecial 170	android/content/ContentValues:<init>	()V
    //   34: astore 6
    //   36: aload 6
    //   38: ldc -105
    //   40: aload_2
    //   41: invokevirtual 229	cn/domob/android/ads/K:b	()Ljava/lang/String;
    //   44: invokevirtual 176	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   47: aload 6
    //   49: ldc -25
    //   51: aload_2
    //   52: invokevirtual 233	cn/domob/android/ads/K:c	()Ljava/lang/String;
    //   55: invokevirtual 176	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   58: aload 6
    //   60: ldc -21
    //   62: aload_2
    //   63: invokevirtual 237	cn/domob/android/ads/K:d	()J
    //   66: invokestatic 184	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   69: invokevirtual 187	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   72: aload 6
    //   74: ldc -17
    //   76: aload_2
    //   77: invokevirtual 241	cn/domob/android/ads/K:e	()J
    //   80: invokestatic 184	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   83: invokevirtual 187	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   86: aload 6
    //   88: ldc -13
    //   90: aload_2
    //   91: invokevirtual 245	cn/domob/android/ads/K:f	()Ljava/lang/String;
    //   94: invokevirtual 176	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   97: aload 6
    //   99: ldc -9
    //   101: aload_2
    //   102: invokevirtual 249	cn/domob/android/ads/K:a	()Ljava/lang/String;
    //   105: invokevirtual 176	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   108: aload 7
    //   110: ldc -124
    //   112: aconst_null
    //   113: aconst_null
    //   114: aconst_null
    //   115: aconst_null
    //   116: invokevirtual 52	cn/domob/android/ads/c/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   119: astore_2
    //   120: aload_2
    //   121: ifnull +93 -> 214
    //   124: aload_2
    //   125: astore_1
    //   126: aload_2
    //   127: invokeinterface 136 1 0
    //   132: ifle +82 -> 214
    //   135: aload_2
    //   136: astore_1
    //   137: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   140: ldc -5
    //   142: invokevirtual 145	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   145: aload_2
    //   146: astore_1
    //   147: aload 7
    //   149: ldc -124
    //   151: aload 6
    //   153: aconst_null
    //   154: aconst_null
    //   155: invokevirtual 197	cn/domob/android/ads/c/b:a	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   158: istore_3
    //   159: aload_2
    //   160: astore_1
    //   161: aload_2
    //   162: invokeinterface 95 1 0
    //   167: ifne +11 -> 178
    //   170: aload_2
    //   171: astore_1
    //   172: aload_2
    //   173: invokeinterface 98 1 0
    //   178: iload_3
    //   179: ifge +29 -> 208
    //   182: iconst_0
    //   183: istore 4
    //   185: aload_2
    //   186: ifnull +9 -> 195
    //   189: aload_2
    //   190: invokeinterface 98 1 0
    //   195: aload 7
    //   197: ifnull +8 -> 205
    //   200: aload 7
    //   202: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   205: iload 4
    //   207: ireturn
    //   208: iconst_1
    //   209: istore 4
    //   211: goto -26 -> 185
    //   214: aload_2
    //   215: astore_1
    //   216: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   219: ldc -3
    //   221: invokevirtual 145	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   224: aload_2
    //   225: astore_1
    //   226: aload 7
    //   228: ldc -124
    //   230: aload 6
    //   232: invokevirtual 256	cn/domob/android/ads/c/b:a	(Ljava/lang/String;Landroid/content/ContentValues;)Z
    //   235: istore 5
    //   237: aload_2
    //   238: ifnull +9 -> 247
    //   241: aload_2
    //   242: invokeinterface 98 1 0
    //   247: iload 5
    //   249: istore 4
    //   251: aload 7
    //   253: ifnull -235 -> 18
    //   256: aload 7
    //   258: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   261: iload 5
    //   263: ireturn
    //   264: astore 6
    //   266: aconst_null
    //   267: astore_2
    //   268: aload_2
    //   269: astore_1
    //   270: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   273: aload 6
    //   275: invokevirtual 118	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   278: aload_2
    //   279: astore_1
    //   280: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   283: ldc_w 258
    //   286: invokevirtual 88	cn/domob/android/i/f:e	(Ljava/lang/String;)V
    //   289: aload_2
    //   290: ifnull +9 -> 299
    //   293: aload_2
    //   294: invokeinterface 98 1 0
    //   299: aload 7
    //   301: ifnull -283 -> 18
    //   304: aload 7
    //   306: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   309: iconst_0
    //   310: ireturn
    //   311: astore_2
    //   312: aconst_null
    //   313: astore_1
    //   314: aload_1
    //   315: ifnull +9 -> 324
    //   318: aload_1
    //   319: invokeinterface 98 1 0
    //   324: aload 7
    //   326: ifnull +8 -> 334
    //   329: aload 7
    //   331: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   334: aload_2
    //   335: athrow
    //   336: astore_2
    //   337: goto -23 -> 314
    //   340: astore 6
    //   342: goto -74 -> 268
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	345	0	this	c
    //   0	345	1	paramContext	Context
    //   0	345	2	paramK	K
    //   158	21	3	i	int
    //   1	249	4	bool1	boolean
    //   235	27	5	bool2	boolean
    //   34	197	6	localContentValues	ContentValues
    //   264	10	6	localException1	Exception
    //   340	1	6	localException2	Exception
    //   25	305	7	localB	b
    // Exception table:
    //   from	to	target	type
    //   108	120	264	java/lang/Exception
    //   108	120	311	finally
    //   126	135	336	finally
    //   137	145	336	finally
    //   147	159	336	finally
    //   161	170	336	finally
    //   172	178	336	finally
    //   216	224	336	finally
    //   226	237	336	finally
    //   270	278	336	finally
    //   280	289	336	finally
    //   126	135	340	java/lang/Exception
    //   137	145	340	java/lang/Exception
    //   147	159	340	java/lang/Exception
    //   161	170	340	java/lang/Exception
    //   172	178	340	java/lang/Exception
    //   216	224	340	java/lang/Exception
    //   226	237	340	java/lang/Exception
  }
  
  protected boolean a(Context paramContext, String paramString1, String paramString2)
  {
    Object localObject3 = null;
    Object localObject2 = null;
    localB = b.a(paramContext);
    localObject1 = localObject2;
    paramContext = localObject3;
    try
    {
      paramString1 = String.format("SELECT * FROM %s WHERE %s=\"%s\" AND %s=\"%s\"", new Object[] { "creative_alias", "creative_id", paramString1, "alias", paramString2 });
      localObject1 = localObject2;
      paramContext = localObject3;
      a.a("isCreativeHasAlias sql:" + paramString1);
      localObject1 = localObject2;
      paramContext = localObject3;
      paramString1 = localB.a(paramString1, null);
      if (paramString1 != null)
      {
        localObject1 = paramString1;
        paramContext = paramString1;
        int i = paramString1.getCount();
        if (i > 0) {
          return true;
        }
      }
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        paramContext = (Context)localObject1;
        a.a(paramString1);
        if ((localObject1 != null) && (!((Cursor)localObject1).isClosed())) {
          ((Cursor)localObject1).close();
        }
        if (localB != null) {
          localB.b();
        }
      }
    }
    finally
    {
      if ((paramContext == null) || (paramContext.isClosed())) {
        break label252;
      }
      paramContext.close();
      if (localB == null) {
        break label262;
      }
      localB.b();
    }
    return false;
  }
  
  /* Error */
  protected K b(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: invokestatic 33	cn/domob/android/ads/c/b:a	(Landroid/content/Context;)Lcn/domob/android/ads/c/b;
    //   6: astore 5
    //   8: aload 5
    //   10: ldc -124
    //   12: aconst_null
    //   13: aconst_null
    //   14: aconst_null
    //   15: aconst_null
    //   16: invokevirtual 52	cn/domob/android/ads/c/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   19: astore_1
    //   20: aload_1
    //   21: ifnull +207 -> 228
    //   24: aload_1
    //   25: invokeinterface 136 1 0
    //   30: ifle +198 -> 228
    //   33: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   36: new 37	java/lang/StringBuilder
    //   39: dup
    //   40: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   43: ldc_w 271
    //   46: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: aload_1
    //   50: invokeinterface 136 1 0
    //   55: invokevirtual 141	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   58: ldc_w 273
    //   61: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: invokevirtual 145	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   70: aload_1
    //   71: invokeinterface 58 1 0
    //   76: pop
    //   77: new 222	cn/domob/android/ads/K
    //   80: dup
    //   81: invokespecial 274	cn/domob/android/ads/K:<init>	()V
    //   84: astore_3
    //   85: aload_3
    //   86: aload_1
    //   87: aload_1
    //   88: ldc -105
    //   90: invokeinterface 64 2 0
    //   95: invokeinterface 68 2 0
    //   100: invokevirtual 275	cn/domob/android/ads/K:b	(Ljava/lang/String;)V
    //   103: aload_3
    //   104: aload_1
    //   105: aload_1
    //   106: ldc -25
    //   108: invokeinterface 64 2 0
    //   113: invokeinterface 68 2 0
    //   118: invokevirtual 276	cn/domob/android/ads/K:c	(Ljava/lang/String;)V
    //   121: aload_3
    //   122: aload_1
    //   123: aload_1
    //   124: ldc -21
    //   126: invokeinterface 64 2 0
    //   131: invokeinterface 280 2 0
    //   136: invokevirtual 283	cn/domob/android/ads/K:a	(J)V
    //   139: aload_3
    //   140: aload_1
    //   141: aload_1
    //   142: ldc -17
    //   144: invokeinterface 64 2 0
    //   149: invokeinterface 280 2 0
    //   154: invokevirtual 285	cn/domob/android/ads/K:b	(J)V
    //   157: aload_3
    //   158: aload_1
    //   159: aload_1
    //   160: ldc -13
    //   162: invokeinterface 64 2 0
    //   167: invokeinterface 68 2 0
    //   172: invokevirtual 287	cn/domob/android/ads/K:d	(Ljava/lang/String;)V
    //   175: aload_3
    //   176: aload_1
    //   177: aload_1
    //   178: ldc -9
    //   180: invokeinterface 64 2 0
    //   185: invokeinterface 68 2 0
    //   190: invokevirtual 288	cn/domob/android/ads/K:a	(Ljava/lang/String;)V
    //   193: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   196: ldc_w 290
    //   199: invokevirtual 145	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   202: aload_3
    //   203: astore_2
    //   204: aload_1
    //   205: ifnull +9 -> 214
    //   208: aload_1
    //   209: invokeinterface 98 1 0
    //   214: aload_2
    //   215: astore_3
    //   216: aload 5
    //   218: ifnull +128 -> 346
    //   221: aload 5
    //   223: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   226: aload_2
    //   227: areturn
    //   228: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   231: ldc_w 292
    //   234: invokevirtual 145	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   237: aconst_null
    //   238: astore_2
    //   239: goto -35 -> 204
    //   242: astore_3
    //   243: aconst_null
    //   244: astore_1
    //   245: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   248: aload_3
    //   249: invokevirtual 118	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   252: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   255: ldc_w 294
    //   258: invokevirtual 88	cn/domob/android/i/f:e	(Ljava/lang/String;)V
    //   261: aload_2
    //   262: ifnull +9 -> 271
    //   265: aload_2
    //   266: invokeinterface 98 1 0
    //   271: aload_1
    //   272: astore_3
    //   273: aload 5
    //   275: ifnull +71 -> 346
    //   278: aload 5
    //   280: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   283: aload_1
    //   284: areturn
    //   285: astore_2
    //   286: aconst_null
    //   287: astore_1
    //   288: aload_1
    //   289: ifnull +9 -> 298
    //   292: aload_1
    //   293: invokeinterface 98 1 0
    //   298: aload 5
    //   300: ifnull +8 -> 308
    //   303: aload 5
    //   305: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   308: aload_2
    //   309: athrow
    //   310: astore_2
    //   311: goto -23 -> 288
    //   314: astore_3
    //   315: aload_2
    //   316: astore_1
    //   317: aload_3
    //   318: astore_2
    //   319: goto -31 -> 288
    //   322: astore_3
    //   323: aconst_null
    //   324: astore 4
    //   326: aload_1
    //   327: astore_2
    //   328: aload 4
    //   330: astore_1
    //   331: goto -86 -> 245
    //   334: astore 4
    //   336: aload_1
    //   337: astore_2
    //   338: aload_3
    //   339: astore_1
    //   340: aload 4
    //   342: astore_3
    //   343: goto -98 -> 245
    //   346: aload_3
    //   347: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	348	0	this	c
    //   0	348	1	paramContext	Context
    //   1	265	2	localObject1	Object
    //   285	24	2	localObject2	Object
    //   310	6	2	localObject3	Object
    //   318	20	2	localObject4	Object
    //   84	132	3	localObject5	Object
    //   242	7	3	localException1	Exception
    //   272	1	3	localContext	Context
    //   314	4	3	localObject6	Object
    //   322	17	3	localException2	Exception
    //   342	5	3	localObject7	Object
    //   324	5	4	localObject8	Object
    //   334	7	4	localException3	Exception
    //   6	298	5	localB	b
    // Exception table:
    //   from	to	target	type
    //   8	20	242	java/lang/Exception
    //   8	20	285	finally
    //   24	85	310	finally
    //   85	202	310	finally
    //   228	237	310	finally
    //   245	261	314	finally
    //   24	85	322	java/lang/Exception
    //   228	237	322	java/lang/Exception
    //   85	202	334	java/lang/Exception
  }
  
  /* Error */
  protected String b(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_1
    //   3: invokestatic 33	cn/domob/android/ads/c/b:a	(Landroid/content/Context;)Lcn/domob/android/ads/c/b;
    //   6: astore 4
    //   8: aload 4
    //   10: ldc -64
    //   12: aconst_null
    //   13: new 37	java/lang/StringBuilder
    //   16: dup
    //   17: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   20: ldc -62
    //   22: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: aload_2
    //   26: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: ldc 46
    //   31: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: aconst_null
    //   38: aconst_null
    //   39: invokevirtual 52	cn/domob/android/ads/c/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   42: astore_2
    //   43: aload_2
    //   44: ifnull +71 -> 115
    //   47: aload_2
    //   48: astore_1
    //   49: aload_2
    //   50: invokeinterface 136 1 0
    //   55: ifle +60 -> 115
    //   58: aload_2
    //   59: astore_1
    //   60: aload_2
    //   61: invokeinterface 58 1 0
    //   66: pop
    //   67: aload_2
    //   68: astore_1
    //   69: aload_2
    //   70: aload_2
    //   71: ldc -84
    //   73: invokeinterface 64 2 0
    //   78: invokeinterface 68 2 0
    //   83: astore_3
    //   84: aload_2
    //   85: ifnull +18 -> 103
    //   88: aload_2
    //   89: invokeinterface 95 1 0
    //   94: ifne +9 -> 103
    //   97: aload_2
    //   98: invokeinterface 98 1 0
    //   103: aload 4
    //   105: ifnull +8 -> 113
    //   108: aload 4
    //   110: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   113: aload_3
    //   114: areturn
    //   115: aload_2
    //   116: ifnull +18 -> 134
    //   119: aload_2
    //   120: invokeinterface 95 1 0
    //   125: ifne +9 -> 134
    //   128: aload_2
    //   129: invokeinterface 98 1 0
    //   134: aload 4
    //   136: ifnull +8 -> 144
    //   139: aload 4
    //   141: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   144: aconst_null
    //   145: areturn
    //   146: astore_3
    //   147: aconst_null
    //   148: astore_2
    //   149: aload_2
    //   150: astore_1
    //   151: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   154: aload_3
    //   155: invokevirtual 118	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   158: aload_2
    //   159: ifnull +18 -> 177
    //   162: aload_2
    //   163: invokeinterface 95 1 0
    //   168: ifne +9 -> 177
    //   171: aload_2
    //   172: invokeinterface 98 1 0
    //   177: aload 4
    //   179: ifnull -35 -> 144
    //   182: aload 4
    //   184: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   187: goto -43 -> 144
    //   190: astore_1
    //   191: aload_3
    //   192: astore_2
    //   193: aload_2
    //   194: ifnull +18 -> 212
    //   197: aload_2
    //   198: invokeinterface 95 1 0
    //   203: ifne +9 -> 212
    //   206: aload_2
    //   207: invokeinterface 98 1 0
    //   212: aload 4
    //   214: ifnull +8 -> 222
    //   217: aload 4
    //   219: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   222: aload_1
    //   223: athrow
    //   224: astore_3
    //   225: aload_1
    //   226: astore_2
    //   227: aload_3
    //   228: astore_1
    //   229: goto -36 -> 193
    //   232: astore_3
    //   233: goto -84 -> 149
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	236	0	this	c
    //   0	236	1	paramContext	Context
    //   0	236	2	paramString	String
    //   1	113	3	str	String
    //   146	46	3	localException1	Exception
    //   224	4	3	localObject	Object
    //   232	1	3	localException2	Exception
    //   6	212	4	localB	b
    // Exception table:
    //   from	to	target	type
    //   8	43	146	java/lang/Exception
    //   8	43	190	finally
    //   49	58	224	finally
    //   60	67	224	finally
    //   69	84	224	finally
    //   151	158	224	finally
    //   49	58	232	java/lang/Exception
    //   60	67	232	java/lang/Exception
    //   69	84	232	java/lang/Exception
  }
  
  protected void b(Context paramContext, String paramString1, String paramString2)
  {
    if (!h.e(paramString1)) {
      paramContext = b.a(paramContext);
    }
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("alias", paramString1);
      if (paramString2 != null) {
        localContentValues.put("local_path", paramString2);
      }
      localContentValues.put("ts", Long.valueOf(System.currentTimeMillis()));
      paramContext.a("alias_info", localContentValues);
      return;
    }
    catch (Exception paramString1)
    {
      a.a(paramString1);
      a.e("Failed to insert alias info.");
      return;
    }
    finally
    {
      if (paramContext != null) {
        paramContext.b();
      }
    }
  }
  
  protected void c(Context paramContext)
  {
    paramContext = b.a(paramContext);
    paramContext.a("domob_splash_ad_cache_res", null, null);
    paramContext.a("creative_alias", null, null);
    if (paramContext != null) {
      paramContext.b();
    }
  }
  
  protected void c(Context paramContext, String paramString1, String paramString2)
  {
    if ((!h.e(paramString1)) && (!h.e(paramString2))) {
      paramContext = b.a(paramContext);
    }
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("alias", paramString1);
      localContentValues.put("creative_id", paramString2);
      paramContext.a("creative_alias", localContentValues);
      return;
    }
    catch (Exception paramString1)
    {
      a.a(paramString1);
      a.e("Failed to insert creative-alias.");
      return;
    }
    finally
    {
      if (paramContext != null) {
        paramContext.b();
      }
    }
  }
  
  /* Error */
  protected boolean c(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_1
    //   3: invokestatic 33	cn/domob/android/ads/c/b:a	(Landroid/content/Context;)Lcn/domob/android/ads/c/b;
    //   6: astore 5
    //   8: aload 5
    //   10: ldc -64
    //   12: aconst_null
    //   13: new 37	java/lang/StringBuilder
    //   16: dup
    //   17: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   20: ldc -62
    //   22: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: aload_2
    //   26: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: ldc 46
    //   31: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: aconst_null
    //   38: aconst_null
    //   39: invokevirtual 52	cn/domob/android/ads/c/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   42: astore 4
    //   44: aload 4
    //   46: ifnull +69 -> 115
    //   49: aload 4
    //   51: astore_3
    //   52: aload 4
    //   54: invokeinterface 136 1 0
    //   59: ifle +56 -> 115
    //   62: aload 4
    //   64: astore_3
    //   65: aload 4
    //   67: invokeinterface 98 1 0
    //   72: aload 4
    //   74: astore_3
    //   75: aload_0
    //   76: aload_1
    //   77: aload_2
    //   78: invokevirtual 306	cn/domob/android/ads/c:e	(Landroid/content/Context;Ljava/lang/String;)V
    //   81: aload 4
    //   83: ifnull +20 -> 103
    //   86: aload 4
    //   88: invokeinterface 95 1 0
    //   93: ifne +10 -> 103
    //   96: aload 4
    //   98: invokeinterface 98 1 0
    //   103: aload 5
    //   105: ifnull +8 -> 113
    //   108: aload 5
    //   110: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   113: iconst_1
    //   114: ireturn
    //   115: aload 4
    //   117: ifnull +20 -> 137
    //   120: aload 4
    //   122: invokeinterface 95 1 0
    //   127: ifne +10 -> 137
    //   130: aload 4
    //   132: invokeinterface 98 1 0
    //   137: aload 5
    //   139: ifnull +8 -> 147
    //   142: aload 5
    //   144: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   147: iconst_0
    //   148: ireturn
    //   149: astore_1
    //   150: aconst_null
    //   151: astore 4
    //   153: aload 4
    //   155: astore_3
    //   156: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   159: aload_1
    //   160: invokevirtual 118	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   163: aload 4
    //   165: ifnull +20 -> 185
    //   168: aload 4
    //   170: invokeinterface 95 1 0
    //   175: ifne +10 -> 185
    //   178: aload 4
    //   180: invokeinterface 98 1 0
    //   185: aload 5
    //   187: ifnull -40 -> 147
    //   190: aload 5
    //   192: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   195: goto -48 -> 147
    //   198: astore_1
    //   199: aload_3
    //   200: astore_2
    //   201: aload_2
    //   202: ifnull +18 -> 220
    //   205: aload_2
    //   206: invokeinterface 95 1 0
    //   211: ifne +9 -> 220
    //   214: aload_2
    //   215: invokeinterface 98 1 0
    //   220: aload 5
    //   222: ifnull +8 -> 230
    //   225: aload 5
    //   227: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   230: aload_1
    //   231: athrow
    //   232: astore_1
    //   233: aload_3
    //   234: astore_2
    //   235: goto -34 -> 201
    //   238: astore_1
    //   239: goto -86 -> 153
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	242	0	this	c
    //   0	242	1	paramContext	Context
    //   0	242	2	paramString	String
    //   1	233	3	localObject	Object
    //   42	137	4	localCursor	Cursor
    //   6	220	5	localB	b
    // Exception table:
    //   from	to	target	type
    //   8	44	149	java/lang/Exception
    //   8	44	198	finally
    //   52	62	232	finally
    //   65	72	232	finally
    //   75	81	232	finally
    //   156	163	232	finally
    //   52	62	238	java/lang/Exception
    //   65	72	238	java/lang/Exception
    //   75	81	238	java/lang/Exception
  }
  
  protected String d(Context paramContext, String paramString)
  {
    String str2 = b(paramContext, paramString);
    if ((str2 == null) || (str2.length() == 0)) {
      a.a(String.format("Alias %s is in DB but the local path is null.", new Object[] { paramString }));
    }
    for (;;)
    {
      String str1 = null;
      do
      {
        return str1;
        str1 = str2;
      } while (new File(str2).exists());
      f(paramContext, paramString);
    }
  }
  
  /* Error */
  protected void d(Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 33	cn/domob/android/ads/c/b:a	(Landroid/content/Context;)Lcn/domob/android/ads/c/b;
    //   4: astore 11
    //   6: aload 11
    //   8: ldc -64
    //   10: iconst_3
    //   11: anewarray 111	java/lang/String
    //   14: dup
    //   15: iconst_0
    //   16: ldc 60
    //   18: aastore
    //   19: dup
    //   20: iconst_1
    //   21: ldc -84
    //   23: aastore
    //   24: dup
    //   25: iconst_2
    //   26: ldc -78
    //   28: aastore
    //   29: aconst_null
    //   30: aconst_null
    //   31: ldc -78
    //   33: invokevirtual 52	cn/domob/android/ads/c/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   36: astore 10
    //   38: aload 10
    //   40: ifnull +288 -> 328
    //   43: aload 10
    //   45: astore 9
    //   47: aload 10
    //   49: invokeinterface 136 1 0
    //   54: istore_2
    //   55: aload 10
    //   57: astore 9
    //   59: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   62: new 37	java/lang/StringBuilder
    //   65: dup
    //   66: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   69: ldc_w 312
    //   72: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: iload_2
    //   76: invokevirtual 141	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   79: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   82: invokevirtual 107	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   85: iload_2
    //   86: bipush 10
    //   88: if_icmple +280 -> 368
    //   91: iload_2
    //   92: bipush 10
    //   94: isub
    //   95: istore_3
    //   96: aload 10
    //   98: astore 9
    //   100: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   103: ldc_w 314
    //   106: iconst_3
    //   107: anewarray 4	java/lang/Object
    //   110: dup
    //   111: iconst_0
    //   112: iload_2
    //   113: invokestatic 319	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   116: aastore
    //   117: dup
    //   118: iconst_1
    //   119: bipush 10
    //   121: invokestatic 319	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   124: aastore
    //   125: dup
    //   126: iconst_2
    //   127: iload_3
    //   128: invokestatic 319	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   131: aastore
    //   132: invokestatic 115	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   135: invokevirtual 145	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   138: aload 10
    //   140: astore 9
    //   142: aload 10
    //   144: invokeinterface 58 1 0
    //   149: pop
    //   150: iconst_0
    //   151: istore_2
    //   152: iload_2
    //   153: iload_3
    //   154: if_icmpge +161 -> 315
    //   157: aload 10
    //   159: astore 9
    //   161: aload 10
    //   163: ldc 60
    //   165: invokeinterface 64 2 0
    //   170: istore 4
    //   172: aload 10
    //   174: astore 9
    //   176: aload 10
    //   178: ldc -84
    //   180: invokeinterface 64 2 0
    //   185: istore 5
    //   187: aload 10
    //   189: astore 9
    //   191: aload 10
    //   193: ldc -78
    //   195: invokeinterface 64 2 0
    //   200: istore 6
    //   202: aload 10
    //   204: astore 9
    //   206: aload 10
    //   208: iload 4
    //   210: invokeinterface 68 2 0
    //   215: astore 12
    //   217: aload 10
    //   219: astore 9
    //   221: aload 10
    //   223: iload 5
    //   225: invokeinterface 68 2 0
    //   230: astore 13
    //   232: aload 10
    //   234: astore 9
    //   236: aload 10
    //   238: iload 6
    //   240: invokeinterface 280 2 0
    //   245: lstore 7
    //   247: aload 10
    //   249: astore 9
    //   251: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   254: ldc_w 321
    //   257: iconst_2
    //   258: anewarray 4	java/lang/Object
    //   261: dup
    //   262: iconst_0
    //   263: aload 12
    //   265: aastore
    //   266: dup
    //   267: iconst_1
    //   268: lload 7
    //   270: invokestatic 184	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   273: aastore
    //   274: invokestatic 115	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   277: invokevirtual 107	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   280: aload 10
    //   282: astore 9
    //   284: aload_0
    //   285: aload 13
    //   287: invokevirtual 322	cn/domob/android/ads/c:a	(Ljava/lang/String;)V
    //   290: aload 10
    //   292: astore 9
    //   294: aload_0
    //   295: aload_1
    //   296: aload 12
    //   298: invokevirtual 92	cn/domob/android/ads/c:f	(Landroid/content/Context;Ljava/lang/String;)V
    //   301: aload 10
    //   303: astore 9
    //   305: aload 10
    //   307: invokeinterface 325 1 0
    //   312: ifne +49 -> 361
    //   315: aload 10
    //   317: astore 9
    //   319: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   322: ldc_w 327
    //   325: invokevirtual 107	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   328: aload 10
    //   330: ifnull +20 -> 350
    //   333: aload 10
    //   335: invokeinterface 95 1 0
    //   340: ifne +10 -> 350
    //   343: aload 10
    //   345: invokeinterface 98 1 0
    //   350: aload 11
    //   352: ifnull +8 -> 360
    //   355: aload 11
    //   357: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   360: return
    //   361: iload_2
    //   362: iconst_1
    //   363: iadd
    //   364: istore_2
    //   365: goto -213 -> 152
    //   368: aload 10
    //   370: astore 9
    //   372: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   375: ldc_w 329
    //   378: invokevirtual 145	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   381: goto -53 -> 328
    //   384: astore_1
    //   385: aload 10
    //   387: astore 9
    //   389: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   392: aload_1
    //   393: invokevirtual 118	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   396: aload 10
    //   398: astore 9
    //   400: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   403: ldc_w 331
    //   406: invokevirtual 88	cn/domob/android/i/f:e	(Ljava/lang/String;)V
    //   409: aload 10
    //   411: ifnull +20 -> 431
    //   414: aload 10
    //   416: invokeinterface 95 1 0
    //   421: ifne +10 -> 431
    //   424: aload 10
    //   426: invokeinterface 98 1 0
    //   431: aload 11
    //   433: ifnull -73 -> 360
    //   436: aload 11
    //   438: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   441: return
    //   442: astore_1
    //   443: aconst_null
    //   444: astore 9
    //   446: aload 9
    //   448: ifnull +20 -> 468
    //   451: aload 9
    //   453: invokeinterface 95 1 0
    //   458: ifne +10 -> 468
    //   461: aload 9
    //   463: invokeinterface 98 1 0
    //   468: aload 11
    //   470: ifnull +8 -> 478
    //   473: aload 11
    //   475: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   478: aload_1
    //   479: athrow
    //   480: astore_1
    //   481: goto -35 -> 446
    //   484: astore_1
    //   485: aconst_null
    //   486: astore 10
    //   488: goto -103 -> 385
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	491	0	this	c
    //   0	491	1	paramContext	Context
    //   54	311	2	i	int
    //   95	60	3	j	int
    //   170	39	4	k	int
    //   185	39	5	m	int
    //   200	39	6	n	int
    //   245	24	7	l	long
    //   45	417	9	localCursor1	Cursor
    //   36	451	10	localCursor2	Cursor
    //   4	470	11	localB	b
    //   215	82	12	str1	String
    //   230	56	13	str2	String
    // Exception table:
    //   from	to	target	type
    //   47	55	384	java/lang/Exception
    //   59	85	384	java/lang/Exception
    //   100	138	384	java/lang/Exception
    //   142	150	384	java/lang/Exception
    //   161	172	384	java/lang/Exception
    //   176	187	384	java/lang/Exception
    //   191	202	384	java/lang/Exception
    //   206	217	384	java/lang/Exception
    //   221	232	384	java/lang/Exception
    //   236	247	384	java/lang/Exception
    //   251	280	384	java/lang/Exception
    //   284	290	384	java/lang/Exception
    //   294	301	384	java/lang/Exception
    //   305	315	384	java/lang/Exception
    //   319	328	384	java/lang/Exception
    //   372	381	384	java/lang/Exception
    //   6	38	442	finally
    //   47	55	480	finally
    //   59	85	480	finally
    //   100	138	480	finally
    //   142	150	480	finally
    //   161	172	480	finally
    //   176	187	480	finally
    //   191	202	480	finally
    //   206	217	480	finally
    //   221	232	480	finally
    //   236	247	480	finally
    //   251	280	480	finally
    //   284	290	480	finally
    //   294	301	480	finally
    //   305	315	480	finally
    //   319	328	480	finally
    //   372	381	480	finally
    //   389	396	480	finally
    //   400	409	480	finally
    //   6	38	484	java/lang/Exception
  }
  
  /* Error */
  public boolean d(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 33	cn/domob/android/ads/c/b:a	(Landroid/content/Context;)Lcn/domob/android/ads/c/b;
    //   4: astore 7
    //   6: new 169	android/content/ContentValues
    //   9: dup
    //   10: invokespecial 170	android/content/ContentValues:<init>	()V
    //   13: astore 8
    //   15: aload 8
    //   17: ldc_w 263
    //   20: aload_2
    //   21: invokevirtual 176	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   24: aload 8
    //   26: ldc 60
    //   28: aload_3
    //   29: invokevirtual 176	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   32: aload 7
    //   34: ldc 35
    //   36: aconst_null
    //   37: aconst_null
    //   38: aconst_null
    //   39: aconst_null
    //   40: invokevirtual 52	cn/domob/android/ads/c/b:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   43: astore_2
    //   44: aload_2
    //   45: ifnull +93 -> 138
    //   48: aload_2
    //   49: astore_1
    //   50: aload_2
    //   51: invokeinterface 136 1 0
    //   56: ifle +82 -> 138
    //   59: aload_2
    //   60: astore_1
    //   61: aload 7
    //   63: ldc 35
    //   65: aload 8
    //   67: aconst_null
    //   68: aconst_null
    //   69: invokevirtual 197	cn/domob/android/ads/c/b:a	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   72: istore 4
    //   74: aload_2
    //   75: astore_1
    //   76: aload_2
    //   77: invokeinterface 95 1 0
    //   82: ifne +11 -> 93
    //   85: aload_2
    //   86: astore_1
    //   87: aload_2
    //   88: invokeinterface 98 1 0
    //   93: iload 4
    //   95: ifge +37 -> 132
    //   98: iconst_0
    //   99: istore 5
    //   101: aload_2
    //   102: ifnull +9 -> 111
    //   105: aload_2
    //   106: invokeinterface 98 1 0
    //   111: iload 5
    //   113: istore 6
    //   115: aload 7
    //   117: ifnull +12 -> 129
    //   120: aload 7
    //   122: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   125: iload 5
    //   127: istore 6
    //   129: iload 6
    //   131: ireturn
    //   132: iconst_1
    //   133: istore 5
    //   135: goto -34 -> 101
    //   138: aload_2
    //   139: astore_1
    //   140: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   143: ldc -3
    //   145: invokevirtual 145	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   148: aload_2
    //   149: astore_1
    //   150: aload 7
    //   152: ldc 35
    //   154: aload 8
    //   156: invokevirtual 256	cn/domob/android/ads/c/b:a	(Ljava/lang/String;Landroid/content/ContentValues;)Z
    //   159: istore 5
    //   161: aload_2
    //   162: ifnull +9 -> 171
    //   165: aload_2
    //   166: invokeinterface 98 1 0
    //   171: iload 5
    //   173: istore 6
    //   175: aload 7
    //   177: ifnull -48 -> 129
    //   180: aload 7
    //   182: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   185: iload 5
    //   187: ireturn
    //   188: astore_3
    //   189: aconst_null
    //   190: astore_2
    //   191: aload_2
    //   192: astore_1
    //   193: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   196: aload_3
    //   197: invokevirtual 118	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   200: aload_2
    //   201: astore_1
    //   202: getstatic 22	cn/domob/android/ads/c:a	Lcn/domob/android/i/f;
    //   205: ldc_w 258
    //   208: invokevirtual 88	cn/domob/android/i/f:e	(Ljava/lang/String;)V
    //   211: aload_2
    //   212: ifnull +9 -> 221
    //   215: aload_2
    //   216: invokeinterface 98 1 0
    //   221: aload 7
    //   223: ifnull +8 -> 231
    //   226: aload 7
    //   228: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   231: iconst_0
    //   232: ireturn
    //   233: astore_2
    //   234: aconst_null
    //   235: astore_1
    //   236: aload_1
    //   237: ifnull +9 -> 246
    //   240: aload_1
    //   241: invokeinterface 98 1 0
    //   246: aload 7
    //   248: ifnull +8 -> 256
    //   251: aload 7
    //   253: invokevirtual 101	cn/domob/android/ads/c/b:b	()V
    //   256: aload_2
    //   257: athrow
    //   258: astore_2
    //   259: goto -23 -> 236
    //   262: astore_3
    //   263: goto -72 -> 191
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	266	0	this	c
    //   0	266	1	paramContext	Context
    //   0	266	2	paramString1	String
    //   0	266	3	paramString2	String
    //   72	22	4	i	int
    //   99	87	5	bool1	boolean
    //   113	61	6	bool2	boolean
    //   4	248	7	localB	b
    //   13	142	8	localContentValues	ContentValues
    // Exception table:
    //   from	to	target	type
    //   32	44	188	java/lang/Exception
    //   32	44	233	finally
    //   50	59	258	finally
    //   61	74	258	finally
    //   76	85	258	finally
    //   87	93	258	finally
    //   140	148	258	finally
    //   150	161	258	finally
    //   193	200	258	finally
    //   202	211	258	finally
    //   50	59	262	java/lang/Exception
    //   61	74	262	java/lang/Exception
    //   76	85	262	java/lang/Exception
    //   87	93	262	java/lang/Exception
    //   140	148	262	java/lang/Exception
    //   150	161	262	java/lang/Exception
  }
  
  protected void e(Context paramContext, String paramString)
  {
    if (!h.e(paramString)) {
      a(paramContext, paramString, null, System.currentTimeMillis());
    }
  }
  
  protected void f(Context paramContext, String paramString)
  {
    if (!h.e(paramString))
    {
      a.a("Delete alias:" + paramString);
      paramContext = b.a(paramContext);
    }
    try
    {
      paramContext.a("alias_info", "alias= \"" + paramString + "\"", null);
      return;
    }
    catch (Exception paramString)
    {
      a.a(paramString);
      a.e("Failed to delete alias info.");
      return;
    }
    finally
    {
      if (paramContext != null) {
        paramContext.b();
      }
    }
  }
}
