package ss;

import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

public final class n
{
  public static final n a = new a(true).a(d).a(new ao[] { ao.a, ao.b, ao.c }).a(true).a();
  public static final n b = new a(a).a(new ao[] { ao.c }).a(true).a();
  public static final n c = new a(false).a();
  private static final j[] d = { j.aK, j.aO, j.W, j.am, j.al, j.av, j.aw, j.F, j.J, j.U, j.D, j.H, j.h };
  private final boolean e;
  private final boolean f;
  private final String[] g;
  private final String[] h;
  
  private n(a paramA)
  {
    e = a.a(paramA);
    g = a.b(paramA);
    h = a.c(paramA);
    f = a.d(paramA);
  }
  
  private static boolean a(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    if ((paramArrayOfString1 == null) || (paramArrayOfString2 == null) || (paramArrayOfString1.length == 0) || (paramArrayOfString2.length == 0)) {}
    for (;;)
    {
      return false;
      int j = paramArrayOfString1.length;
      int i = 0;
      while (i < j)
      {
        if (ss.ss.j.a(paramArrayOfString2, paramArrayOfString1[i])) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  private n b(SSLSocket paramSSLSocket, boolean paramBoolean)
  {
    String[] arrayOfString1;
    if (g != null)
    {
      arrayOfString1 = (String[])ss.ss.j.a(String.class, g, paramSSLSocket.getEnabledCipherSuites());
      if (h == null) {
        break label109;
      }
    }
    label109:
    for (String[] arrayOfString2 = (String[])ss.ss.j.a(String.class, h, paramSSLSocket.getEnabledProtocols());; arrayOfString2 = paramSSLSocket.getEnabledProtocols())
    {
      String[] arrayOfString3 = arrayOfString1;
      if (paramBoolean)
      {
        arrayOfString3 = arrayOfString1;
        if (ss.ss.j.a(paramSSLSocket.getSupportedCipherSuites(), "TLS_FALLBACK_SCSV")) {
          arrayOfString3 = ss.ss.j.b(arrayOfString1, "TLS_FALLBACK_SCSV");
        }
      }
      return new a(this).a(arrayOfString3).b(arrayOfString2).a();
      arrayOfString1 = paramSSLSocket.getEnabledCipherSuites();
      break;
    }
  }
  
  void a(SSLSocket paramSSLSocket, boolean paramBoolean)
  {
    n localN = b(paramSSLSocket, paramBoolean);
    if (h != null) {
      paramSSLSocket.setEnabledProtocols(h);
    }
    if (g != null) {
      paramSSLSocket.setEnabledCipherSuites(g);
    }
  }
  
  public boolean a()
  {
    return e;
  }
  
  public boolean a(SSLSocket paramSSLSocket)
  {
    if (!e) {}
    while (((h != null) && (!a(h, paramSSLSocket.getEnabledProtocols()))) || ((g != null) && (!a(g, paramSSLSocket.getEnabledCipherSuites())))) {
      return false;
    }
    return true;
  }
  
  public List<j> b()
  {
    if (g == null) {
      return null;
    }
    j[] arrayOfJ = new j[g.length];
    int i = 0;
    while (i < g.length)
    {
      arrayOfJ[i] = j.a(g[i]);
      i += 1;
    }
    return ss.ss.j.a(arrayOfJ);
  }
  
  public List<ao> c()
  {
    if (h == null) {
      return null;
    }
    ao[] arrayOfAo = new ao[h.length];
    int i = 0;
    while (i < h.length)
    {
      arrayOfAo[i] = ao.a(h[i]);
      i += 1;
    }
    return ss.ss.j.a(arrayOfAo);
  }
  
  public boolean d()
  {
    return f;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof n)) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
      paramObject = (n)paramObject;
    } while ((e != e) || ((e) && ((!Arrays.equals(g, g)) || (!Arrays.equals(h, h)) || (f != f))));
    return true;
  }
  
  public int hashCode()
  {
    int i = 17;
    int j;
    int k;
    if (e)
    {
      j = Arrays.hashCode(g);
      k = Arrays.hashCode(h);
      if (!f) {
        break label53;
      }
    }
    label53:
    for (i = 0;; i = 1)
    {
      i += ((j + 527) * 31 + k) * 31;
      return i;
    }
  }
  
  public String toString()
  {
    if (!e) {
      return "ConnectionSpec()";
    }
    String str1;
    if (g != null)
    {
      str1 = b().toString();
      if (h == null) {
        break label92;
      }
    }
    label92:
    for (String str2 = c().toString();; str2 = "[all enabled]")
    {
      return "ConnectionSpec(cipherSuites=" + str1 + ", tlsVersions=" + str2 + ", supportsTlsExtensions=" + f + ")";
      str1 = "[all enabled]";
      break;
    }
  }
  
  public static final class a
  {
    private boolean a;
    private String[] b;
    private String[] c;
    private boolean d;
    
    public a(n paramN)
    {
      a = n.a(paramN);
      b = n.b(paramN);
      c = n.c(paramN);
      d = n.d(paramN);
    }
    
    a(boolean paramBoolean)
    {
      a = paramBoolean;
    }
    
    public a a(boolean paramBoolean)
    {
      if (!a) {
        throw new IllegalStateException("no TLS extensions for cleartext connections");
      }
      d = paramBoolean;
      return this;
    }
    
    public a a(String... paramVarArgs)
    {
      if (!a) {
        throw new IllegalStateException("no cipher suites for cleartext connections");
      }
      if (paramVarArgs.length == 0) {
        throw new IllegalArgumentException("At least one cipher suite is required");
      }
      b = ((String[])paramVarArgs.clone());
      return this;
    }
    
    public a a(ao... paramVarArgs)
    {
      if (!a) {
        throw new IllegalStateException("no TLS versions for cleartext connections");
      }
      String[] arrayOfString = new String[paramVarArgs.length];
      int i = 0;
      while (i < paramVarArgs.length)
      {
        arrayOfString[i] = e;
        i += 1;
      }
      return b(arrayOfString);
    }
    
    public a a(j... paramVarArgs)
    {
      if (!a) {
        throw new IllegalStateException("no cipher suites for cleartext connections");
      }
      String[] arrayOfString = new String[paramVarArgs.length];
      int i = 0;
      while (i < paramVarArgs.length)
      {
        arrayOfString[i] = aS;
        i += 1;
      }
      return a(arrayOfString);
    }
    
    public n a()
    {
      return new n(this, null);
    }
    
    public a b(String... paramVarArgs)
    {
      if (!a) {
        throw new IllegalStateException("no TLS versions for cleartext connections");
      }
      if (paramVarArgs.length == 0) {
        throw new IllegalArgumentException("At least one TLS version is required");
      }
      c = ((String[])paramVarArgs.clone());
      return this;
    }
  }
}
