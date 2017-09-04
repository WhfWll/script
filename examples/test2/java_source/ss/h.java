package ss;

import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import ss.ss.gq.b;
import ss.ss.gq.f;
import ss.ss.j;

public final class h
{
  public static final h a = new a().a();
  private final List<b> b;
  private final f c;
  
  private h(a paramA)
  {
    b = j.a(a.a(paramA));
    c = a.b(paramA);
  }
  
  static gK.h a(X509Certificate paramX509Certificate)
  {
    return j.a(gK.h.a(paramX509Certificate.getPublicKey().getEncoded()));
  }
  
  public static String a(Certificate paramCertificate)
  {
    if (!(paramCertificate instanceof X509Certificate)) {
      throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }
    return "sha256/" + b((X509Certificate)paramCertificate).b();
  }
  
  static gK.h b(X509Certificate paramX509Certificate)
  {
    return j.b(gK.h.a(paramX509Certificate.getPublicKey().getEncoded()));
  }
  
  List<b> a(String paramString)
  {
    Object localObject1 = Collections.emptyList();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      b localB = (b)localIterator.next();
      if (localB.a(paramString))
      {
        Object localObject2 = localObject1;
        if (((List)localObject1).isEmpty()) {
          localObject2 = new ArrayList();
        }
        ((List)localObject2).add(localB);
        localObject1 = localObject2;
      }
    }
    return localObject1;
  }
  
  a a()
  {
    return new a(this);
  }
  
  public void a(String paramString, List<Certificate> paramList)
    throws SSLPeerUnverifiedException
  {
    List localList = a(paramString);
    if (localList.isEmpty()) {
      return;
    }
    Object localObject3 = paramList;
    if (c != null) {
      localObject3 = new b(c).a(paramList);
    }
    int k = ((List)localObject3).size();
    int i = 0;
    Object localObject1;
    for (;;)
    {
      if (i >= k) {
        break label227;
      }
      X509Certificate localX509Certificate = (X509Certificate)((List)localObject3).get(i);
      int m = localList.size();
      j = 0;
      paramList = null;
      localObject1 = null;
      if (j < m)
      {
        b localB = (b)localList.get(j);
        Object localObject2;
        if (b.equals("sha256/"))
        {
          localObject2 = paramList;
          if (paramList == null) {
            localObject2 = b(localX509Certificate);
          }
          if (c.equals(localObject2)) {
            break;
          }
          paramList = (List<Certificate>)localObject2;
        }
        do
        {
          j += 1;
          break;
          if (!b.equals("sha1/")) {
            break label212;
          }
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = a(localX509Certificate);
          }
          localObject1 = localObject2;
        } while (!c.equals(localObject2));
        return;
        label212:
        throw new AssertionError();
      }
      i += 1;
    }
    label227:
    paramList = new StringBuilder().append("Certificate pinning failure!").append("\n  Peer certificate chain:");
    int j = ((List)localObject3).size();
    i = 0;
    while (i < j)
    {
      localObject1 = (X509Certificate)((List)localObject3).get(i);
      paramList.append("\n    ").append(a((Certificate)localObject1)).append(": ").append(((X509Certificate)localObject1).getSubjectDN().getName());
      i += 1;
    }
    paramList.append("\n  Pinned certificates for ").append(paramString).append(":");
    j = localList.size();
    i = 0;
    while (i < j)
    {
      paramString = (b)localList.get(i);
      paramList.append("\n    ").append(paramString);
      i += 1;
    }
    throw new SSLPeerUnverifiedException(paramList.toString());
  }
  
  public static final class a
  {
    private final List<h.b> a = new ArrayList();
    private f b;
    
    public a() {}
    
    a(h paramH)
    {
      a.addAll(h.a(paramH));
      b = h.b(paramH);
    }
    
    public a a(f paramF)
    {
      b = paramF;
      return this;
    }
    
    public h a()
    {
      return new h(this, null);
    }
  }
  
  static final class b
  {
    final String a;
    final String b;
    final gK.h c;
    
    boolean a(String paramString)
    {
      boolean bool2 = false;
      if (a.equals(paramString)) {
        return true;
      }
      int i = paramString.indexOf('.');
      boolean bool1 = bool2;
      if (a.startsWith("*."))
      {
        bool1 = bool2;
        if (paramString.regionMatches(false, i + 1, a, 2, a.length() - 2)) {
          bool1 = true;
        }
      }
      return bool1;
    }
    
    public boolean equals(Object paramObject)
    {
      return ((paramObject instanceof b)) && (a.equals(a)) && (b.equals(b)) && (c.equals(c));
    }
    
    public int hashCode()
    {
      return ((a.hashCode() + 527) * 31 + b.hashCode()) * 31 + c.hashCode();
    }
    
    public String toString()
    {
      return b + c.b();
    }
  }
}
