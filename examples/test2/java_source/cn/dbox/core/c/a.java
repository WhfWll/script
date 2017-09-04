package cn.dbox.core.c;

import android.content.Context;
import cn.dbox.core.h.d;
import cn.dbox.core.h.e;
import cn.dbox.core.h.f;
import java.util.HashMap;

public class a
{
  public static boolean a = false;
  private static d b = new d(a.class.getSimpleName());
  private static boolean c = false;
  private c d;
  private cn.dbox.core.c e;
  private Context f;
  
  public a(cn.dbox.core.c paramC)
  {
    e = paramC;
    f = paramC.f();
  }
  
  private String b()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("sdk", String.valueOf(31));
    localHashMap.put("rt", String.valueOf(1));
    localHashMap.put("ts", String.valueOf(System.currentTimeMillis()));
    localHashMap.put("ua", e.f(f));
    localHashMap.put("ipb", e.a());
    localHashMap.put("ppid", e.b());
    localHashMap.put("v", String.format("%s-%s-%s", new Object[] { "20140918", "android", "20140711" }));
    localHashMap.put("sv", "000900");
    return f.a(localHashMap);
  }
  
  /* Error */
  public void a()
    throws cn.dbox.core.e.a
  {
    // Byte code:
    //   0: getstatic 33	cn/dbox/core/c/a:c	Z
    //   3: ifeq +11 -> 14
    //   6: new 116	cn/dbox/core/e/a
    //   9: dup
    //   10: invokespecial 119	cn/dbox/core/e/a:<init>	()V
    //   13: athrow
    //   14: iconst_1
    //   15: putstatic 33	cn/dbox/core/c/a:c	Z
    //   18: aload_0
    //   19: invokespecial 120	cn/dbox/core/c/a:b	()Ljava/lang/String;
    //   22: astore_1
    //   23: getstatic 31	cn/dbox/core/c/a:b	Lcn/dbox/core/h/d;
    //   26: new 122	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 123	java/lang/StringBuilder:<init>	()V
    //   33: ldc 125
    //   35: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: aload_1
    //   39: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 132	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: invokevirtual 134	cn/dbox/core/h/d:b	(Ljava/lang/String;)V
    //   48: aload_0
    //   49: new 136	cn/dbox/core/c/c
    //   52: dup
    //   53: aload_0
    //   54: getfield 48	cn/dbox/core/c/a:f	Landroid/content/Context;
    //   57: aload_0
    //   58: getfield 41	cn/dbox/core/c/a:e	Lcn/dbox/core/c;
    //   61: invokevirtual 139	cn/dbox/core/c:i	()Ljava/lang/String;
    //   64: ldc -115
    //   66: aconst_null
    //   67: ldc -113
    //   69: aload_1
    //   70: sipush 20000
    //   73: aconst_null
    //   74: invokespecial 146	cn/dbox/core/c/c:<init>	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/dbox/core/c/c$a;)V
    //   77: putfield 148	cn/dbox/core/c/a:d	Lcn/dbox/core/c/c;
    //   80: aload_0
    //   81: getfield 148	cn/dbox/core/c/a:d	Lcn/dbox/core/c/c;
    //   84: invokevirtual 150	cn/dbox/core/c/c:c	()V
    //   87: aload_0
    //   88: getfield 148	cn/dbox/core/c/a:d	Lcn/dbox/core/c/c;
    //   91: invokevirtual 152	cn/dbox/core/c/c:e	()Ljava/lang/String;
    //   94: astore_1
    //   95: getstatic 31	cn/dbox/core/c/a:b	Lcn/dbox/core/h/d;
    //   98: new 122	java/lang/StringBuilder
    //   101: dup
    //   102: invokespecial 123	java/lang/StringBuilder:<init>	()V
    //   105: ldc -102
    //   107: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: aload_1
    //   111: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: invokevirtual 132	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   117: invokevirtual 134	cn/dbox/core/h/d:b	(Ljava/lang/String;)V
    //   120: aload_1
    //   121: ifnull +39 -> 160
    //   124: new 156	cn/dbox/core/c/b
    //   127: dup
    //   128: aload_1
    //   129: invokespecial 157	cn/dbox/core/c/b:<init>	(Ljava/lang/String;)V
    //   132: astore_1
    //   133: aload_1
    //   134: invokevirtual 160	cn/dbox/core/c/b:a	()Ljava/util/ArrayList;
    //   137: invokestatic 163	cn/dbox/core/h/e:a	(Ljava/util/ArrayList;)V
    //   140: aload_0
    //   141: getfield 41	cn/dbox/core/c/a:e	Lcn/dbox/core/c;
    //   144: aload_1
    //   145: invokevirtual 166	cn/dbox/core/c/b:b	()Lcn/dbox/core/c/b$a;
    //   148: invokevirtual 169	cn/dbox/core/c:a	(Lcn/dbox/core/c/b$a;)V
    //   151: iconst_1
    //   152: putstatic 35	cn/dbox/core/c/a:a	Z
    //   155: iconst_0
    //   156: putstatic 33	cn/dbox/core/c/a:c	Z
    //   159: return
    //   160: getstatic 31	cn/dbox/core/c/a:b	Lcn/dbox/core/h/d;
    //   163: ldc -85
    //   165: invokevirtual 173	cn/dbox/core/h/d:e	(Ljava/lang/String;)V
    //   168: goto -13 -> 155
    //   171: astore_1
    //   172: getstatic 31	cn/dbox/core/c/a:b	Lcn/dbox/core/h/d;
    //   175: aload_1
    //   176: invokevirtual 176	cn/dbox/core/h/d:a	(Ljava/lang/Throwable;)V
    //   179: iconst_0
    //   180: putstatic 33	cn/dbox/core/c/a:c	Z
    //   183: return
    //   184: astore_1
    //   185: iconst_0
    //   186: putstatic 33	cn/dbox/core/c/a:c	Z
    //   189: aload_1
    //   190: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	191	0	this	a
    //   22	123	1	localObject1	Object
    //   171	5	1	localException	Exception
    //   184	6	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   18	120	171	java/lang/Exception
    //   124	155	171	java/lang/Exception
    //   160	168	171	java/lang/Exception
    //   18	120	184	finally
    //   124	155	184	finally
    //   160	168	184	finally
    //   172	179	184	finally
  }
}
