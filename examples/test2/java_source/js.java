import java.io.IOException;
import java.util.Hashtable;

public final class js
{
  public int a;
  private Thread jdField_a_of_type_JavaLangThread = null;
  private jj jdField_a_of_type_Jj;
  jt jdField_a_of_type_Jt;
  public ju a;
  private jv jdField_a_of_type_Jv;
  private jw jdField_a_of_type_Jw;
  private jx jdField_a_of_type_Jx;
  jy jdField_a_of_type_Jy;
  public kc a;
  private kk jdField_a_of_type_Kk;
  public boolean a;
  private boolean b;
  
  public js(jy paramJy, jj paramJj, kk paramKk)
    throws jm
  {
    jdField_b_of_type_Boolean = false;
    jdField_a_of_type_Kk = paramKk;
    jdField_a_of_type_Ju = new ju(paramKk, this);
    jdField_a_of_type_Boolean = false;
    jdField_a_of_type_Jx = new jx(jdField_a_of_type_Kk);
    jdField_a_of_type_Jy = paramJy;
    jdField_a_of_type_Jt = new jt(paramKk, paramJj, jdField_a_of_type_Jx, jdField_a_of_type_Ju);
    jdField_a_of_type_Jj = paramJj;
  }
  
  /* Error */
  public final jl a(li arg1)
    throws jm
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 31	js:jdField_a_of_type_Kk	Lkk;
    //   4: invokevirtual 66	kk:a	()Z
    //   7: ifeq +27 -> 34
    //   10: aload_0
    //   11: getfield 31	js:jdField_a_of_type_Kk	Lkk;
    //   14: sipush 200
    //   17: iconst_1
    //   18: anewarray 4	java/lang/Object
    //   21: dup
    //   22: iconst_0
    //   23: aload_1
    //   24: invokevirtual 70	java/lang/Object:getClass	()Ljava/lang/Class;
    //   27: invokevirtual 76	java/lang/Class:getName	()Ljava/lang/String;
    //   30: aastore
    //   31: invokevirtual 79	kk:a	(I[Ljava/lang/Object;)V
    //   34: aload_0
    //   35: getfield 27	js:jdField_b_of_type_Boolean	Z
    //   38: ifne +317 -> 355
    //   41: aload_0
    //   42: getfield 40	js:jdField_a_of_type_Boolean	Z
    //   45: ifeq +310 -> 355
    //   48: aload_0
    //   49: getfield 56	js:jdField_a_of_type_Jt	Ljt;
    //   52: aload_1
    //   53: invokevirtual 81	jt:a	(Lli;)Ljl;
    //   56: astore_3
    //   57: aload_1
    //   58: instanceof 83
    //   61: ifeq +83 -> 144
    //   64: aload_0
    //   65: getfield 56	js:jdField_a_of_type_Jt	Ljt;
    //   68: astore 4
    //   70: aload 4
    //   72: getfield 87	jt:jdField_c_of_type_JavaLangObject	Ljava/lang/Object;
    //   75: astore_2
    //   76: aload_2
    //   77: monitorenter
    //   78: aload 4
    //   80: aload 4
    //   82: getfield 89	jt:jdField_c_of_type_Int	I
    //   85: iconst_1
    //   86: iadd
    //   87: putfield 89	jt:jdField_c_of_type_Int	I
    //   90: aload 4
    //   92: getfield 90	jt:jdField_a_of_type_Kk	Lkk;
    //   95: invokevirtual 66	kk:a	()Z
    //   98: ifeq +33 -> 131
    //   101: aload 4
    //   103: getfield 90	jt:jdField_a_of_type_Kk	Lkk;
    //   106: sipush 642
    //   109: iconst_1
    //   110: anewarray 4	java/lang/Object
    //   113: dup
    //   114: iconst_0
    //   115: new 92	java/lang/Integer
    //   118: dup
    //   119: aload 4
    //   121: getfield 89	jt:jdField_c_of_type_Int	I
    //   124: invokespecial 95	java/lang/Integer:<init>	(I)V
    //   127: aastore
    //   128: invokevirtual 79	kk:a	(I[Ljava/lang/Object;)V
    //   131: aload_2
    //   132: monitorexit
    //   133: aload_3
    //   134: invokevirtual 99	jl:a	()V
    //   137: aload_0
    //   138: getfield 56	js:jdField_a_of_type_Jt	Ljt;
    //   141: invokevirtual 100	jt:a	()V
    //   144: aload_3
    //   145: areturn
    //   146: astore_3
    //   147: aload_2
    //   148: monitorexit
    //   149: aload_3
    //   150: athrow
    //   151: astore_2
    //   152: aload_0
    //   153: getfield 31	js:jdField_a_of_type_Kk	Lkk;
    //   156: invokevirtual 66	kk:a	()Z
    //   159: ifeq +15 -> 174
    //   162: aload_0
    //   163: getfield 31	js:jdField_a_of_type_Kk	Lkk;
    //   166: sipush 202
    //   169: aconst_null
    //   170: aload_2
    //   171: invokevirtual 103	kk:a	(I[Ljava/lang/Object;Ljava/lang/Throwable;)V
    //   174: aload_0
    //   175: getfield 56	js:jdField_a_of_type_Jt	Ljt;
    //   178: astore_3
    //   179: aload_1
    //   180: checkcast 83	lc
    //   183: astore 4
    //   185: aload_3
    //   186: getfield 105	jt:jdField_a_of_type_JavaLangObject	Ljava/lang/Object;
    //   189: astore_1
    //   190: aload_1
    //   191: monitorenter
    //   192: aload_3
    //   193: getfield 90	jt:jdField_a_of_type_Kk	Lkk;
    //   196: invokevirtual 66	kk:a	()Z
    //   199: ifeq +50 -> 249
    //   202: aload_3
    //   203: getfield 90	jt:jdField_a_of_type_Kk	Lkk;
    //   206: sipush 618
    //   209: iconst_2
    //   210: anewarray 4	java/lang/Object
    //   213: dup
    //   214: iconst_0
    //   215: new 92	java/lang/Integer
    //   218: dup
    //   219: aload 4
    //   221: getfield 108	lc:a	Ljn;
    //   224: getfield 112	jn:jdField_a_of_type_Int	I
    //   227: invokespecial 95	java/lang/Integer:<init>	(I)V
    //   230: aastore
    //   231: dup
    //   232: iconst_1
    //   233: new 92	java/lang/Integer
    //   236: dup
    //   237: aload 4
    //   239: invokevirtual 115	lc:c	()I
    //   242: invokespecial 95	java/lang/Integer:<init>	(I)V
    //   245: aastore
    //   246: invokevirtual 79	kk:a	(I[Ljava/lang/Object;)V
    //   249: aload 4
    //   251: getfield 108	lc:a	Ljn;
    //   254: getfield 112	jn:jdField_a_of_type_Int	I
    //   257: iconst_1
    //   258: if_icmpne +69 -> 327
    //   261: aload_3
    //   262: getfield 118	jt:jdField_b_of_type_JavaUtilHashtable	Ljava/util/Hashtable;
    //   265: new 92	java/lang/Integer
    //   268: dup
    //   269: aload 4
    //   271: invokevirtual 115	lc:c	()I
    //   274: invokespecial 95	java/lang/Integer:<init>	(I)V
    //   277: invokevirtual 124	java/util/Hashtable:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   280: pop
    //   281: aload_3
    //   282: getfield 127	jt:jdField_a_of_type_JavaUtilVector	Ljava/util/Vector;
    //   285: aload 4
    //   287: invokevirtual 133	java/util/Vector:removeElement	(Ljava/lang/Object;)Z
    //   290: pop
    //   291: aload_3
    //   292: getfield 134	jt:jdField_a_of_type_Jj	Ljj;
    //   295: aload 4
    //   297: invokestatic 137	jt:a	(Lli;)Ljava/lang/String;
    //   300: invokevirtual 142	jj:a	(Ljava/lang/String;)V
    //   303: aload_3
    //   304: getfield 143	jt:jdField_a_of_type_Jx	Ljx;
    //   307: aload 4
    //   309: invokevirtual 145	jx:c	(Lli;)Ljl;
    //   312: pop
    //   313: aload_1
    //   314: monitorexit
    //   315: aload_2
    //   316: athrow
    //   317: astore_1
    //   318: aload_0
    //   319: getfield 56	js:jdField_a_of_type_Jt	Ljt;
    //   322: invokevirtual 100	jt:a	()V
    //   325: aload_1
    //   326: athrow
    //   327: aload_3
    //   328: getfield 147	jt:jdField_a_of_type_JavaUtilHashtable	Ljava/util/Hashtable;
    //   331: new 92	java/lang/Integer
    //   334: dup
    //   335: aload 4
    //   337: invokevirtual 115	lc:c	()I
    //   340: invokespecial 95	java/lang/Integer:<init>	(I)V
    //   343: invokevirtual 124	java/util/Hashtable:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   346: pop
    //   347: goto -66 -> 281
    //   350: astore_2
    //   351: aload_1
    //   352: monitorexit
    //   353: aload_2
    //   354: athrow
    //   355: aload_0
    //   356: getfield 31	js:jdField_a_of_type_Kk	Lkk;
    //   359: sipush 208
    //   362: iconst_2
    //   363: anewarray 4	java/lang/Object
    //   366: dup
    //   367: iconst_0
    //   368: new 149	java/lang/Boolean
    //   371: dup
    //   372: aload_0
    //   373: getfield 27	js:jdField_b_of_type_Boolean	Z
    //   376: invokespecial 152	java/lang/Boolean:<init>	(Z)V
    //   379: aastore
    //   380: dup
    //   381: iconst_1
    //   382: new 149	java/lang/Boolean
    //   385: dup
    //   386: aload_0
    //   387: getfield 40	js:jdField_a_of_type_Boolean	Z
    //   390: invokespecial 152	java/lang/Boolean:<init>	(Z)V
    //   393: aastore
    //   394: invokevirtual 79	kk:a	(I[Ljava/lang/Object;)V
    //   397: sipush 32104
    //   400: invokestatic 157	at:a	(I)Ljm;
    //   403: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	404	0	this	js
    //   151	165	2	localJm	jm
    //   350	4	2	localObject2	Object
    //   56	89	3	localJl	jl
    //   146	4	3	localObject3	Object
    //   178	150	3	localJt	jt
    //   68	268	4	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   78	131	146	finally
    //   131	133	146	finally
    //   64	78	151	jm
    //   133	137	151	jm
    //   147	151	151	jm
    //   64	78	317	finally
    //   133	137	317	finally
    //   147	151	317	finally
    //   152	174	317	finally
    //   174	192	317	finally
    //   315	317	317	finally
    //   351	355	317	finally
    //   192	249	350	finally
    //   249	281	350	finally
    //   281	315	350	finally
    //   327	347	350	finally
  }
  
  public final kq a(kr paramKr, int paramInt, long paramLong, boolean paramBoolean)
    throws jm
  {
    if (!jdField_a_of_type_Boolean)
    {
      jdField_b_of_type_Boolean = false;
      jdField_a_of_type_Int = paramInt;
      jdField_a_of_type_Jt.jdField_a_of_type_Long = (1000L * paramLong);
      jdField_a_of_type_Jt.jdField_a_of_type_Boolean = paramBoolean;
      try
      {
        jdField_a_of_type_Kc.a();
        jdField_a_of_type_Jv = new jv(jdField_a_of_type_Kk, this, jdField_a_of_type_Jt, jdField_a_of_type_Jx, jdField_a_of_type_Kc.a());
        jdField_a_of_type_Jv.a();
        jdField_a_of_type_Jw = new jw(jdField_a_of_type_Kk, this, jdField_a_of_type_Jt, jdField_a_of_type_Jx, jdField_a_of_type_Kc.a());
        jdField_a_of_type_Jw.a();
        jdField_a_of_type_Ju.a();
        try
        {
          paramKr = jdField_a_of_type_Jt.a(paramKr).a(paramInt * 1000);
          if (paramKr == null)
          {
            jdField_a_of_type_Kk.a(203);
            jdField_a_of_type_Jj.jdField_a_of_type_JavaUtilHashtable.clear();
            throw at.a(32000);
          }
        }
        catch (jm paramKr)
        {
          jdField_a_of_type_Kk.a(206, null, paramKr);
          a(null);
          throw paramKr;
        }
        if (!(paramKr instanceof kq)) {
          break label347;
        }
      }
      catch (IOException paramKr)
      {
        jdField_a_of_type_Kk.a(209, null, paramKr);
        jdField_a_of_type_Jj.jdField_a_of_type_JavaUtilHashtable.clear();
        throw at.a(paramKr);
      }
      catch (jm paramKr)
      {
        jdField_a_of_type_Kk.a(212, null, paramKr);
        jdField_a_of_type_Jj.jdField_a_of_type_JavaUtilHashtable.clear();
        throw paramKr;
      }
      kq localKq = (kq)paramKr;
      if (jdField_a_of_type_Int != 0)
      {
        jdField_a_of_type_Kk.a(204, new Object[] { new Integer(jdField_a_of_type_Int) });
        jdField_a_of_type_Jj.jdField_a_of_type_JavaUtilHashtable.clear();
        jdField_a_of_type_JavaLangThread = Thread.currentThread();
        a(null);
        throw at.a(jdField_a_of_type_Int);
      }
      jdField_a_of_type_Boolean = true;
      return (kq)paramKr;
      label347:
      jdField_a_of_type_Kk.a(205, new Object[] { paramKr });
      jdField_a_of_type_Jj.jdField_a_of_type_JavaUtilHashtable.clear();
      throw at.a(6);
    }
    jdField_a_of_type_Kk.a(207);
    throw at.a(32100);
  }
  
  public final void a(jm paramJm)
  {
    if ((jdField_a_of_type_JavaLangThread != null) && (!jdField_a_of_type_JavaLangThread.equals(Thread.currentThread()))) {}
    for (;;)
    {
      return;
      if (jdField_a_of_type_Kk.a()) {
        jdField_a_of_type_Kk.a(201, new Object[] { new Boolean(jdField_b_of_type_Boolean) }, paramJm);
      }
      boolean bool;
      if (!jdField_b_of_type_Boolean)
      {
        bool = jdField_a_of_type_Boolean;
        jdField_b_of_type_Boolean = true;
        jdField_a_of_type_Jt.a(paramJm);
      }
      try
      {
        jdField_a_of_type_Ju.b();
        try
        {
          jdField_a_of_type_Kc.b();
          try
          {
            jdField_a_of_type_Jv.b();
            jdField_a_of_type_Jt.b(paramJm);
            try
            {
              jdField_a_of_type_Jw.b();
              jdField_a_of_type_Boolean = false;
              if ((!bool) || (paramJm == null)) {
                continue;
              }
              jdField_a_of_type_Ju.a(paramJm);
              return;
              jdField_a_of_type_Boolean = false;
              return;
            }
            catch (IOException localIOException1)
            {
              for (;;) {}
            }
          }
          catch (IOException localIOException2)
          {
            for (;;) {}
          }
        }
        catch (IOException localIOException3)
        {
          for (;;) {}
        }
      }
      catch (IOException localIOException4)
      {
        for (;;) {}
      }
    }
  }
  
  /* Error */
  public final void a(ks paramKs)
    throws jm
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 40	js:jdField_a_of_type_Boolean	Z
    //   4: ifeq +346 -> 350
    //   7: invokestatic 219	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   10: aload_0
    //   11: getfield 38	js:jdField_a_of_type_Ju	Lju;
    //   14: invokevirtual 238	ju:a	()Ljava/lang/Thread;
    //   17: if_acmpne +20 -> 37
    //   20: aload_0
    //   21: getfield 31	js:jdField_a_of_type_Kk	Lkk;
    //   24: sipush 210
    //   27: invokevirtual 200	kk:a	(I)V
    //   30: sipush 32107
    //   33: invokestatic 157	at:a	(I)Ljm;
    //   36: athrow
    //   37: aload_0
    //   38: getfield 56	js:jdField_a_of_type_Jt	Ljt;
    //   41: astore_2
    //   42: aload_2
    //   43: getfield 90	jt:jdField_a_of_type_Kk	Lkk;
    //   46: sipush 637
    //   49: iconst_1
    //   50: anewarray 4	java/lang/Object
    //   53: dup
    //   54: iconst_0
    //   55: new 240	java/lang/Long
    //   58: dup
    //   59: ldc2_w 241
    //   62: invokespecial 245	java/lang/Long:<init>	(J)V
    //   65: aastore
    //   66: invokevirtual 79	kk:a	(I[Ljava/lang/Object;)V
    //   69: ldc2_w 241
    //   72: lconst_0
    //   73: lcmp
    //   74: ifle +207 -> 281
    //   77: aload_2
    //   78: getfield 105	jt:jdField_a_of_type_JavaLangObject	Ljava/lang/Object;
    //   81: astore_3
    //   82: aload_3
    //   83: monitorenter
    //   84: aload_2
    //   85: iconst_1
    //   86: putfield 246	jt:jdField_b_of_type_Boolean	Z
    //   89: aload_3
    //   90: monitorexit
    //   91: aload_2
    //   92: getfield 247	jt:jdField_a_of_type_Ju	Lju;
    //   95: invokevirtual 249	ju:c	()V
    //   98: aload_2
    //   99: getfield 105	jt:jdField_a_of_type_JavaLangObject	Ljava/lang/Object;
    //   102: astore_3
    //   103: aload_3
    //   104: monitorenter
    //   105: aload_2
    //   106: getfield 90	jt:jdField_a_of_type_Kk	Lkk;
    //   109: sipush 638
    //   112: invokevirtual 200	kk:a	(I)V
    //   115: aload_2
    //   116: getfield 105	jt:jdField_a_of_type_JavaLangObject	Ljava/lang/Object;
    //   119: invokevirtual 252	java/lang/Object:notifyAll	()V
    //   122: aload_3
    //   123: monitorexit
    //   124: aload_2
    //   125: getfield 254	jt:jdField_b_of_type_JavaLangObject	Ljava/lang/Object;
    //   128: astore_3
    //   129: aload_3
    //   130: monitorenter
    //   131: aload_2
    //   132: getfield 255	jt:jdField_a_of_type_Int	I
    //   135: ifgt +20 -> 155
    //   138: aload_2
    //   139: getfield 257	jt:jdField_b_of_type_JavaUtilVector	Ljava/util/Vector;
    //   142: invokevirtual 260	java/util/Vector:size	()I
    //   145: ifgt +10 -> 155
    //   148: aload_2
    //   149: getfield 262	jt:jdField_b_of_type_Int	I
    //   152: ifle +92 -> 244
    //   155: aload_2
    //   156: getfield 90	jt:jdField_a_of_type_Kk	Lkk;
    //   159: invokevirtual 66	kk:a	()Z
    //   162: ifeq +62 -> 224
    //   165: aload_2
    //   166: getfield 90	jt:jdField_a_of_type_Kk	Lkk;
    //   169: sipush 639
    //   172: iconst_3
    //   173: anewarray 4	java/lang/Object
    //   176: dup
    //   177: iconst_0
    //   178: new 92	java/lang/Integer
    //   181: dup
    //   182: aload_2
    //   183: getfield 255	jt:jdField_a_of_type_Int	I
    //   186: invokespecial 95	java/lang/Integer:<init>	(I)V
    //   189: aastore
    //   190: dup
    //   191: iconst_1
    //   192: new 92	java/lang/Integer
    //   195: dup
    //   196: aload_2
    //   197: getfield 257	jt:jdField_b_of_type_JavaUtilVector	Ljava/util/Vector;
    //   200: invokevirtual 260	java/util/Vector:size	()I
    //   203: invokespecial 95	java/lang/Integer:<init>	(I)V
    //   206: aastore
    //   207: dup
    //   208: iconst_2
    //   209: new 92	java/lang/Integer
    //   212: dup
    //   213: aload_2
    //   214: getfield 262	jt:jdField_b_of_type_Int	I
    //   217: invokespecial 95	java/lang/Integer:<init>	(I)V
    //   220: aastore
    //   221: invokevirtual 79	kk:a	(I[Ljava/lang/Object;)V
    //   224: aload_2
    //   225: getfield 254	jt:jdField_b_of_type_JavaLangObject	Ljava/lang/Object;
    //   228: ldc2_w 241
    //   231: invokevirtual 265	java/lang/Object:wait	(J)V
    //   234: aload_2
    //   235: getfield 90	jt:jdField_a_of_type_Kk	Lkk;
    //   238: sipush 640
    //   241: invokevirtual 200	kk:a	(I)V
    //   244: aload_3
    //   245: monitorexit
    //   246: aload_2
    //   247: getfield 105	jt:jdField_a_of_type_JavaLangObject	Ljava/lang/Object;
    //   250: astore_3
    //   251: aload_3
    //   252: monitorenter
    //   253: aload_2
    //   254: aload_2
    //   255: getfield 127	jt:jdField_a_of_type_JavaUtilVector	Ljava/util/Vector;
    //   258: invokevirtual 268	jt:a	(Ljava/util/Vector;)V
    //   261: aload_2
    //   262: aload_2
    //   263: getfield 257	jt:jdField_b_of_type_JavaUtilVector	Ljava/util/Vector;
    //   266: invokevirtual 268	jt:a	(Ljava/util/Vector;)V
    //   269: aload_2
    //   270: iconst_0
    //   271: putfield 246	jt:jdField_b_of_type_Boolean	Z
    //   274: aload_2
    //   275: iconst_0
    //   276: putfield 255	jt:jdField_a_of_type_Int	I
    //   279: aload_3
    //   280: monitorexit
    //   281: aload_0
    //   282: getfield 182	js:jdField_a_of_type_Jv	Ljv;
    //   285: invokevirtual 269	jv:c	()V
    //   288: aload_0
    //   289: invokestatic 219	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   292: putfield 29	js:jdField_a_of_type_JavaLangThread	Ljava/lang/Thread;
    //   295: aload_0
    //   296: aload_1
    //   297: invokevirtual 270	js:a	(Lli;)Ljl;
    //   300: invokevirtual 99	jl:a	()V
    //   303: aload_0
    //   304: aconst_null
    //   305: invokevirtual 207	js:a	(Ljm;)V
    //   308: aload_0
    //   309: aconst_null
    //   310: putfield 29	js:jdField_a_of_type_JavaLangThread	Ljava/lang/Thread;
    //   313: return
    //   314: astore_1
    //   315: aload_3
    //   316: monitorexit
    //   317: aload_1
    //   318: athrow
    //   319: astore_1
    //   320: aload_3
    //   321: monitorexit
    //   322: aload_1
    //   323: athrow
    //   324: astore_1
    //   325: aload_3
    //   326: monitorexit
    //   327: aload_1
    //   328: athrow
    //   329: astore_1
    //   330: aload_3
    //   331: monitorexit
    //   332: aload_1
    //   333: athrow
    //   334: astore_1
    //   335: aload_1
    //   336: athrow
    //   337: astore_1
    //   338: aload_0
    //   339: aconst_null
    //   340: invokevirtual 207	js:a	(Ljm;)V
    //   343: aload_0
    //   344: aconst_null
    //   345: putfield 29	js:jdField_a_of_type_JavaLangThread	Ljava/lang/Thread;
    //   348: aload_1
    //   349: athrow
    //   350: aload_0
    //   351: getfield 31	js:jdField_a_of_type_Kk	Lkk;
    //   354: sipush 211
    //   357: invokevirtual 200	kk:a	(I)V
    //   360: sipush 32101
    //   363: invokestatic 157	at:a	(I)Ljm;
    //   366: athrow
    //   367: astore 4
    //   369: goto -125 -> 244
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	372	0	this	js
    //   0	372	1	paramKs	ks
    //   41	234	2	localJt	jt
    //   367	1	4	localInterruptedException	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   84	91	314	finally
    //   105	124	319	finally
    //   131	155	324	finally
    //   155	224	324	finally
    //   224	244	324	finally
    //   244	246	324	finally
    //   253	281	329	finally
    //   288	303	334	jm
    //   288	303	337	finally
    //   335	337	337	finally
    //   131	155	367	java/lang/InterruptedException
    //   155	224	367	java/lang/InterruptedException
    //   224	244	367	java/lang/InterruptedException
  }
}
