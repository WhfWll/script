import android.os.SystemClock;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.HashSet;
import java.util.Iterator;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

final class fb
  implements HttpRequestRetryHandler
{
  private static HashSet<Class<?>> a = new HashSet();
  private static HashSet<Class<?>> b = new HashSet();
  
  static
  {
    a.add(NoHttpResponseException.class);
    a.add(UnknownHostException.class);
    a.add(SocketException.class);
    b.add(InterruptedIOException.class);
    b.add(SSLHandshakeException.class);
  }
  
  public fb() {}
  
  private static boolean a(HashSet<Class<?>> paramHashSet, Throwable paramThrowable)
  {
    paramHashSet = paramHashSet.iterator();
    while (paramHashSet.hasNext()) {
      if (((Class)paramHashSet.next()).isInstance(paramThrowable)) {
        return true;
      }
    }
    return false;
  }
  
  public final boolean retryRequest(IOException paramIOException, int paramInt, HttpContext paramHttpContext)
  {
    Boolean localBoolean = (Boolean)paramHttpContext.getAttribute("http.request_sent");
    int i;
    boolean bool1;
    if ((localBoolean != null) && (localBoolean.booleanValue()))
    {
      i = 1;
      if (paramInt <= 5) {
        break label93;
      }
      bool1 = false;
    }
    for (;;)
    {
      label37:
      boolean bool2 = bool1;
      if (bool1) {
        if (((HttpUriRequest)paramHttpContext.getAttribute("http.request")).getMethod().equals("POST")) {
          break label136;
        }
      }
      label93:
      label136:
      for (bool2 = true;; bool2 = false)
      {
        if (!bool2) {
          break label142;
        }
        SystemClock.sleep(1500L);
        return bool2;
        i = 0;
        break;
        if (a(b, paramIOException))
        {
          bool1 = false;
          break label37;
        }
        if (a(a, paramIOException))
        {
          bool1 = true;
          break label37;
        }
        if (i != 0) {
          break label149;
        }
        bool1 = true;
        break label37;
      }
      label142:
      paramIOException.printStackTrace();
      return bool2;
      label149:
      bool1 = true;
    }
  }
}
