package ss.ss;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;
import ss.n;

public final class a
{
  private final List<n> a;
  private int b = 0;
  private boolean c;
  private boolean d;
  
  public a(List<n> paramList)
  {
    a = paramList;
  }
  
  private boolean b(SSLSocket paramSSLSocket)
  {
    int i = b;
    while (i < a.size())
    {
      if (((n)a.get(i)).a(paramSSLSocket)) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public n a(SSLSocket paramSSLSocket)
    throws IOException
  {
    int i = b;
    int j = a.size();
    n localN;
    if (i < j)
    {
      localN = (n)a.get(i);
      if (localN.a(paramSSLSocket)) {
        b = (i + 1);
      }
    }
    for (;;)
    {
      if (localN == null)
      {
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + d + ", modes=" + a + ", supported protocols=" + Arrays.toString(paramSSLSocket.getEnabledProtocols()));
        i += 1;
        break;
      }
      c = b(paramSSLSocket);
      d.b.a(localN, paramSSLSocket, d);
      return localN;
      localN = null;
    }
  }
  
  public boolean a(IOException paramIOException)
  {
    d = true;
    if (!c) {}
    while (((paramIOException instanceof ProtocolException)) || ((paramIOException instanceof InterruptedIOException)) || (((paramIOException instanceof SSLHandshakeException)) && ((paramIOException.getCause() instanceof CertificateException))) || ((paramIOException instanceof SSLPeerUnverifiedException)) || ((!(paramIOException instanceof SSLHandshakeException)) && (!(paramIOException instanceof SSLProtocolException)))) {
      return false;
    }
    return true;
  }
}
