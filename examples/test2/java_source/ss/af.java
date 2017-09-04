package ss;

import java.io.IOException;
import java.util.List;
import ss.ss.gK.j;

final class af
  implements g
{
  volatile boolean a;
  ag b;
  j c;
  private final ac d;
  private boolean e;
  
  protected af(ac paramAc, ag paramAg)
  {
    d = paramAc;
    b = paramAg;
  }
  
  private ak a(boolean paramBoolean)
    throws IOException
  {
    return new a(0, b, paramBoolean).a(b);
  }
  
  public ak a()
    throws IOException
  {
    try
    {
      if (e) {
        throw new IllegalStateException("Already Executed");
      }
    }
    finally {}
    e = true;
    try
    {
      d.s().a(this);
      ak localAk1 = a(false);
      if (localAk1 == null) {
        throw new IOException("Canceled");
      }
    }
    finally
    {
      d.s().a(this);
    }
    d.s().a(this);
    return localAk2;
  }
  
  /* Error */
  ak a(ag paramAg, boolean paramBoolean)
    throws IOException
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 79	ss/ag:d	()Lss/ai;
    //   4: astore 6
    //   6: aload 6
    //   8: ifnull +386 -> 394
    //   11: aload_1
    //   12: invokevirtual 82	ss/ag:e	()Lss/ag$a;
    //   15: astore_1
    //   16: aload 6
    //   18: invokevirtual 87	ss/ai:a	()Lss/ab;
    //   21: astore 7
    //   23: aload 7
    //   25: ifnull +15 -> 40
    //   28: aload_1
    //   29: ldc 89
    //   31: aload 7
    //   33: invokevirtual 95	ss/ab:toString	()Ljava/lang/String;
    //   36: invokevirtual 100	ss/ag$a:a	(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;
    //   39: pop
    //   40: aload 6
    //   42: invokevirtual 103	ss/ai:b	()J
    //   45: lstore 4
    //   47: lload 4
    //   49: ldc2_w 104
    //   52: lcmp
    //   53: ifeq +75 -> 128
    //   56: aload_1
    //   57: ldc 107
    //   59: lload 4
    //   61: invokestatic 112	java/lang/Long:toString	(J)Ljava/lang/String;
    //   64: invokevirtual 100	ss/ag$a:a	(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;
    //   67: pop
    //   68: aload_1
    //   69: ldc 114
    //   71: invokevirtual 117	ss/ag$a:b	(Ljava/lang/String;)Lss/ag$a;
    //   74: pop
    //   75: aload_1
    //   76: invokevirtual 120	ss/ag$a:a	()Lss/ag;
    //   79: astore_1
    //   80: aload_0
    //   81: new 122	ss/ss/gK/j
    //   84: dup
    //   85: aload_0
    //   86: getfield 24	ss/af:d	Lss/ac;
    //   89: aload_1
    //   90: iconst_0
    //   91: iconst_0
    //   92: iload_2
    //   93: aconst_null
    //   94: aconst_null
    //   95: aconst_null
    //   96: invokespecial 125	ss/ss/gK/j:<init>	(Lss/ac;Lss/ag;ZZZLss/ss/gK/w;Lss/ss/gK/s;Lss/ak;)V
    //   99: putfield 127	ss/af:c	Lss/ss/gK/j;
    //   102: iconst_0
    //   103: istore_3
    //   104: aload_0
    //   105: getfield 129	ss/af:a	Z
    //   108: ifeq +39 -> 147
    //   111: aload_0
    //   112: getfield 127	ss/af:c	Lss/ss/gK/j;
    //   115: invokevirtual 131	ss/ss/gK/j:e	()V
    //   118: new 31	java/io/IOException
    //   121: dup
    //   122: ldc 65
    //   124: invokespecial 66	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   127: athrow
    //   128: aload_1
    //   129: ldc 114
    //   131: ldc -123
    //   133: invokevirtual 100	ss/ag$a:a	(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;
    //   136: pop
    //   137: aload_1
    //   138: ldc 107
    //   140: invokevirtual 117	ss/ag$a:b	(Ljava/lang/String;)Lss/ag$a;
    //   143: pop
    //   144: goto -69 -> 75
    //   147: aload_0
    //   148: getfield 127	ss/af:c	Lss/ss/gK/j;
    //   151: invokevirtual 135	ss/ss/gK/j:a	()V
    //   154: aload_0
    //   155: getfield 127	ss/af:c	Lss/ss/gK/j;
    //   158: invokevirtual 138	ss/ss/gK/j:g	()V
    //   161: aload_0
    //   162: getfield 127	ss/af:c	Lss/ss/gK/j;
    //   165: invokevirtual 140	ss/ss/gK/j:c	()Lss/ak;
    //   168: astore 7
    //   170: aload_0
    //   171: getfield 127	ss/af:c	Lss/ss/gK/j;
    //   174: invokevirtual 143	ss/ss/gK/j:h	()Lss/ag;
    //   177: astore 8
    //   179: aload 8
    //   181: ifnonnull +110 -> 291
    //   184: iload_2
    //   185: ifne +10 -> 195
    //   188: aload_0
    //   189: getfield 127	ss/af:c	Lss/ss/gK/j;
    //   192: invokevirtual 131	ss/ss/gK/j:e	()V
    //   195: aload 7
    //   197: areturn
    //   198: astore_1
    //   199: aload_1
    //   200: invokevirtual 146	ss/ss/gK/q:a	()Ljava/io/IOException;
    //   203: athrow
    //   204: astore_1
    //   205: iconst_1
    //   206: istore_3
    //   207: iload_3
    //   208: ifeq +13 -> 221
    //   211: aload_0
    //   212: getfield 127	ss/af:c	Lss/ss/gK/j;
    //   215: invokevirtual 150	ss/ss/gK/j:f	()Lss/ss/gK/w;
    //   218: invokevirtual 154	ss/ss/gK/w:b	()V
    //   221: aload_1
    //   222: athrow
    //   223: astore_1
    //   224: aload_0
    //   225: getfield 127	ss/af:c	Lss/ss/gK/j;
    //   228: aload_1
    //   229: invokevirtual 155	ss/ss/gK/t:a	()Ljava/io/IOException;
    //   232: aconst_null
    //   233: invokevirtual 158	ss/ss/gK/j:a	(Ljava/io/IOException;LgK/v;)Lss/ss/gK/j;
    //   236: astore 6
    //   238: aload 6
    //   240: ifnull +18 -> 258
    //   243: aload_0
    //   244: aload 6
    //   246: putfield 127	ss/af:c	Lss/ss/gK/j;
    //   249: goto -145 -> 104
    //   252: iconst_0
    //   253: istore_3
    //   254: astore_1
    //   255: goto -48 -> 207
    //   258: aload_1
    //   259: invokevirtual 155	ss/ss/gK/t:a	()Ljava/io/IOException;
    //   262: athrow
    //   263: astore_1
    //   264: aload_0
    //   265: getfield 127	ss/af:c	Lss/ss/gK/j;
    //   268: aload_1
    //   269: aconst_null
    //   270: invokevirtual 158	ss/ss/gK/j:a	(Ljava/io/IOException;LgK/v;)Lss/ss/gK/j;
    //   273: astore 6
    //   275: aload 6
    //   277: ifnull +12 -> 289
    //   280: aload_0
    //   281: aload 6
    //   283: putfield 127	ss/af:c	Lss/ss/gK/j;
    //   286: goto -182 -> 104
    //   289: aload_1
    //   290: athrow
    //   291: aload_0
    //   292: getfield 127	ss/af:c	Lss/ss/gK/j;
    //   295: invokevirtual 150	ss/ss/gK/j:f	()Lss/ss/gK/w;
    //   298: astore 6
    //   300: iload_3
    //   301: iconst_1
    //   302: iadd
    //   303: istore_3
    //   304: iload_3
    //   305: bipush 20
    //   307: if_icmple +35 -> 342
    //   310: aload 6
    //   312: invokevirtual 154	ss/ss/gK/w:b	()V
    //   315: new 160	java/net/ProtocolException
    //   318: dup
    //   319: new 162	java/lang/StringBuilder
    //   322: dup
    //   323: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   326: ldc -91
    //   328: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   331: iload_3
    //   332: invokevirtual 172	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   335: invokevirtual 173	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   338: invokespecial 174	java/net/ProtocolException:<init>	(Ljava/lang/String;)V
    //   341: athrow
    //   342: aload 6
    //   344: astore_1
    //   345: aload_0
    //   346: getfield 127	ss/af:c	Lss/ss/gK/j;
    //   349: aload 8
    //   351: invokevirtual 177	ss/ag:a	()Lss/y;
    //   354: invokevirtual 180	ss/ss/gK/j:a	(Lss/y;)Z
    //   357: ifne +10 -> 367
    //   360: aload 6
    //   362: invokevirtual 154	ss/ss/gK/w:b	()V
    //   365: aconst_null
    //   366: astore_1
    //   367: aload_0
    //   368: new 122	ss/ss/gK/j
    //   371: dup
    //   372: aload_0
    //   373: getfield 24	ss/af:d	Lss/ac;
    //   376: aload 8
    //   378: iconst_0
    //   379: iconst_0
    //   380: iload_2
    //   381: aload_1
    //   382: aconst_null
    //   383: aload 7
    //   385: invokespecial 125	ss/ss/gK/j:<init>	(Lss/ac;Lss/ag;ZZZLss/ss/gK/w;Lss/ss/gK/s;Lss/ak;)V
    //   388: putfield 127	ss/af:c	Lss/ss/gK/j;
    //   391: goto -287 -> 104
    //   394: goto -314 -> 80
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	397	0	this	af
    //   0	397	1	paramAg	ag
    //   0	397	2	paramBoolean	boolean
    //   103	229	3	i	int
    //   45	15	4	l	long
    //   4	357	6	localObject1	Object
    //   21	363	7	localObject2	Object
    //   177	200	8	localAg	ag
    // Exception table:
    //   from	to	target	type
    //   147	161	198	ss/ss/gK/q
    //   147	161	204	finally
    //   199	204	204	finally
    //   224	238	204	finally
    //   258	263	204	finally
    //   264	275	204	finally
    //   289	291	204	finally
    //   147	161	223	ss/ss/gK/t
    //   243	249	252	finally
    //   280	286	252	finally
    //   147	161	263	java/io/IOException
  }
  
  class a
    implements aa.a
  {
    private final int b;
    private final ag c;
    private final boolean d;
    
    a(int paramInt, ag paramAg, boolean paramBoolean)
    {
      b = paramInt;
      c = paramAg;
      d = paramBoolean;
    }
    
    public ag a()
    {
      return c;
    }
    
    public ak a(ag paramAg)
      throws IOException
    {
      if (b < af.a(af.this).v().size())
      {
        Object localObject = new a(af.this, b + 1, paramAg, d);
        paramAg = (aa)af.a(af.this).v().get(b);
        localObject = paramAg.a((aa.a)localObject);
        if (localObject == null) {
          throw new NullPointerException("application interceptor " + paramAg + " returned null");
        }
        return localObject;
      }
      return a(paramAg, d);
    }
  }
}
