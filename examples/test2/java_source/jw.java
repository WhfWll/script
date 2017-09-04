import java.io.IOException;
import java.io.OutputStream;

public final class jw
  implements Runnable
{
  private Object jdField_a_of_type_JavaLangObject = new Object();
  private js jdField_a_of_type_Js = null;
  private jt jdField_a_of_type_Jt = null;
  private jx jdField_a_of_type_Jx = null;
  private kk jdField_a_of_type_Kk;
  private ku jdField_a_of_type_Ku;
  private boolean jdField_a_of_type_Boolean = false;
  
  public jw(kk paramKk, js paramJs, jt paramJt, jx paramJx, OutputStream paramOutputStream)
  {
    jdField_a_of_type_Kk = paramKk;
    jdField_a_of_type_Ku = new ku(paramOutputStream);
    jdField_a_of_type_Js = paramJs;
    jdField_a_of_type_Jt = paramJt;
    jdField_a_of_type_Jx = paramJx;
  }
  
  public final void a()
  {
    if (!jdField_a_of_type_Boolean)
    {
      jdField_a_of_type_Boolean = true;
      new Thread(this, "MQTT Client Comms Sender").start();
    }
  }
  
  public final void b()
    throws IOException
  {
    synchronized (jdField_a_of_type_JavaLangObject)
    {
      jdField_a_of_type_Kk.a(800);
      if (jdField_a_of_type_Boolean) {
        jdField_a_of_type_Boolean = false;
      }
    }
    try
    {
      jdField_a_of_type_Kk.a(801);
      jdField_a_of_type_JavaLangObject.wait();
      return;
      localObject2 = finally;
      throw localObject2;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 21	jw:jdField_a_of_type_Boolean	Z
    //   6: ifeq +356 -> 362
    //   9: aload_0
    //   10: getfield 38	jw:jdField_a_of_type_Ku	Lku;
    //   13: ifnull +349 -> 362
    //   16: aload_1
    //   17: astore_3
    //   18: aload_1
    //   19: astore 4
    //   21: aload_0
    //   22: getfield 31	jw:jdField_a_of_type_Kk	Lkk;
    //   25: sipush 802
    //   28: invokevirtual 59	kk:a	(I)V
    //   31: aload_1
    //   32: astore_3
    //   33: aload_1
    //   34: astore 4
    //   36: aload_0
    //   37: getfield 25	jw:jdField_a_of_type_Jt	Ljt;
    //   40: invokevirtual 73	jt:a	()Lli;
    //   43: astore_2
    //   44: aload_2
    //   45: ifnull +266 -> 311
    //   48: aload_2
    //   49: astore_3
    //   50: aload_2
    //   51: astore 4
    //   53: aload_2
    //   54: instanceof 75
    //   57: ifeq +126 -> 183
    //   60: aload_2
    //   61: astore_3
    //   62: aload_2
    //   63: astore 4
    //   65: aload_0
    //   66: getfield 38	jw:jdField_a_of_type_Ku	Lku;
    //   69: aload_2
    //   70: invokevirtual 78	ku:a	(Lli;)V
    //   73: aload_2
    //   74: astore_3
    //   75: aload_2
    //   76: astore 4
    //   78: aload_0
    //   79: getfield 38	jw:jdField_a_of_type_Ku	Lku;
    //   82: invokevirtual 81	ku:flush	()V
    //   85: aload_2
    //   86: astore_1
    //   87: aload_2
    //   88: astore_3
    //   89: aload_2
    //   90: astore 4
    //   92: aload_2
    //   93: instanceof 83
    //   96: ifeq -94 -> 2
    //   99: aload_2
    //   100: astore_3
    //   101: aload_2
    //   102: astore 4
    //   104: aload_0
    //   105: getfield 23	jw:jdField_a_of_type_JavaLangObject	Ljava/lang/Object;
    //   108: astore_1
    //   109: aload_2
    //   110: astore_3
    //   111: aload_2
    //   112: astore 4
    //   114: aload_1
    //   115: monitorenter
    //   116: aload_0
    //   117: getfield 31	jw:jdField_a_of_type_Kk	Lkk;
    //   120: sipush 803
    //   123: invokevirtual 59	kk:a	(I)V
    //   126: aload_0
    //   127: iconst_0
    //   128: putfield 21	jw:jdField_a_of_type_Boolean	Z
    //   131: aload_1
    //   132: monitorexit
    //   133: aload_2
    //   134: astore_1
    //   135: goto -133 -> 2
    //   138: astore 5
    //   140: aload_2
    //   141: astore_3
    //   142: aload_2
    //   143: astore 4
    //   145: aload_1
    //   146: monitorexit
    //   147: aload_2
    //   148: astore_3
    //   149: aload_2
    //   150: astore 4
    //   152: aload 5
    //   154: athrow
    //   155: astore_2
    //   156: aload_0
    //   157: getfield 23	jw:jdField_a_of_type_JavaLangObject	Ljava/lang/Object;
    //   160: astore_1
    //   161: aload_1
    //   162: monitorenter
    //   163: aload_0
    //   164: iconst_0
    //   165: putfield 21	jw:jdField_a_of_type_Boolean	Z
    //   168: aload_1
    //   169: monitorexit
    //   170: aload_0
    //   171: getfield 27	jw:jdField_a_of_type_Js	Ljs;
    //   174: aload_2
    //   175: invokevirtual 88	js:a	(Ljm;)V
    //   178: aload_3
    //   179: astore_1
    //   180: goto -178 -> 2
    //   183: aload_2
    //   184: astore_3
    //   185: aload_2
    //   186: astore 4
    //   188: aload_0
    //   189: getfield 29	jw:jdField_a_of_type_Jx	Ljx;
    //   192: aload_2
    //   193: invokevirtual 93	jx:a	(Lli;)Ljl;
    //   196: astore_1
    //   197: aload_2
    //   198: astore_3
    //   199: aload_2
    //   200: astore 4
    //   202: aload_1
    //   203: monitorenter
    //   204: aload_0
    //   205: getfield 38	jw:jdField_a_of_type_Ku	Lku;
    //   208: aload_2
    //   209: invokevirtual 78	ku:a	(Lli;)V
    //   212: aload_0
    //   213: getfield 38	jw:jdField_a_of_type_Ku	Lku;
    //   216: invokevirtual 81	ku:flush	()V
    //   219: aload_0
    //   220: getfield 25	jw:jdField_a_of_type_Jt	Ljt;
    //   223: aload_2
    //   224: invokevirtual 94	jt:a	(Lli;)V
    //   227: aload_1
    //   228: monitorexit
    //   229: goto -144 -> 85
    //   232: astore 5
    //   234: aload_2
    //   235: astore_3
    //   236: aload_2
    //   237: astore 4
    //   239: aload_1
    //   240: monitorexit
    //   241: aload_2
    //   242: astore_3
    //   243: aload_2
    //   244: astore 4
    //   246: aload 5
    //   248: athrow
    //   249: astore_1
    //   250: aload_0
    //   251: getfield 31	jw:jdField_a_of_type_Kk	Lkk;
    //   254: sipush 804
    //   257: aconst_null
    //   258: aload_1
    //   259: invokevirtual 97	kk:a	(I[Ljava/lang/Object;Ljava/lang/Throwable;)V
    //   262: aload 4
    //   264: ifnull +20 -> 284
    //   267: aload 4
    //   269: instanceof 83
    //   272: ifeq +12 -> 284
    //   275: aload_0
    //   276: getfield 25	jw:jdField_a_of_type_Jt	Ljt;
    //   279: aload 4
    //   281: invokevirtual 94	jt:a	(Lli;)V
    //   284: aload_0
    //   285: iconst_0
    //   286: putfield 21	jw:jdField_a_of_type_Boolean	Z
    //   289: aload_0
    //   290: getfield 27	jw:jdField_a_of_type_Js	Ljs;
    //   293: new 66	jm
    //   296: dup
    //   297: aload_1
    //   298: iconst_0
    //   299: invokespecial 100	jm:<init>	(Ljava/lang/Throwable;B)V
    //   302: invokevirtual 88	js:a	(Ljm;)V
    //   305: aload 4
    //   307: astore_1
    //   308: goto -306 -> 2
    //   311: aload_2
    //   312: astore_3
    //   313: aload_2
    //   314: astore 4
    //   316: aload_0
    //   317: getfield 23	jw:jdField_a_of_type_JavaLangObject	Ljava/lang/Object;
    //   320: astore_1
    //   321: aload_2
    //   322: astore_3
    //   323: aload_2
    //   324: astore 4
    //   326: aload_1
    //   327: monitorenter
    //   328: aload_0
    //   329: iconst_0
    //   330: putfield 21	jw:jdField_a_of_type_Boolean	Z
    //   333: aload_1
    //   334: monitorexit
    //   335: aload_2
    //   336: astore_1
    //   337: goto -335 -> 2
    //   340: astore 5
    //   342: aload_2
    //   343: astore_3
    //   344: aload_2
    //   345: astore 4
    //   347: aload_1
    //   348: monitorexit
    //   349: aload_2
    //   350: astore_3
    //   351: aload_2
    //   352: astore 4
    //   354: aload 5
    //   356: athrow
    //   357: astore_2
    //   358: aload_1
    //   359: monitorexit
    //   360: aload_2
    //   361: athrow
    //   362: aload_0
    //   363: getfield 23	jw:jdField_a_of_type_JavaLangObject	Ljava/lang/Object;
    //   366: astore_1
    //   367: aload_1
    //   368: monitorenter
    //   369: aload_0
    //   370: getfield 31	jw:jdField_a_of_type_Kk	Lkk;
    //   373: sipush 805
    //   376: invokevirtual 59	kk:a	(I)V
    //   379: aload_0
    //   380: getfield 23	jw:jdField_a_of_type_JavaLangObject	Ljava/lang/Object;
    //   383: invokevirtual 103	java/lang/Object:notifyAll	()V
    //   386: aload_1
    //   387: monitorexit
    //   388: return
    //   389: astore_2
    //   390: aload_1
    //   391: monitorexit
    //   392: aload_2
    //   393: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	394	0	this	jw
    //   249	49	1	localException	Exception
    //   43	107	2	localLi	li
    //   155	197	2	localJm	jm
    //   357	4	2	localObject3	Object
    //   389	4	2	localObject4	Object
    //   17	334	3	localObject5	Object
    //   19	334	4	localObject6	Object
    //   138	15	5	localObject7	Object
    //   232	15	5	localObject8	Object
    //   340	15	5	localObject9	Object
    // Exception table:
    //   from	to	target	type
    //   116	133	138	finally
    //   21	31	155	jm
    //   36	44	155	jm
    //   53	60	155	jm
    //   65	73	155	jm
    //   78	85	155	jm
    //   92	99	155	jm
    //   104	109	155	jm
    //   114	116	155	jm
    //   145	147	155	jm
    //   152	155	155	jm
    //   188	197	155	jm
    //   202	204	155	jm
    //   239	241	155	jm
    //   246	249	155	jm
    //   316	321	155	jm
    //   326	328	155	jm
    //   347	349	155	jm
    //   354	357	155	jm
    //   204	229	232	finally
    //   21	31	249	java/lang/Exception
    //   36	44	249	java/lang/Exception
    //   53	60	249	java/lang/Exception
    //   65	73	249	java/lang/Exception
    //   78	85	249	java/lang/Exception
    //   92	99	249	java/lang/Exception
    //   104	109	249	java/lang/Exception
    //   114	116	249	java/lang/Exception
    //   145	147	249	java/lang/Exception
    //   152	155	249	java/lang/Exception
    //   188	197	249	java/lang/Exception
    //   202	204	249	java/lang/Exception
    //   239	241	249	java/lang/Exception
    //   246	249	249	java/lang/Exception
    //   316	321	249	java/lang/Exception
    //   326	328	249	java/lang/Exception
    //   347	349	249	java/lang/Exception
    //   354	357	249	java/lang/Exception
    //   328	335	340	finally
    //   163	170	357	finally
    //   369	388	389	finally
  }
}
