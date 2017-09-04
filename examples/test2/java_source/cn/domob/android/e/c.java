package cn.domob.android.e;

import android.content.Context;
import cn.domob.android.i.f;
import org.json.JSONArray;
import org.json.JSONException;

public class c
{
  private static int b = 20;
  private static c c;
  f a = new f(c.class.getSimpleName());
  
  public c() {}
  
  protected static c a()
  {
    try
    {
      if (c == null) {
        c = new c();
      }
      c localC = c;
      return localC;
    }
    finally {}
  }
  
  /* Error */
  private String a(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: new 40	java/lang/StringBuilder
    //   6: dup
    //   7: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   10: aload_2
    //   11: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: ldc 47
    //   16: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: aload_3
    //   20: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: ldc 49
    //   25: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: aload_3
    //   29: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: ldc 51
    //   34: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: ldc 53
    //   39: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: ldc 55
    //   44: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: astore_2
    //   51: invokestatic 64	java/lang/System:currentTimeMillis	()J
    //   54: lstore 7
    //   56: new 66	java/lang/StringBuffer
    //   59: dup
    //   60: invokespecial 67	java/lang/StringBuffer:<init>	()V
    //   63: astore_3
    //   64: aload_1
    //   65: invokestatic 72	cn/domob/android/e/b:a	(Landroid/content/Context;)Lcn/domob/android/e/b;
    //   68: iconst_1
    //   69: anewarray 74	java/lang/String
    //   72: dup
    //   73: iconst_0
    //   74: ldc 76
    //   76: aastore
    //   77: aload_2
    //   78: iconst_2
    //   79: anewarray 74	java/lang/String
    //   82: dup
    //   83: iconst_0
    //   84: ldc 78
    //   86: aastore
    //   87: dup
    //   88: iconst_1
    //   89: lload 7
    //   91: invokestatic 82	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   94: aastore
    //   95: ldc 84
    //   97: invokevirtual 87	cn/domob/android/e/b:a	([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   100: astore_2
    //   101: aload_2
    //   102: ifnull +147 -> 249
    //   105: aload_2
    //   106: astore_1
    //   107: aload_0
    //   108: getfield 31	cn/domob/android/e/c:a	Lcn/domob/android/i/f;
    //   111: ldc 89
    //   113: iconst_2
    //   114: anewarray 4	java/lang/Object
    //   117: dup
    //   118: iconst_0
    //   119: aload_2
    //   120: invokeinterface 95 1 0
    //   125: invokestatic 100	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   128: aastore
    //   129: dup
    //   130: iconst_1
    //   131: getstatic 14	cn/domob/android/e/c:b	I
    //   134: invokestatic 100	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   137: aastore
    //   138: invokestatic 104	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   141: invokevirtual 106	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   144: aload_2
    //   145: astore_1
    //   146: aload_2
    //   147: invokeinterface 95 1 0
    //   152: getstatic 14	cn/domob/android/e/c:b	I
    //   155: if_icmple +81 -> 236
    //   158: aload_2
    //   159: astore_1
    //   160: getstatic 14	cn/domob/android/e/c:b	I
    //   163: istore 4
    //   165: aload_2
    //   166: astore_1
    //   167: aload_2
    //   168: invokeinterface 110 1 0
    //   173: pop
    //   174: iconst_0
    //   175: istore 5
    //   177: iload 4
    //   179: istore 6
    //   181: iload 5
    //   183: iload 4
    //   185: if_icmpge +67 -> 252
    //   188: aload_2
    //   189: astore_1
    //   190: aload_3
    //   191: aload_2
    //   192: aload_2
    //   193: ldc 76
    //   195: invokeinterface 114 2 0
    //   200: invokeinterface 118 2 0
    //   205: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   208: pop
    //   209: aload_2
    //   210: astore_1
    //   211: aload_3
    //   212: ldc 123
    //   214: invokevirtual 121	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   217: pop
    //   218: aload_2
    //   219: astore_1
    //   220: aload_2
    //   221: invokeinterface 126 1 0
    //   226: pop
    //   227: iload 5
    //   229: iconst_1
    //   230: iadd
    //   231: istore 5
    //   233: goto -56 -> 177
    //   236: aload_2
    //   237: astore_1
    //   238: aload_2
    //   239: invokeinterface 95 1 0
    //   244: istore 4
    //   246: goto -81 -> 165
    //   249: iconst_0
    //   250: istore 6
    //   252: aload_2
    //   253: ifnull +18 -> 271
    //   256: aload_2
    //   257: invokeinterface 129 1 0
    //   262: ifne +9 -> 271
    //   265: aload_2
    //   266: invokeinterface 132 1 0
    //   271: aload 9
    //   273: astore_1
    //   274: aload_3
    //   275: invokevirtual 135	java/lang/StringBuffer:length	()I
    //   278: ifle +33 -> 311
    //   281: aload_3
    //   282: invokevirtual 136	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   285: astore_1
    //   286: aload_1
    //   287: invokevirtual 140	java/lang/String:getBytes	()[B
    //   290: arraylength
    //   291: iload 6
    //   293: bipush 10
    //   295: imul
    //   296: if_icmpgt +83 -> 379
    //   299: aload_1
    //   300: iconst_0
    //   301: aload_1
    //   302: invokevirtual 141	java/lang/String:length	()I
    //   305: iconst_1
    //   306: isub
    //   307: invokevirtual 145	java/lang/String:substring	(II)Ljava/lang/String;
    //   310: astore_1
    //   311: aload_1
    //   312: areturn
    //   313: astore_3
    //   314: aconst_null
    //   315: astore_2
    //   316: aload_2
    //   317: astore_1
    //   318: aload_0
    //   319: getfield 31	cn/domob/android/e/c:a	Lcn/domob/android/i/f;
    //   322: aload_3
    //   323: invokevirtual 148	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   326: aload 9
    //   328: astore_1
    //   329: aload_2
    //   330: ifnull -19 -> 311
    //   333: aload 9
    //   335: astore_1
    //   336: aload_2
    //   337: invokeinterface 129 1 0
    //   342: ifne -31 -> 311
    //   345: aload_2
    //   346: invokeinterface 132 1 0
    //   351: aconst_null
    //   352: areturn
    //   353: astore_1
    //   354: aconst_null
    //   355: astore_3
    //   356: aload_1
    //   357: astore_2
    //   358: aload_3
    //   359: ifnull +18 -> 377
    //   362: aload_3
    //   363: invokeinterface 129 1 0
    //   368: ifne +9 -> 377
    //   371: aload_3
    //   372: invokeinterface 132 1 0
    //   377: aload_2
    //   378: athrow
    //   379: aload_0
    //   380: getfield 31	cn/domob/android/e/c:a	Lcn/domob/android/i/f;
    //   383: new 40	java/lang/StringBuilder
    //   386: dup
    //   387: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   390: ldc -106
    //   392: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   395: iload 6
    //   397: bipush 10
    //   399: imul
    //   400: invokevirtual 153	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   403: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   406: invokevirtual 156	cn/domob/android/i/f:e	(Ljava/lang/String;)V
    //   409: aconst_null
    //   410: areturn
    //   411: astore_2
    //   412: aload_1
    //   413: astore_3
    //   414: goto -56 -> 358
    //   417: astore_3
    //   418: goto -102 -> 316
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	421	0	this	c
    //   0	421	1	paramContext	Context
    //   0	421	2	paramString1	String
    //   0	421	3	paramString2	String
    //   163	82	4	i	int
    //   175	57	5	j	int
    //   179	221	6	k	int
    //   54	36	7	l	long
    //   1	333	9	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   64	101	313	java/lang/Exception
    //   64	101	353	finally
    //   107	144	411	finally
    //   146	158	411	finally
    //   160	165	411	finally
    //   167	174	411	finally
    //   190	209	411	finally
    //   211	218	411	finally
    //   220	227	411	finally
    //   238	246	411	finally
    //   318	326	411	finally
    //   107	144	417	java/lang/Exception
    //   146	158	417	java/lang/Exception
    //   160	165	417	java/lang/Exception
    //   167	174	417	java/lang/Exception
    //   190	209	417	java/lang/Exception
    //   211	218	417	java/lang/Exception
    //   220	227	417	java/lang/Exception
    //   238	246	417	java/lang/Exception
  }
  
  protected void a(int paramInt)
  {
    a.b("freq maximum uploading number now is assigned to " + paramInt);
    b = paramInt;
  }
  
  protected void a(Context paramContext, JSONArray paramJSONArray)
  {
    if (paramJSONArray == null) {
      a.b("ad response contains array is null");
    }
    for (;;)
    {
      return;
      int i = 0;
      while (i < paramJSONArray.length())
      {
        Object localObject = null;
        try
        {
          str = paramJSONArray.getString(i);
          localObject = str;
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            String str;
            a.a(localJSONException);
          }
        }
        if ((localObject != null) && (((String)localObject).length() > 0))
        {
          localObject = ((String)localObject).split("_");
          if ((localObject != null) && (localObject.length == 4)) {
            str = localObject[0];
          }
        }
        try
        {
          j = Integer.valueOf(localObject[1]).intValue();
          k = Integer.valueOf(localObject[2]).intValue();
          l = Long.valueOf(localObject[3]).longValue();
          m = b.a(paramContext).a("frequency_id = ?", new String[] { str });
          if (m != 0) {
            break label217;
          }
          a.b("Database does not contain the freqid which from ad response: " + str);
          b.a(paramContext).a(str, j, k, l);
        }
        catch (Exception localException)
        {
          for (;;)
          {
            int j;
            int k;
            long l;
            int m;
            a.a(localException);
            continue;
            if (m > 0)
            {
              if (m > 1)
              {
                a.e(String.format("Database contains %d same freqid", new Object[] { Integer.valueOf(m) }));
                b.a(paramContext).a(localJSONException);
              }
              if (b.a(paramContext).a("frequency_id= ? and end_time = ?", new String[] { localJSONException, String.valueOf(l) }) == 1)
              {
                a.b("ending timestamp is the same, so only update limit number ");
                b.a(paramContext).a(localJSONException, j, k);
              }
              else
              {
                a.b("ending timestamp is not the same, so delete the old data, insert new data");
                b.a(paramContext).a(localJSONException);
                b.a(paramContext).a(localJSONException, j, k, l);
              }
            }
          }
        }
        i += 1;
      }
    }
  }
  
  protected String[] a(Context paramContext)
  {
    String[] arrayOfString = new String[2];
    if (b > 0)
    {
      b.a(paramContext).c();
      arrayOfString[0] = a(paramContext, "imp_times", "imp_limit_times");
      a.b("upload imp list is " + arrayOfString[0]);
      arrayOfString[1] = a(paramContext, "click_times", "click_limit_times");
      a.b("upload click list is " + arrayOfString[1]);
    }
    return arrayOfString;
  }
  
  protected boolean b()
  {
    if (b > 0) {}
    for (boolean bool = true;; bool = false)
    {
      if (!bool) {
        a.d(String.format("because uploadMaxNum is %s Less than or equal 0, all freq control function is closed.", new Object[] { Integer.valueOf(b) }));
      }
      return bool;
    }
  }
}
