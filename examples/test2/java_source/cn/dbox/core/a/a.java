package cn.dbox.core.a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import cn.dbox.core.h.d;

public class a
{
  private static final String f = "url";
  private static final String g = "failsafe";
  private static final String h = "pkg";
  private static final String i = "activity";
  private static final String j = "param";
  d a = new d(a.class.getSimpleName());
  cn.dbox.core.bean.a b;
  private Context c;
  private Uri d;
  private a e;
  
  public a(Context paramContext, Uri paramUri, a paramA, cn.dbox.core.bean.a paramA1)
  {
    c = paramContext;
    d = paramUri;
    e = paramA;
    b = paramA1;
  }
  
  /* Error */
  private Intent a(Uri paramUri)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 11
    //   3: invokevirtual 68	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   6: astore 7
    //   8: aload_1
    //   9: ldc 17
    //   11: invokevirtual 68	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   14: astore 4
    //   16: aload_1
    //   17: ldc 20
    //   19: invokevirtual 68	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   22: astore 6
    //   24: aload_1
    //   25: ldc 23
    //   27: invokevirtual 68	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   30: astore 5
    //   32: aload_0
    //   33: getfield 50	cn/dbox/core/a/a:a	Lcn/dbox/core/h/d;
    //   36: ldc 70
    //   38: iconst_4
    //   39: anewarray 4	java/lang/Object
    //   42: dup
    //   43: iconst_0
    //   44: aload 7
    //   46: aastore
    //   47: dup
    //   48: iconst_1
    //   49: aload 4
    //   51: aastore
    //   52: dup
    //   53: iconst_2
    //   54: aload 6
    //   56: aastore
    //   57: dup
    //   58: iconst_3
    //   59: aload 5
    //   61: aastore
    //   62: invokestatic 76	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   65: invokevirtual 78	cn/dbox/core/h/d:b	(Ljava/lang/String;)V
    //   68: aload 7
    //   70: ifnull +147 -> 217
    //   73: new 80	android/content/Intent
    //   76: dup
    //   77: ldc 82
    //   79: aload 7
    //   81: invokestatic 86	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   84: invokespecial 89	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   87: astore_1
    //   88: aload_1
    //   89: ldc 90
    //   91: invokevirtual 94	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   94: pop
    //   95: aload_1
    //   96: ifnull +282 -> 378
    //   99: aload 5
    //   101: ifnull +277 -> 378
    //   104: aload 5
    //   106: ldc 96
    //   108: invokevirtual 100	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   111: ifne +267 -> 378
    //   114: aload_0
    //   115: getfield 50	cn/dbox/core/a/a:a	Lcn/dbox/core/h/d;
    //   118: new 102	java/lang/StringBuilder
    //   121: dup
    //   122: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   125: ldc 105
    //   127: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: aload 5
    //   132: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   138: invokevirtual 78	cn/dbox/core/h/d:b	(Ljava/lang/String;)V
    //   141: aload 5
    //   143: ldc 114
    //   145: invokevirtual 118	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   148: astore 4
    //   150: aload 4
    //   152: arraylength
    //   153: istore_3
    //   154: iconst_0
    //   155: istore_2
    //   156: iload_2
    //   157: iload_3
    //   158: if_icmpge +220 -> 378
    //   161: aload 4
    //   163: iload_2
    //   164: aaload
    //   165: ldc 120
    //   167: invokevirtual 118	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   170: astore 5
    //   172: aload_1
    //   173: aload 5
    //   175: iconst_0
    //   176: aaload
    //   177: aload 5
    //   179: iconst_1
    //   180: aaload
    //   181: invokevirtual 124	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   184: pop
    //   185: iload_2
    //   186: iconst_1
    //   187: iadd
    //   188: istore_2
    //   189: goto -33 -> 156
    //   192: astore 4
    //   194: aconst_null
    //   195: astore_1
    //   196: aload_0
    //   197: getfield 50	cn/dbox/core/a/a:a	Lcn/dbox/core/h/d;
    //   200: ldc 126
    //   202: invokevirtual 128	cn/dbox/core/h/d:e	(Ljava/lang/String;)V
    //   205: aload_0
    //   206: getfield 50	cn/dbox/core/a/a:a	Lcn/dbox/core/h/d;
    //   209: aload 4
    //   211: invokevirtual 131	cn/dbox/core/h/d:a	(Ljava/lang/Throwable;)V
    //   214: goto -119 -> 95
    //   217: aload 4
    //   219: ifnull +145 -> 364
    //   222: aload 4
    //   224: ldc 96
    //   226: invokevirtual 100	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   229: ifne +135 -> 364
    //   232: aload 6
    //   234: ifnull +73 -> 307
    //   237: aload 6
    //   239: ldc 96
    //   241: invokevirtual 100	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   244: ifne +63 -> 307
    //   247: aload_0
    //   248: getfield 50	cn/dbox/core/a/a:a	Lcn/dbox/core/h/d;
    //   251: ldc -123
    //   253: iconst_2
    //   254: anewarray 4	java/lang/Object
    //   257: dup
    //   258: iconst_0
    //   259: aload 4
    //   261: aastore
    //   262: dup
    //   263: iconst_1
    //   264: aload 6
    //   266: aastore
    //   267: invokestatic 76	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   270: invokevirtual 78	cn/dbox/core/h/d:b	(Ljava/lang/String;)V
    //   273: new 80	android/content/Intent
    //   276: dup
    //   277: invokespecial 134	android/content/Intent:<init>	()V
    //   280: astore_1
    //   281: aload_1
    //   282: new 136	android/content/ComponentName
    //   285: dup
    //   286: aload 4
    //   288: aload 6
    //   290: invokespecial 139	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   293: invokevirtual 143	android/content/Intent:setComponent	(Landroid/content/ComponentName;)Landroid/content/Intent;
    //   296: pop
    //   297: aload_1
    //   298: ldc 90
    //   300: invokevirtual 146	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   303: pop
    //   304: goto -209 -> 95
    //   307: aload_0
    //   308: getfield 50	cn/dbox/core/a/a:a	Lcn/dbox/core/h/d;
    //   311: ldc -108
    //   313: iconst_1
    //   314: anewarray 4	java/lang/Object
    //   317: dup
    //   318: iconst_0
    //   319: aload 4
    //   321: aastore
    //   322: invokestatic 76	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   325: invokevirtual 78	cn/dbox/core/h/d:b	(Ljava/lang/String;)V
    //   328: aload_0
    //   329: getfield 52	cn/dbox/core/a/a:c	Landroid/content/Context;
    //   332: invokevirtual 154	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   335: aload 4
    //   337: invokevirtual 160	android/content/pm/PackageManager:getLaunchIntentForPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   340: astore 4
    //   342: aload 4
    //   344: astore_1
    //   345: aload 4
    //   347: ifnull -252 -> 95
    //   350: aload 4
    //   352: ldc 90
    //   354: invokevirtual 146	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   357: pop
    //   358: aload 4
    //   360: astore_1
    //   361: goto -266 -> 95
    //   364: aload_0
    //   365: getfield 50	cn/dbox/core/a/a:a	Lcn/dbox/core/h/d;
    //   368: ldc -94
    //   370: invokevirtual 128	cn/dbox/core/h/d:e	(Ljava/lang/String;)V
    //   373: aconst_null
    //   374: astore_1
    //   375: goto -280 -> 95
    //   378: aload_1
    //   379: areturn
    //   380: astore 4
    //   382: goto -186 -> 196
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	385	0	this	a
    //   0	385	1	paramUri	Uri
    //   155	34	2	k	int
    //   153	6	3	m	int
    //   14	148	4	localObject1	Object
    //   192	144	4	localException1	Exception
    //   340	19	4	localIntent	Intent
    //   380	1	4	localException2	Exception
    //   30	148	5	localObject2	Object
    //   22	267	6	str1	String
    //   6	74	7	str2	String
    // Exception table:
    //   from	to	target	type
    //   73	88	192	java/lang/Exception
    //   88	95	380	java/lang/Exception
  }
  
  public void a()
  {
    Intent localIntent = a(d);
    String str;
    if (localIntent == null) {
      try
      {
        throw new Exception("Action intent is null.");
      }
      catch (Exception localException1)
      {
        a.e("Failed to launch app with URL:" + d.toString());
        a.a(localException1);
        str = d.getQueryParameter("failsafe");
        if (e != null) {
          e.a(str, b);
        }
        if (str == null) {}
      }
    }
    for (;;)
    {
      try
      {
        a.b("Backup action ----- Open landing page with URL:" + str);
        if (e != null) {
          e.b(str, b);
        }
        return;
      }
      catch (Exception localException2)
      {
        a.e("Invalid failsafe URL.");
        a.a(localException2);
      }
      c.startActivity(str);
      if (e != null)
      {
        e.b(b);
        return;
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString, cn.dbox.core.bean.a paramA);
    
    public abstract void b(cn.dbox.core.bean.a paramA);
    
    public abstract void b(String paramString, cn.dbox.core.bean.a paramA);
  }
}
