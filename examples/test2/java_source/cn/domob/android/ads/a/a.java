package cn.domob.android.ads.a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import cn.domob.android.i.f;

class a
{
  private static final String e = "url";
  private static final String f = "failsafe";
  private static final String g = "pkg";
  private static final String h = "activity";
  private static final String i = "param";
  f a = new f(a.class.getSimpleName());
  private Context b;
  private Uri c;
  private a d;
  
  a(Context paramContext, Uri paramUri, a paramA)
  {
    b = paramContext;
    c = paramUri;
    d = paramA;
  }
  
  /* Error */
  private Intent a(Uri paramUri)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 11
    //   3: invokevirtual 64	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   6: astore 7
    //   8: aload_1
    //   9: ldc 17
    //   11: invokevirtual 64	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   14: astore 4
    //   16: aload_1
    //   17: ldc 20
    //   19: invokevirtual 64	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   22: astore 6
    //   24: aload_1
    //   25: ldc 23
    //   27: invokevirtual 64	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   30: astore 5
    //   32: aload 7
    //   34: ifnull +147 -> 181
    //   37: new 66	android/content/Intent
    //   40: dup
    //   41: ldc 68
    //   43: aload 7
    //   45: invokestatic 72	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   48: invokespecial 75	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   51: astore_1
    //   52: aload_1
    //   53: ldc 76
    //   55: invokevirtual 80	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   58: pop
    //   59: aload_1
    //   60: ifnull +253 -> 313
    //   63: aload 5
    //   65: ifnull +248 -> 313
    //   68: aload 5
    //   70: ldc 82
    //   72: invokevirtual 88	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   75: ifne +238 -> 313
    //   78: aload_0
    //   79: getfield 48	cn/domob/android/ads/a/a:a	Lcn/domob/android/i/f;
    //   82: new 90	java/lang/StringBuilder
    //   85: dup
    //   86: invokespecial 91	java/lang/StringBuilder:<init>	()V
    //   89: ldc 93
    //   91: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: aload 5
    //   96: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: invokevirtual 102	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   105: aload 5
    //   107: ldc 104
    //   109: invokevirtual 108	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   112: astore 4
    //   114: aload 4
    //   116: arraylength
    //   117: istore_3
    //   118: iconst_0
    //   119: istore_2
    //   120: iload_2
    //   121: iload_3
    //   122: if_icmpge +191 -> 313
    //   125: aload 4
    //   127: iload_2
    //   128: aaload
    //   129: ldc 110
    //   131: invokevirtual 108	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   134: astore 5
    //   136: aload_1
    //   137: aload 5
    //   139: iconst_0
    //   140: aaload
    //   141: aload 5
    //   143: iconst_1
    //   144: aaload
    //   145: invokevirtual 114	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   148: pop
    //   149: iload_2
    //   150: iconst_1
    //   151: iadd
    //   152: istore_2
    //   153: goto -33 -> 120
    //   156: astore 4
    //   158: aconst_null
    //   159: astore_1
    //   160: aload_0
    //   161: getfield 48	cn/domob/android/ads/a/a:a	Lcn/domob/android/i/f;
    //   164: ldc 116
    //   166: invokevirtual 118	cn/domob/android/i/f:e	(Ljava/lang/String;)V
    //   169: aload_0
    //   170: getfield 48	cn/domob/android/ads/a/a:a	Lcn/domob/android/i/f;
    //   173: aload 4
    //   175: invokevirtual 121	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   178: goto -119 -> 59
    //   181: aload 4
    //   183: ifnull +116 -> 299
    //   186: aload 4
    //   188: ldc 82
    //   190: invokevirtual 88	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   193: ifne +106 -> 299
    //   196: aload 6
    //   198: ifnull +56 -> 254
    //   201: aload 6
    //   203: ldc 82
    //   205: invokevirtual 88	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   208: ifne +46 -> 254
    //   211: aload_0
    //   212: getfield 48	cn/domob/android/ads/a/a:a	Lcn/domob/android/i/f;
    //   215: ldc 123
    //   217: invokevirtual 102	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   220: new 66	android/content/Intent
    //   223: dup
    //   224: invokespecial 124	android/content/Intent:<init>	()V
    //   227: astore_1
    //   228: aload_1
    //   229: new 126	android/content/ComponentName
    //   232: dup
    //   233: aload 4
    //   235: aload 6
    //   237: invokespecial 129	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   240: invokevirtual 133	android/content/Intent:setComponent	(Landroid/content/ComponentName;)Landroid/content/Intent;
    //   243: pop
    //   244: aload_1
    //   245: ldc 76
    //   247: invokevirtual 136	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   250: pop
    //   251: goto -192 -> 59
    //   254: aload_0
    //   255: getfield 48	cn/domob/android/ads/a/a:a	Lcn/domob/android/i/f;
    //   258: ldc -118
    //   260: invokevirtual 102	cn/domob/android/i/f:a	(Ljava/lang/String;)V
    //   263: aload_0
    //   264: getfield 50	cn/domob/android/ads/a/a:b	Landroid/content/Context;
    //   267: invokevirtual 144	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   270: aload 4
    //   272: invokevirtual 150	android/content/pm/PackageManager:getLaunchIntentForPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   275: astore 4
    //   277: aload 4
    //   279: astore_1
    //   280: aload 4
    //   282: ifnull -223 -> 59
    //   285: aload 4
    //   287: ldc 76
    //   289: invokevirtual 136	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   292: pop
    //   293: aload 4
    //   295: astore_1
    //   296: goto -237 -> 59
    //   299: aload_0
    //   300: getfield 48	cn/domob/android/ads/a/a:a	Lcn/domob/android/i/f;
    //   303: ldc -104
    //   305: invokevirtual 118	cn/domob/android/i/f:e	(Ljava/lang/String;)V
    //   308: aconst_null
    //   309: astore_1
    //   310: goto -251 -> 59
    //   313: aload_1
    //   314: areturn
    //   315: astore 4
    //   317: goto -157 -> 160
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	320	0	this	a
    //   0	320	1	paramUri	Uri
    //   119	34	2	j	int
    //   117	6	3	k	int
    //   14	112	4	localObject1	Object
    //   156	115	4	localException1	Exception
    //   275	19	4	localIntent	Intent
    //   315	1	4	localException2	Exception
    //   30	112	5	localObject2	Object
    //   22	214	6	str1	String
    //   6	38	7	str2	String
    // Exception table:
    //   from	to	target	type
    //   37	52	156	java/lang/Exception
    //   52	59	315	java/lang/Exception
  }
  
  protected void a()
  {
    Intent localIntent = a(c);
    String str;
    if (localIntent == null) {
      try
      {
        throw new Exception("Action intent is null.");
      }
      catch (Exception localException1)
      {
        a.e("Failed to launch app with URL:" + c.toString());
        a.a(localException1);
        if (d != null) {
          d.b_();
        }
        str = c.getQueryParameter("failsafe");
        if (str == null) {}
      }
    }
    for (;;)
    {
      try
      {
        a.a("Backup action ----- Open landing page with URL:" + str);
        if (d != null) {
          d.a_(str);
        }
        return;
      }
      catch (Exception localException2)
      {
        a.e("Invalid failsafe URL.");
        a.a(localException2);
      }
      b.startActivity(str);
      if (d != null)
      {
        d.a_();
        return;
      }
    }
  }
  
  static abstract interface a
  {
    public abstract void a_();
    
    public abstract void a_(String paramString);
    
    public abstract void b_();
  }
}
