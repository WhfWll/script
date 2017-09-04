package ss;

import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

public final class v
{
  private final ao a;
  private final j b;
  private final List<Certificate> c;
  private final List<Certificate> d;
  
  private v(ao paramAo, j paramJ, List<Certificate> paramList1, List<Certificate> paramList2)
  {
    a = paramAo;
    b = paramJ;
    c = paramList1;
    d = paramList2;
  }
  
  public static v a(SSLSession paramSSLSession)
  {
    Object localObject = paramSSLSession.getCipherSuite();
    if (localObject == null) {
      throw new IllegalStateException("cipherSuite == null");
    }
    j localJ = j.a((String)localObject);
    localObject = paramSSLSession.getProtocol();
    if (localObject == null) {
      throw new IllegalStateException("tlsVersion == null");
    }
    ao localAo = ao.a((String)localObject);
    try
    {
      localObject = paramSSLSession.getPeerCertificates();
      if (localObject != null)
      {
        localObject = ss.ss.j.a((Object[])localObject);
        paramSSLSession = paramSSLSession.getLocalCertificates();
        if (paramSSLSession == null) {
          break label109;
        }
        paramSSLSession = ss.ss.j.a(paramSSLSession);
        return new v(localAo, localJ, (List)localObject, paramSSLSession);
      }
    }
    catch (SSLPeerUnverifiedException localSSLPeerUnverifiedException)
    {
      for (;;)
      {
        List localList = null;
        continue;
        localList = Collections.emptyList();
        continue;
        label109:
        paramSSLSession = Collections.emptyList();
      }
    }
  }
  
  public j a()
  {
    return b;
  }
  
  public List<Certificate> b()
  {
    return c;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof v)) {}
    do
    {
      return false;
      paramObject = (v)paramObject;
    } while ((!ss.ss.j.a(b, b)) || (!b.equals(b)) || (!c.equals(c)) || (!d.equals(d)));
    return true;
  }
  
  public int hashCode()
  {
    if (a != null) {}
    for (int i = a.hashCode();; i = 0) {
      return (((i + 527) * 31 + b.hashCode()) * 31 + c.hashCode()) * 31 + d.hashCode();
    }
  }
}
