package ss.ss.gK;

import gK.v;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import ss.a;
import ss.an;
import ss.l;
import ss.ss.d;
import ss.ss.i;
import ss.ss.j;
import ss.ss.pK.c;

public final class w
{
  public final a a;
  private an b;
  private final l c;
  private u d;
  private c e;
  private boolean f;
  private boolean g;
  private n h;
  
  public w(l paramL, a paramA)
  {
    c = paramL;
    a = paramA;
    d = new u(paramA, d());
  }
  
  private c a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
    throws IOException, t
  {
    synchronized (c)
    {
      if (f) {
        throw new IllegalStateException("released");
      }
    }
    if (h != null) {
      throw new IllegalStateException("stream != null");
    }
    if (g) {
      throw new IOException("Canceled");
    }
    ??? = e;
    if ((??? != null) && (!i)) {
      return ???;
    }
    ??? = d.b.a(c, a, this);
    if (??? != null)
    {
      e = ((c)???);
      return ???;
    }
    ??? = b;
    if (??? == null) {
      ??? = d.b();
    }
    for (;;)
    {
      synchronized (c)
      {
        b = ((an)???);
        ??? = new c((an)???);
        a((c)???);
        synchronized (c)
        {
          d.b.b(c, (c)???);
          e = ((c)???);
          if (g) {
            throw new IOException("Canceled");
          }
        }
      }
      localC.a(paramInt1, paramInt2, paramInt3, a.f(), paramBoolean);
      d().b(localC.a());
      return localC;
    }
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    Object localObject4 = null;
    Object localObject3 = null;
    l localL = c;
    if (paramBoolean3) {}
    try
    {
      h = null;
      if (paramBoolean2) {
        f = true;
      }
      Object localObject1 = localObject4;
      if (e != null)
      {
        if (paramBoolean1) {
          e.i = true;
        }
        localObject1 = localObject4;
        if (h == null) {
          if (!f)
          {
            localObject1 = localObject4;
            if (!e.i) {}
          }
          else
          {
            b(e);
            localObject1 = localObject3;
            if (e.h.isEmpty())
            {
              e.j = System.nanoTime();
              localObject1 = localObject3;
              if (d.b.a(c, e)) {
                localObject1 = e;
              }
            }
            e = null;
          }
        }
      }
      if (localObject1 != null) {
        j.a(((c)localObject1).b());
      }
      return;
    }
    finally {}
  }
  
  private c b(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2)
    throws IOException, t
  {
    for (;;)
    {
      c localC1 = a(paramInt1, paramInt2, paramInt3, paramBoolean1);
      synchronized (c)
      {
        if (d == 0) {
          return localC1;
        }
        if (!localC1.a(paramBoolean2)) {
          a(new IOException());
        }
      }
    }
    return localC2;
  }
  
  private void b(c paramC)
  {
    int j = h.size();
    int i = 0;
    while (i < j)
    {
      if (((Reference)h.get(i)).get() == this)
      {
        h.remove(i);
        return;
      }
      i += 1;
    }
    throw new IllegalStateException();
  }
  
  private boolean b(IOException paramIOException)
  {
    if ((paramIOException instanceof ProtocolException)) {}
    do
    {
      return false;
      if ((paramIOException instanceof InterruptedIOException)) {
        return paramIOException instanceof SocketTimeoutException;
      }
    } while ((((paramIOException instanceof SSLHandshakeException)) && ((paramIOException.getCause() instanceof CertificateException))) || ((paramIOException instanceof SSLPeerUnverifiedException)));
    return true;
  }
  
  private i d()
  {
    return d.b.a(c);
  }
  
  /* Error */
  public n a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2)
    throws t, IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: iload_1
    //   2: iload_2
    //   3: iload_3
    //   4: iload 4
    //   6: iload 5
    //   8: invokespecial 192	ss/ss/gK/w:b	(IIIZZ)Lss/ss/pK/c;
    //   11: astore 6
    //   13: aload 6
    //   15: getfield 195	ss/ss/pK/c:c	Lss/ss/ss/d;
    //   18: ifnull +39 -> 57
    //   21: new 197	ss/ss/gK/g
    //   24: dup
    //   25: aload_0
    //   26: aload 6
    //   28: getfield 195	ss/ss/pK/c:c	Lss/ss/ss/d;
    //   31: invokespecial 200	ss/ss/gK/g:<init>	(Lss/ss/gK/w;Lss/ss/ss/d;)V
    //   34: astore 6
    //   36: aload_0
    //   37: getfield 26	ss/ss/gK/w:c	Lss/l;
    //   40: astore 7
    //   42: aload 7
    //   44: monitorenter
    //   45: aload_0
    //   46: aload 6
    //   48: putfield 55	ss/ss/gK/w:h	Lss/ss/gK/n;
    //   51: aload 7
    //   53: monitorexit
    //   54: aload 6
    //   56: areturn
    //   57: aload 6
    //   59: invokevirtual 134	ss/ss/pK/c:b	()Ljava/net/Socket;
    //   62: iload_2
    //   63: invokevirtual 206	java/net/Socket:setSoTimeout	(I)V
    //   66: aload 6
    //   68: getfield 209	ss/ss/pK/c:e	LgK/g;
    //   71: invokeinterface 214 1 0
    //   76: iload_2
    //   77: i2l
    //   78: getstatic 220	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   81: invokevirtual 225	gK/x:a	(JLjava/util/concurrent/TimeUnit;)LgK/x;
    //   84: pop
    //   85: aload 6
    //   87: getfield 228	ss/ss/pK/c:f	LgK/f;
    //   90: invokeinterface 231 1 0
    //   95: iload_3
    //   96: i2l
    //   97: getstatic 220	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   100: invokevirtual 225	gK/x:a	(JLjava/util/concurrent/TimeUnit;)LgK/x;
    //   103: pop
    //   104: new 233	ss/ss/gK/e
    //   107: dup
    //   108: aload_0
    //   109: aload 6
    //   111: getfield 209	ss/ss/pK/c:e	LgK/g;
    //   114: aload 6
    //   116: getfield 228	ss/ss/pK/c:f	LgK/f;
    //   119: invokespecial 236	ss/ss/gK/e:<init>	(Lss/ss/gK/w;LgK/g;LgK/f;)V
    //   122: astore 6
    //   124: goto -88 -> 36
    //   127: astore 6
    //   129: new 44	ss/ss/gK/t
    //   132: dup
    //   133: aload 6
    //   135: invokespecial 238	ss/ss/gK/t:<init>	(Ljava/io/IOException;)V
    //   138: athrow
    //   139: astore 6
    //   141: aload 7
    //   143: monitorexit
    //   144: aload 6
    //   146: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	147	0	this	w
    //   0	147	1	paramInt1	int
    //   0	147	2	paramInt2	int
    //   0	147	3	paramInt3	int
    //   0	147	4	paramBoolean1	boolean
    //   0	147	5	paramBoolean2	boolean
    //   11	112	6	localObject1	Object
    //   127	7	6	localIOException	IOException
    //   139	6	6	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   0	36	127	java/io/IOException
    //   36	45	127	java/io/IOException
    //   57	124	127	java/io/IOException
    //   144	147	127	java/io/IOException
    //   45	54	139	finally
    //   141	144	139	finally
  }
  
  public c a()
  {
    try
    {
      c localC = e;
      return localC;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(IOException paramIOException)
  {
    synchronized (c)
    {
      if ((e != null) && (e.d == 0))
      {
        if ((b != null) && (paramIOException != null)) {
          d.a(b, paramIOException);
        }
        b = null;
      }
      a(true, false, true);
      return;
    }
  }
  
  public void a(c paramC)
  {
    h.add(new WeakReference(this));
  }
  
  public void a(boolean paramBoolean, n paramN)
  {
    l localL = c;
    if (paramN != null) {}
    try
    {
      if (paramN != h) {
        throw new IllegalStateException("expected " + h + " but was " + paramN);
      }
    }
    finally
    {
      throw paramN;
      if (!paramBoolean)
      {
        paramN = e;
        d += 1;
      }
    }
  }
  
  public boolean a(IOException paramIOException, v paramV)
  {
    boolean bool = true;
    if (e != null) {
      a(paramIOException);
    }
    if ((paramV == null) || ((paramV instanceof s))) {}
    for (int i = 1;; i = 0)
    {
      if (((d != null) && (!d.a())) || (!b(paramIOException)) || (i == 0)) {
        bool = false;
      }
      return bool;
    }
  }
  
  public void b()
  {
    a(false, true, false);
  }
  
  public void c()
  {
    a(true, false, false);
  }
  
  public String toString()
  {
    return a.toString();
  }
}
