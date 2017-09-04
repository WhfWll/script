package ss.ss.pK;

import gK.f;
import gK.g;
import gK.x;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import ss.ae;
import ss.ag;
import ss.ag.a;
import ss.ak;
import ss.ak.a;
import ss.an;
import ss.b;
import ss.k;
import ss.ss.gK.o;
import ss.ss.gK.t;
import ss.ss.h;
import ss.ss.j;
import ss.ss.ss.d;
import ss.ss.ss.d.a;
import ss.ss.ss.d.b;
import ss.ss.ss.p;
import ss.v;
import ss.y;

public final class c
  extends d.b
  implements k
{
  public Socket b;
  public volatile d c;
  public int d;
  public g e;
  public f f;
  public int g;
  public final List<Reference<ss.ss.gK.w>> h = new ArrayList();
  public boolean i;
  public long j = Long.MAX_VALUE;
  private final an k;
  private Socket l;
  private v m;
  private ae n;
  
  public c(an paramAn)
  {
    k = paramAn;
  }
  
  private void a(int paramInt1, int paramInt2)
    throws IOException
  {
    Object localObject1 = d();
    Object localObject2 = ((ag)localObject1).a();
    String str = "CONNECT " + j.a((y)localObject2, true) + " HTTP/1.1";
    do
    {
      localObject2 = new ss.ss.gK.e(null, e, f);
      e.a().a(paramInt1, TimeUnit.MILLISECONDS);
      f.a().a(paramInt2, TimeUnit.MILLISECONDS);
      ((ss.ss.gK.e)localObject2).a(((ag)localObject1).c(), str);
      ((ss.ss.gK.e)localObject2).b();
      localObject1 = ((ss.ss.gK.e)localObject2).c().a((ag)localObject1).a();
      long l2 = o.a((ak)localObject1);
      long l1 = l2;
      if (l2 == -1L) {
        l1 = 0L;
      }
      localObject2 = ((ss.ss.gK.e)localObject2).b(l1);
      j.b((gK.w)localObject2, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
      ((gK.w)localObject2).close();
      switch (((ak)localObject1).b())
      {
      default: 
        throw new IOException("Unexpected response code for CONNECT: " + ((ak)localObject1).b());
      case 200: 
        if ((e.c().f()) && (f.c().f())) {
          break;
        }
        throw new IOException("TLS tunnel buffered too many bytes!");
      case 407: 
        localObject2 = k.a().d().a(k, (ak)localObject1);
        localObject1 = localObject2;
      }
    } while (localObject2 != null);
    throw new IOException("Failed to authenticate with proxy");
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, ss.ss.a paramA)
    throws IOException
  {
    l.setSoTimeout(paramInt2);
    for (;;)
    {
      try
      {
        h.a().a(l, k.c(), paramInt1);
        e = gK.n.a(gK.n.b(l));
        f = gK.n.a(gK.n.a(l));
        if (k.a().i() != null)
        {
          a(paramInt2, paramInt3, paramA);
          if ((n != ae.c) && (n != ae.d)) {
            break;
          }
          b.setSoTimeout(0);
          paramA = new d.a(true).a(b, k.a().a().f(), e, f).a(n).a(this).a();
          paramA.d();
          g = paramA.b();
          c = paramA;
          return;
        }
      }
      catch (ConnectException paramA)
      {
        throw new ConnectException("Failed to connect to " + k.c());
      }
      n = ae.b;
      b = l;
    }
    g = 1;
  }
  
  /* Error */
  private void a(int paramInt1, int paramInt2, ss.ss.a paramA)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 7
    //   6: aconst_null
    //   7: astore 6
    //   9: aload_0
    //   10: getfield 47	ss/ss/pK/c:k	Lss/an;
    //   13: invokevirtual 283	ss/an:d	()Z
    //   16: ifeq +9 -> 25
    //   19: aload_0
    //   20: iload_1
    //   21: iload_2
    //   22: invokespecial 285	ss/ss/pK/c:a	(II)V
    //   25: aload_0
    //   26: getfield 47	ss/ss/pK/c:k	Lss/an;
    //   29: invokevirtual 175	ss/an:a	()Lss/a;
    //   32: astore 8
    //   34: aload 8
    //   36: invokevirtual 227	ss/a:i	()Ljavax/net/ssl/SSLSocketFactory;
    //   39: astore 5
    //   41: aload 5
    //   43: aload_0
    //   44: getfield 193	ss/ss/pK/c:l	Ljava/net/Socket;
    //   47: aload 8
    //   49: invokevirtual 246	ss/a:a	()Lss/y;
    //   52: invokevirtual 250	ss/y:f	()Ljava/lang/String;
    //   55: aload 8
    //   57: invokevirtual 246	ss/a:a	()Lss/y;
    //   60: invokevirtual 287	ss/y:g	()I
    //   63: iconst_1
    //   64: invokevirtual 293	javax/net/ssl/SSLSocketFactory:createSocket	(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    //   67: checkcast 295	javax/net/ssl/SSLSocket
    //   70: astore 5
    //   72: aload_3
    //   73: aload 5
    //   75: invokevirtual 300	ss/ss/a:a	(Ljavax/net/ssl/SSLSocket;)Lss/n;
    //   78: astore 6
    //   80: aload 6
    //   82: invokevirtual 303	ss/n:d	()Z
    //   85: ifeq +24 -> 109
    //   88: invokestatic 204	ss/ss/h:a	()Lss/ss/h;
    //   91: aload 5
    //   93: aload 8
    //   95: invokevirtual 246	ss/a:a	()Lss/y;
    //   98: invokevirtual 250	ss/y:f	()Ljava/lang/String;
    //   101: aload 8
    //   103: invokevirtual 306	ss/a:e	()Ljava/util/List;
    //   106: invokevirtual 309	ss/ss/h:a	(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    //   109: aload 5
    //   111: invokevirtual 312	javax/net/ssl/SSLSocket:startHandshake	()V
    //   114: aload 5
    //   116: invokevirtual 316	javax/net/ssl/SSLSocket:getSession	()Ljavax/net/ssl/SSLSession;
    //   119: invokestatic 321	ss/v:a	(Ljavax/net/ssl/SSLSession;)Lss/v;
    //   122: astore 4
    //   124: aload 8
    //   126: invokevirtual 324	ss/a:j	()Ljavax/net/ssl/HostnameVerifier;
    //   129: aload 8
    //   131: invokevirtual 246	ss/a:a	()Lss/y;
    //   134: invokevirtual 250	ss/y:f	()Ljava/lang/String;
    //   137: aload 5
    //   139: invokevirtual 316	javax/net/ssl/SSLSocket:getSession	()Ljavax/net/ssl/SSLSession;
    //   142: invokeinterface 330 3 0
    //   147: ifne +157 -> 304
    //   150: aload 4
    //   152: invokevirtual 332	ss/v:b	()Ljava/util/List;
    //   155: iconst_0
    //   156: invokeinterface 338 2 0
    //   161: checkcast 340	java/security/cert/X509Certificate
    //   164: astore_3
    //   165: new 342	javax/net/ssl/SSLPeerUnverifiedException
    //   168: dup
    //   169: new 62	java/lang/StringBuilder
    //   172: dup
    //   173: invokespecial 63	java/lang/StringBuilder:<init>	()V
    //   176: ldc_w 344
    //   179: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: aload 8
    //   184: invokevirtual 246	ss/a:a	()Lss/y;
    //   187: invokevirtual 250	ss/y:f	()Ljava/lang/String;
    //   190: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: ldc_w 346
    //   196: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: ldc_w 348
    //   202: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   205: aload_3
    //   206: invokestatic 353	ss/h:a	(Ljava/security/cert/Certificate;)Ljava/lang/String;
    //   209: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: ldc_w 355
    //   215: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: aload_3
    //   219: invokevirtual 359	java/security/cert/X509Certificate:getSubjectDN	()Ljava/security/Principal;
    //   222: invokeinterface 364 1 0
    //   227: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: ldc_w 366
    //   233: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: aload_3
    //   237: invokestatic 371	ss/ss/gq/d:a	(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    //   240: invokevirtual 276	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   243: invokevirtual 80	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   246: invokespecial 372	javax/net/ssl/SSLPeerUnverifiedException:<init>	(Ljava/lang/String;)V
    //   249: athrow
    //   250: astore 4
    //   252: aload 5
    //   254: astore_3
    //   255: aload 4
    //   257: astore 5
    //   259: aload_3
    //   260: astore 4
    //   262: aload 5
    //   264: invokestatic 375	ss/ss/j:a	(Ljava/lang/AssertionError;)Z
    //   267: ifeq +153 -> 420
    //   270: aload_3
    //   271: astore 4
    //   273: new 52	java/io/IOException
    //   276: dup
    //   277: aload 5
    //   279: invokespecial 378	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   282: athrow
    //   283: astore_3
    //   284: aload 4
    //   286: ifnull +11 -> 297
    //   289: invokestatic 204	ss/ss/h:a	()Lss/ss/h;
    //   292: aload 4
    //   294: invokevirtual 381	ss/ss/h:a	(Ljavax/net/ssl/SSLSocket;)V
    //   297: aload 4
    //   299: invokestatic 384	ss/ss/j:a	(Ljava/net/Socket;)V
    //   302: aload_3
    //   303: athrow
    //   304: aload 8
    //   306: invokevirtual 387	ss/a:k	()Lss/h;
    //   309: aload 8
    //   311: invokevirtual 246	ss/a:a	()Lss/y;
    //   314: invokevirtual 250	ss/y:f	()Ljava/lang/String;
    //   317: aload 4
    //   319: invokevirtual 332	ss/v:b	()Ljava/util/List;
    //   322: invokevirtual 390	ss/h:a	(Ljava/lang/String;Ljava/util/List;)V
    //   325: aload 7
    //   327: astore_3
    //   328: aload 6
    //   330: invokevirtual 303	ss/n:d	()Z
    //   333: ifeq +12 -> 345
    //   336: invokestatic 204	ss/ss/h:a	()Lss/ss/h;
    //   339: aload 5
    //   341: invokevirtual 393	ss/ss/h:b	(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    //   344: astore_3
    //   345: aload_0
    //   346: aload 5
    //   348: putfield 240	ss/ss/pK/c:b	Ljava/net/Socket;
    //   351: aload_0
    //   352: aload_0
    //   353: getfield 240	ss/ss/pK/c:b	Ljava/net/Socket;
    //   356: invokestatic 215	gK/n:b	(Ljava/net/Socket;)LgK/w;
    //   359: invokestatic 218	gK/n:a	(LgK/w;)LgK/g;
    //   362: putfield 84	ss/ss/pK/c:e	LgK/g;
    //   365: aload_0
    //   366: aload_0
    //   367: getfield 240	ss/ss/pK/c:b	Ljava/net/Socket;
    //   370: invokestatic 221	gK/n:a	(Ljava/net/Socket;)LgK/v;
    //   373: invokestatic 224	gK/n:a	(LgK/v;)LgK/f;
    //   376: putfield 86	ss/ss/pK/c:f	LgK/f;
    //   379: aload_0
    //   380: aload 4
    //   382: putfield 395	ss/ss/pK/c:m	Lss/v;
    //   385: aload_3
    //   386: ifnull +27 -> 413
    //   389: aload_3
    //   390: invokestatic 398	ss/ae:a	(Ljava/lang/String;)Lss/ae;
    //   393: astore_3
    //   394: aload_0
    //   395: aload_3
    //   396: putfield 232	ss/ss/pK/c:n	Lss/ae;
    //   399: aload 5
    //   401: ifnull +11 -> 412
    //   404: invokestatic 204	ss/ss/h:a	()Lss/ss/h;
    //   407: aload 5
    //   409: invokevirtual 381	ss/ss/h:a	(Ljavax/net/ssl/SSLSocket;)V
    //   412: return
    //   413: getstatic 279	ss/ae:b	Lss/ae;
    //   416: astore_3
    //   417: goto -23 -> 394
    //   420: aload_3
    //   421: astore 4
    //   423: aload 5
    //   425: athrow
    //   426: astore_3
    //   427: aload 5
    //   429: astore 4
    //   431: goto -147 -> 284
    //   434: astore 5
    //   436: aload 6
    //   438: astore_3
    //   439: goto -180 -> 259
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	442	0	this	c
    //   0	442	1	paramInt1	int
    //   0	442	2	paramInt2	int
    //   0	442	3	paramA	ss.ss.a
    //   1	150	4	localV	v
    //   250	6	4	localAssertionError1	AssertionError
    //   260	170	4	localObject1	Object
    //   39	389	5	localObject2	Object
    //   434	1	5	localAssertionError2	AssertionError
    //   7	430	6	localN	ss.n
    //   4	322	7	localObject3	Object
    //   32	278	8	localA	ss.a
    // Exception table:
    //   from	to	target	type
    //   72	109	250	java/lang/AssertionError
    //   109	250	250	java/lang/AssertionError
    //   304	325	250	java/lang/AssertionError
    //   328	345	250	java/lang/AssertionError
    //   345	385	250	java/lang/AssertionError
    //   389	394	250	java/lang/AssertionError
    //   394	399	250	java/lang/AssertionError
    //   413	417	250	java/lang/AssertionError
    //   41	72	283	finally
    //   262	270	283	finally
    //   273	283	283	finally
    //   423	426	283	finally
    //   72	109	426	finally
    //   109	250	426	finally
    //   304	325	426	finally
    //   328	345	426	finally
    //   345	385	426	finally
    //   389	394	426	finally
    //   394	399	426	finally
    //   413	417	426	finally
    //   41	72	434	java/lang/AssertionError
  }
  
  private ag d()
    throws IOException
  {
    return new ag.a().a(k.a().a()).a("Host", j.a(k.a().a(), true)).a("Proxy-Connection", "Keep-Alive").a("User-Agent", "").a();
  }
  
  public an a()
  {
    return k;
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, List<ss.n> paramList, boolean paramBoolean)
    throws t
  {
    if (n != null) {
      throw new IllegalStateException("already connected");
    }
    ss.ss.a localA = new ss.ss.a(paramList);
    Proxy localProxy = k.b();
    ss.a localA1 = k.a();
    if ((k.a().i() == null) && (!paramList.contains(ss.n.c))) {
      throw new t(new UnknownServiceException("CLEARTEXT communication not supported: " + paramList));
    }
    for (;;)
    {
      try
      {
        localObject = new Socket(localProxy);
        l = ((Socket)localObject);
        a(paramInt1, paramInt2, paramInt3, localA);
      }
      catch (IOException localIOException)
      {
        j.a(b);
        j.a(l);
        b = null;
        l = null;
        e = null;
        f = null;
        m = null;
        n = null;
        if (paramList != null) {
          continue;
        }
        Object localObject = new t(localIOException);
        if (!paramBoolean) {
          continue;
        }
        paramList = (List<ss.n>)localObject;
        if (localA.a(localIOException)) {
          continue;
        }
        throw ((Throwable)localObject);
        paramList.a(localIOException);
        localObject = paramList;
        continue;
      }
      if (n == null)
      {
        if ((localProxy.type() == Proxy.Type.DIRECT) || (localProxy.type() == Proxy.Type.HTTP)) {
          localObject = localA1.c().createSocket();
        }
      }
      else
      {
        return;
        paramList = null;
      }
    }
  }
  
  public void a(d paramD)
  {
    g = paramD.b();
  }
  
  public void a(p paramP)
    throws IOException
  {
    paramP.a(ss.ss.ss.a.k);
  }
  
  public boolean a(boolean paramBoolean)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((b.isClosed()) || (b.isInputShutdown()) || (b.isOutputShutdown())) {
      bool1 = false;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (c != null);
      bool1 = bool2;
    } while (!paramBoolean);
    try
    {
      int i1 = b.getSoTimeout();
      try
      {
        b.setSoTimeout(1);
        paramBoolean = e.f();
        return !paramBoolean;
      }
      finally
      {
        b.setSoTimeout(i1);
      }
      return true;
    }
    catch (IOException localIOException)
    {
      return false;
    }
    catch (SocketTimeoutException localSocketTimeoutException) {}
  }
  
  public Socket b()
  {
    return b;
  }
  
  public v c()
  {
    return m;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("Connection{").append(k.a().a().f()).append(":").append(k.a().a().g()).append(", proxy=").append(k.b()).append(" hostAddress=").append(k.c()).append(" cipherSuite=");
    if (m != null) {}
    for (Object localObject = m.a();; localObject = "none") {
      return localObject + " protocol=" + n + '}';
    }
  }
}
