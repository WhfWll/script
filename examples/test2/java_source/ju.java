import java.util.Vector;

public final class ju
  implements Runnable
{
  private static int jdField_a_of_type_Int = 10;
  private Object jdField_a_of_type_JavaLangObject = new Object();
  private Thread jdField_a_of_type_JavaLangThread;
  private Vector jdField_a_of_type_JavaUtilVector;
  private ji jdField_a_of_type_Ji;
  private js jdField_a_of_type_Js;
  private kk jdField_a_of_type_Kk;
  private boolean jdField_a_of_type_Boolean = false;
  private Object jdField_b_of_type_JavaLangObject = new Object();
  private Vector jdField_b_of_type_JavaUtilVector;
  private boolean jdField_b_of_type_Boolean = false;
  private Object jdField_c_of_type_JavaLangObject = new Object();
  private boolean jdField_c_of_type_Boolean = false;
  
  ju(kk paramKk, js paramJs)
  {
    jdField_a_of_type_Kk = paramKk;
    jdField_a_of_type_Js = paramJs;
    jdField_a_of_type_JavaUtilVector = new Vector(jdField_a_of_type_Int);
    jdField_b_of_type_JavaUtilVector = new Vector(jdField_a_of_type_Int);
  }
  
  protected final Thread a()
  {
    return jdField_a_of_type_JavaLangThread;
  }
  
  public final void a()
  {
    if (!jdField_a_of_type_Boolean)
    {
      jdField_a_of_type_Boolean = true;
      jdField_b_of_type_Boolean = false;
      jdField_a_of_type_JavaLangThread = new Thread(this, "MQTT Client Callback");
      jdField_a_of_type_JavaLangThread.start();
    }
  }
  
  public final void a(Throwable paramThrowable)
  {
    if (jdField_a_of_type_Ji != null)
    {
      jdField_a_of_type_Kk.a(708, null, paramThrowable);
      ji localJi = jdField_a_of_type_Ji;
      if (jdField_a_of_type_Dz != null) {
        jdField_a_of_type_Dz.b(paramThrowable);
      }
      if ((jdField_a_of_type_Ea.equals(ea.d)) && (jdField_a_of_type_Boolean)) {
        localJi.a(b, null);
      }
    }
  }
  
  public final void a(ji paramJi)
  {
    jdField_a_of_type_Ji = paramJi;
  }
  
  public final void a(jl paramJl)
  {
    if (jdField_a_of_type_Ji != null) {
      jdField_b_of_type_JavaUtilVector.addElement(paramJl);
    }
    synchronized (jdField_b_of_type_JavaLangObject)
    {
      if (jdField_a_of_type_Kk.a()) {
        jdField_a_of_type_Kk.a(715, new Object[] { paramJl });
      }
      jdField_b_of_type_JavaLangObject.notifyAll();
      return;
    }
  }
  
  public final void a(lc arg1)
  {
    if (jdField_a_of_type_Ji != null) {
      synchronized (jdField_c_of_type_JavaLangObject)
      {
        if (!jdField_b_of_type_Boolean)
        {
          int i = jdField_a_of_type_JavaUtilVector.size();
          int j = jdField_a_of_type_Int;
          if (i < j) {}
        }
      }
    }
    try
    {
      jdField_a_of_type_Kk.a(709);
      jdField_c_of_type_JavaLangObject.wait();
      if (!jdField_b_of_type_Boolean) {
        jdField_a_of_type_JavaUtilVector.addElement(???);
      }
      synchronized (jdField_b_of_type_JavaLangObject)
      {
        jdField_a_of_type_Kk.a(710);
        jdField_b_of_type_JavaLangObject.notifyAll();
        return;
        ??? = finally;
        throw ???;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  /* Error */
  public final void b()
    throws java.io.IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 28	ju:jdField_a_of_type_Boolean	Z
    //   4: ifeq +93 -> 97
    //   7: aload_0
    //   8: getfield 40	ju:jdField_a_of_type_Kk	Lkk;
    //   11: sipush 700
    //   14: invokevirtual 124	kk:a	(I)V
    //   17: aload_0
    //   18: iconst_0
    //   19: putfield 28	ju:jdField_a_of_type_Boolean	Z
    //   22: invokestatic 132	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   25: aload_0
    //   26: getfield 54	ju:jdField_a_of_type_JavaLangThread	Ljava/lang/Thread;
    //   29: invokevirtual 133	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   32: ifne +55 -> 87
    //   35: aload_0
    //   36: getfield 32	ju:jdField_a_of_type_JavaLangObject	Ljava/lang/Object;
    //   39: astore_1
    //   40: aload_1
    //   41: monitorenter
    //   42: aload_0
    //   43: getfield 34	ju:jdField_b_of_type_JavaLangObject	Ljava/lang/Object;
    //   46: astore_2
    //   47: aload_2
    //   48: monitorenter
    //   49: aload_0
    //   50: getfield 40	ju:jdField_a_of_type_Kk	Lkk;
    //   53: sipush 701
    //   56: invokevirtual 124	kk:a	(I)V
    //   59: aload_0
    //   60: getfield 34	ju:jdField_b_of_type_JavaLangObject	Ljava/lang/Object;
    //   63: invokevirtual 115	java/lang/Object:notifyAll	()V
    //   66: aload_2
    //   67: monitorexit
    //   68: aload_0
    //   69: getfield 40	ju:jdField_a_of_type_Kk	Lkk;
    //   72: sipush 702
    //   75: invokevirtual 124	kk:a	(I)V
    //   78: aload_0
    //   79: getfield 32	ju:jdField_a_of_type_JavaLangObject	Ljava/lang/Object;
    //   82: invokevirtual 127	java/lang/Object:wait	()V
    //   85: aload_1
    //   86: monitorexit
    //   87: aload_0
    //   88: getfield 40	ju:jdField_a_of_type_Kk	Lkk;
    //   91: sipush 703
    //   94: invokevirtual 124	kk:a	(I)V
    //   97: return
    //   98: astore_3
    //   99: aload_2
    //   100: monitorexit
    //   101: aload_3
    //   102: athrow
    //   103: astore_2
    //   104: aload_1
    //   105: monitorexit
    //   106: aload_2
    //   107: athrow
    //   108: astore_1
    //   109: goto -22 -> 87
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	ju
    //   108	1	1	localInterruptedException	InterruptedException
    //   103	4	2	localObject3	Object
    //   98	4	3	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   49	68	98	finally
    //   42	49	103	finally
    //   68	87	103	finally
    //   99	103	103	finally
    //   35	42	108	java/lang/InterruptedException
    //   104	108	108	java/lang/InterruptedException
  }
  
  public final void c()
  {
    jdField_b_of_type_Boolean = true;
    synchronized (jdField_c_of_type_JavaLangObject)
    {
      jdField_a_of_type_Kk.a(711);
      jdField_c_of_type_JavaLangObject.notifyAll();
      synchronized (jdField_c_of_type_JavaLangObject)
      {
        boolean bool = jdField_c_of_type_Boolean;
        if (!bool) {}
      }
    }
    try
    {
      jdField_a_of_type_Kk.a(712);
      jdField_c_of_type_JavaLangObject.wait();
      return;
      localObject2 = finally;
      throw localObject2;
      localObject3 = finally;
      throw localObject3;
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
    //   0: aload_0
    //   1: getfield 28	ju:jdField_a_of_type_Boolean	Z
    //   4: ifeq +534 -> 538
    //   7: aload_0
    //   8: getfield 34	ju:jdField_b_of_type_JavaLangObject	Ljava/lang/Object;
    //   11: astore_1
    //   12: aload_1
    //   13: monitorenter
    //   14: aload_0
    //   15: getfield 49	ju:jdField_a_of_type_JavaUtilVector	Ljava/util/Vector;
    //   18: invokevirtual 140	java/util/Vector:isEmpty	()Z
    //   21: ifeq +30 -> 51
    //   24: aload_0
    //   25: getfield 51	ju:jdField_b_of_type_JavaUtilVector	Ljava/util/Vector;
    //   28: invokevirtual 140	java/util/Vector:isEmpty	()Z
    //   31: ifeq +20 -> 51
    //   34: aload_0
    //   35: getfield 40	ju:jdField_a_of_type_Kk	Lkk;
    //   38: sipush 704
    //   41: invokevirtual 124	kk:a	(I)V
    //   44: aload_0
    //   45: getfield 34	ju:jdField_b_of_type_JavaLangObject	Ljava/lang/Object;
    //   48: invokevirtual 127	java/lang/Object:wait	()V
    //   51: aload_1
    //   52: monitorexit
    //   53: aload_0
    //   54: getfield 28	ju:jdField_a_of_type_Boolean	Z
    //   57: ifeq +97 -> 154
    //   60: aload_0
    //   61: getfield 51	ju:jdField_b_of_type_JavaUtilVector	Ljava/util/Vector;
    //   64: invokevirtual 140	java/util/Vector:isEmpty	()Z
    //   67: ifne +63 -> 130
    //   70: aload_0
    //   71: getfield 67	ju:jdField_a_of_type_Ji	Lji;
    //   74: ifnull +56 -> 130
    //   77: aload_0
    //   78: getfield 51	ju:jdField_b_of_type_JavaUtilVector	Ljava/util/Vector;
    //   81: iconst_0
    //   82: invokevirtual 144	java/util/Vector:elementAt	(I)Ljava/lang/Object;
    //   85: checkcast 146	jl
    //   88: astore_1
    //   89: aload_0
    //   90: getfield 51	ju:jdField_b_of_type_JavaUtilVector	Ljava/util/Vector;
    //   93: iconst_0
    //   94: invokevirtual 149	java/util/Vector:removeElementAt	(I)V
    //   97: aload_0
    //   98: getfield 40	ju:jdField_a_of_type_Kk	Lkk;
    //   101: invokevirtual 109	kk:a	()Z
    //   104: ifeq +21 -> 125
    //   107: aload_0
    //   108: getfield 40	ju:jdField_a_of_type_Kk	Lkk;
    //   111: sipush 705
    //   114: iconst_1
    //   115: anewarray 4	java/lang/Object
    //   118: dup
    //   119: iconst_0
    //   120: aload_1
    //   121: aastore
    //   122: invokevirtual 112	kk:a	(I[Ljava/lang/Object;)V
    //   125: aload_0
    //   126: getfield 67	ju:jdField_a_of_type_Ji	Lji;
    //   129: astore_1
    //   130: aload_0
    //   131: getfield 49	ju:jdField_a_of_type_JavaUtilVector	Ljava/util/Vector;
    //   134: invokevirtual 140	java/util/Vector:isEmpty	()Z
    //   137: ifne +17 -> 154
    //   140: aload_0
    //   141: getfield 30	ju:jdField_b_of_type_Boolean	Z
    //   144: ifeq +53 -> 197
    //   147: aload_0
    //   148: getfield 49	ju:jdField_a_of_type_JavaUtilVector	Ljava/util/Vector;
    //   151: invokevirtual 152	java/util/Vector:clear	()V
    //   154: aload_0
    //   155: getfield 36	ju:jdField_c_of_type_JavaLangObject	Ljava/lang/Object;
    //   158: astore_1
    //   159: aload_1
    //   160: monitorenter
    //   161: aload_0
    //   162: getfield 40	ju:jdField_a_of_type_Kk	Lkk;
    //   165: sipush 706
    //   168: invokevirtual 124	kk:a	(I)V
    //   171: aload_0
    //   172: getfield 36	ju:jdField_c_of_type_JavaLangObject	Ljava/lang/Object;
    //   175: invokevirtual 115	java/lang/Object:notifyAll	()V
    //   178: aload_1
    //   179: monitorexit
    //   180: goto -180 -> 0
    //   183: astore_2
    //   184: aload_1
    //   185: monitorexit
    //   186: aload_2
    //   187: athrow
    //   188: astore_2
    //   189: aload_1
    //   190: monitorexit
    //   191: aload_2
    //   192: athrow
    //   193: astore_1
    //   194: goto -141 -> 53
    //   197: aload_0
    //   198: getfield 42	ju:jdField_a_of_type_Js	Ljs;
    //   201: getfield 155	js:jdField_a_of_type_Boolean	Z
    //   204: ifeq -50 -> 154
    //   207: aload_0
    //   208: iconst_1
    //   209: putfield 38	ju:jdField_c_of_type_Boolean	Z
    //   212: aload_0
    //   213: getfield 49	ju:jdField_a_of_type_JavaUtilVector	Ljava/util/Vector;
    //   216: iconst_0
    //   217: invokevirtual 144	java/util/Vector:elementAt	(I)Ljava/lang/Object;
    //   220: checkcast 157	lc
    //   223: astore_2
    //   224: aload_0
    //   225: getfield 49	ju:jdField_a_of_type_JavaUtilVector	Ljava/util/Vector;
    //   228: iconst_0
    //   229: invokevirtual 149	java/util/Vector:removeElementAt	(I)V
    //   232: aload_0
    //   233: getfield 42	ju:jdField_a_of_type_Js	Ljs;
    //   236: getfield 155	js:jdField_a_of_type_Boolean	Z
    //   239: ifeq +152 -> 391
    //   242: aload_0
    //   243: getfield 67	ju:jdField_a_of_type_Ji	Lji;
    //   246: ifnull +145 -> 391
    //   249: aload_2
    //   250: getfield 159	lc:jdField_a_of_type_JavaLangString	Ljava/lang/String;
    //   253: astore_1
    //   254: aload_1
    //   255: ifnull +322 -> 577
    //   258: aload_0
    //   259: getfield 42	ju:jdField_a_of_type_Js	Ljs;
    //   262: getfield 162	js:jdField_a_of_type_Jy	Ljy;
    //   265: aload_1
    //   266: invokevirtual 167	jy:a	(Ljava/lang/String;)Ljr;
    //   269: astore_1
    //   270: aload_0
    //   271: getfield 40	ju:jdField_a_of_type_Kk	Lkk;
    //   274: invokevirtual 109	kk:a	()Z
    //   277: ifeq +38 -> 315
    //   280: aload_0
    //   281: getfield 40	ju:jdField_a_of_type_Kk	Lkk;
    //   284: sipush 713
    //   287: iconst_2
    //   288: anewarray 4	java/lang/Object
    //   291: dup
    //   292: iconst_0
    //   293: aload_1
    //   294: getfield 170	jr:jdField_a_of_type_JavaLangString	Ljava/lang/String;
    //   297: aastore
    //   298: dup
    //   299: iconst_1
    //   300: new 172	java/lang/Integer
    //   303: dup
    //   304: aload_2
    //   305: invokevirtual 174	lc:c	()I
    //   308: invokespecial 175	java/lang/Integer:<init>	(I)V
    //   311: aastore
    //   312: invokevirtual 112	kk:a	(I[Ljava/lang/Object;)V
    //   315: aload_0
    //   316: getfield 67	ju:jdField_a_of_type_Ji	Lji;
    //   319: astore 4
    //   321: aload_2
    //   322: getfield 178	lc:jdField_a_of_type_Jn	Ljn;
    //   325: astore_3
    //   326: aload 4
    //   328: getfield 77	ji:jdField_a_of_type_Dz	Ldz;
    //   331: ifnull +33 -> 364
    //   334: aload 4
    //   336: getfield 77	ji:jdField_a_of_type_Dz	Ldz;
    //   339: astore 4
    //   341: aload_1
    //   342: getfield 170	jr:jdField_a_of_type_JavaLangString	Ljava/lang/String;
    //   345: astore_1
    //   346: aload 4
    //   348: new 180	java/lang/String
    //   351: dup
    //   352: aload_3
    //   353: getfield 185	jn:jdField_a_of_type_ArrayOfByte	[B
    //   356: invokespecial 188	java/lang/String:<init>	([B)V
    //   359: invokeinterface 191 2 0
    //   364: aload_2
    //   365: getfield 178	lc:jdField_a_of_type_Jn	Ljn;
    //   368: getfield 192	jn:jdField_a_of_type_Int	I
    //   371: iconst_1
    //   372: if_icmpne +27 -> 399
    //   375: aload_0
    //   376: getfield 42	ju:jdField_a_of_type_Js	Ljs;
    //   379: new 194	ky
    //   382: dup
    //   383: aload_2
    //   384: invokespecial 196	ky:<init>	(Llc;)V
    //   387: invokevirtual 199	js:a	(Lli;)Ljl;
    //   390: pop
    //   391: aload_0
    //   392: iconst_0
    //   393: putfield 38	ju:jdField_c_of_type_Boolean	Z
    //   396: goto -242 -> 154
    //   399: aload_2
    //   400: getfield 178	lc:jdField_a_of_type_Jn	Ljn;
    //   403: getfield 192	jn:jdField_a_of_type_Int	I
    //   406: iconst_2
    //   407: if_icmpne -16 -> 391
    //   410: aload_0
    //   411: getfield 42	ju:jdField_a_of_type_Js	Ljs;
    //   414: getfield 202	js:jdField_a_of_type_Jt	Ljt;
    //   417: astore_1
    //   418: aload_1
    //   419: getfield 205	jt:jdField_a_of_type_Kk	Lkk;
    //   422: invokevirtual 109	kk:a	()Z
    //   425: ifeq +31 -> 456
    //   428: aload_1
    //   429: getfield 205	jt:jdField_a_of_type_Kk	Lkk;
    //   432: sipush 641
    //   435: iconst_1
    //   436: anewarray 4	java/lang/Object
    //   439: dup
    //   440: iconst_0
    //   441: new 172	java/lang/Integer
    //   444: dup
    //   445: aload_2
    //   446: invokevirtual 174	lc:c	()I
    //   449: invokespecial 175	java/lang/Integer:<init>	(I)V
    //   452: aastore
    //   453: invokevirtual 112	kk:a	(I[Ljava/lang/Object;)V
    //   456: aload_1
    //   457: getfield 208	jt:jdField_a_of_type_Jj	Ljj;
    //   460: aload_2
    //   461: invokestatic 211	jt:b	(Lli;)Ljava/lang/String;
    //   464: invokevirtual 214	jj:a	(Ljava/lang/String;)V
    //   467: aload_1
    //   468: getfield 217	jt:c	Ljava/util/Hashtable;
    //   471: new 172	java/lang/Integer
    //   474: dup
    //   475: aload_2
    //   476: invokevirtual 174	lc:c	()I
    //   479: invokespecial 175	java/lang/Integer:<init>	(I)V
    //   482: invokevirtual 223	java/util/Hashtable:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   485: pop
    //   486: new 225	kz
    //   489: dup
    //   490: aload_2
    //   491: invokespecial 226	kz:<init>	(Llc;)V
    //   494: astore_1
    //   495: aload_0
    //   496: getfield 42	ju:jdField_a_of_type_Js	Ljs;
    //   499: aload_1
    //   500: invokevirtual 199	js:a	(Lli;)Ljl;
    //   503: pop
    //   504: goto -113 -> 391
    //   507: astore_1
    //   508: aload_0
    //   509: getfield 40	ju:jdField_a_of_type_Kk	Lkk;
    //   512: sipush 714
    //   515: aconst_null
    //   516: aload_1
    //   517: invokevirtual 72	kk:a	(I[Ljava/lang/Object;Ljava/lang/Throwable;)V
    //   520: aload_0
    //   521: getfield 42	ju:jdField_a_of_type_Js	Ljs;
    //   524: new 228	jm
    //   527: dup
    //   528: aload_1
    //   529: invokespecial 230	jm:<init>	(Ljava/lang/Throwable;)V
    //   532: invokevirtual 233	js:a	(Ljm;)V
    //   535: goto -144 -> 391
    //   538: aload_0
    //   539: getfield 49	ju:jdField_a_of_type_JavaUtilVector	Ljava/util/Vector;
    //   542: invokevirtual 152	java/util/Vector:clear	()V
    //   545: aload_0
    //   546: getfield 32	ju:jdField_a_of_type_JavaLangObject	Ljava/lang/Object;
    //   549: astore_1
    //   550: aload_1
    //   551: monitorenter
    //   552: aload_0
    //   553: getfield 40	ju:jdField_a_of_type_Kk	Lkk;
    //   556: sipush 707
    //   559: invokevirtual 124	kk:a	(I)V
    //   562: aload_0
    //   563: getfield 32	ju:jdField_a_of_type_JavaLangObject	Ljava/lang/Object;
    //   566: invokevirtual 115	java/lang/Object:notifyAll	()V
    //   569: aload_1
    //   570: monitorexit
    //   571: return
    //   572: astore_2
    //   573: aload_1
    //   574: monitorexit
    //   575: aload_2
    //   576: athrow
    //   577: aconst_null
    //   578: astore_1
    //   579: goto -309 -> 270
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	582	0	this	ju
    //   193	1	1	localInterruptedException	InterruptedException
    //   253	247	1	localObject2	Object
    //   507	22	1	localException	Exception
    //   183	4	2	localObject4	Object
    //   188	4	2	localObject5	Object
    //   223	268	2	localLc	lc
    //   572	4	2	localObject6	Object
    //   325	28	3	localJn	jn
    //   319	28	4	localObject7	Object
    // Exception table:
    //   from	to	target	type
    //   161	180	183	finally
    //   14	51	188	finally
    //   51	53	188	finally
    //   7	14	193	java/lang/InterruptedException
    //   189	193	193	java/lang/InterruptedException
    //   249	254	507	java/lang/Exception
    //   258	270	507	java/lang/Exception
    //   270	315	507	java/lang/Exception
    //   315	364	507	java/lang/Exception
    //   364	391	507	java/lang/Exception
    //   399	456	507	java/lang/Exception
    //   456	504	507	java/lang/Exception
    //   552	571	572	finally
  }
}
