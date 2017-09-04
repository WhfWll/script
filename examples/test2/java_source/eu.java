import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

final class eu
  implements Runnable
{
  private int jdField_a_of_type_Int;
  private final ev jdField_a_of_type_Ev;
  private final HttpUriRequest jdField_a_of_type_OrgApacheHttpClientMethodsHttpUriRequest;
  private final AbstractHttpClient jdField_a_of_type_OrgApacheHttpImplClientAbstractHttpClient;
  private final HttpContext jdField_a_of_type_OrgApacheHttpProtocolHttpContext;
  private boolean jdField_a_of_type_Boolean;
  
  public eu(AbstractHttpClient paramAbstractHttpClient, HttpContext paramHttpContext, HttpUriRequest paramHttpUriRequest, ev paramEv)
  {
    jdField_a_of_type_OrgApacheHttpImplClientAbstractHttpClient = paramAbstractHttpClient;
    jdField_a_of_type_OrgApacheHttpProtocolHttpContext = paramHttpContext;
    jdField_a_of_type_OrgApacheHttpClientMethodsHttpUriRequest = paramHttpUriRequest;
    jdField_a_of_type_Ev = paramEv;
    if ((paramEv instanceof ex)) {
      jdField_a_of_type_Boolean = true;
    }
  }
  
  public final void run()
  {
    try
    {
      if (jdField_a_of_type_Ev != null) {
        jdField_a_of_type_Ev.a();
      }
      localObject = jdField_a_of_type_OrgApacheHttpImplClientAbstractHttpClient.getHttpRequestRetryHandler();
      bool = true;
      localHttpResponse = null;
    }
    catch (IOException localIOException1)
    {
      IOException localIOException3;
      for (;;)
      {
        try
        {
          HttpResponse localHttpResponse;
          if (!Thread.currentThread().isInterrupted())
          {
            localHttpResponse = jdField_a_of_type_OrgApacheHttpImplClientAbstractHttpClient.execute(jdField_a_of_type_OrgApacheHttpClientMethodsHttpUriRequest, jdField_a_of_type_OrgApacheHttpProtocolHttpContext);
            if ((!Thread.currentThread().isInterrupted()) && (jdField_a_of_type_Ev != null)) {
              jdField_a_of_type_Ev.a(localHttpResponse);
            }
          }
          if (jdField_a_of_type_Ev == null) {
            return;
          }
          jdField_a_of_type_Ev.b();
          return;
        }
        catch (UnknownHostException localUnknownHostException)
        {
          if (jdField_a_of_type_Ev != null)
          {
            jdField_a_of_type_Ev.a(localUnknownHostException, "can't resolve host");
            continue;
            localIOException1 = localIOException1;
            if (jdField_a_of_type_Ev == null) {
              return;
            }
            jdField_a_of_type_Ev.b();
            if (!jdField_a_of_type_Boolean) {
              break;
            }
            jdField_a_of_type_Ev.a(localIOException1, null);
            return;
          }
        }
        catch (SocketException localSocketException)
        {
          if (jdField_a_of_type_Ev != null) {
            jdField_a_of_type_Ev.a(localSocketException, "can't resolve host");
          }
        }
        catch (SocketTimeoutException localSocketTimeoutException)
        {
          if (jdField_a_of_type_Ev != null) {
            jdField_a_of_type_Ev.a(localSocketTimeoutException, "socket time out");
          }
        }
        catch (IOException localIOException2)
        {
          i = jdField_a_of_type_Int + 1;
          jdField_a_of_type_Int = i;
          bool = ((HttpRequestRetryHandler)localObject).retryRequest(localIOException2, i, jdField_a_of_type_OrgApacheHttpProtocolHttpContext);
        }
        catch (NullPointerException localNullPointerException)
        {
          localIOException3 = new IOException("NPE in HttpClient" + localNullPointerException.getMessage());
          int i = jdField_a_of_type_Int + 1;
          jdField_a_of_type_Int = i;
          boolean bool = ((HttpRequestRetryHandler)localObject).retryRequest(localIOException3, i, jdField_a_of_type_OrgApacheHttpProtocolHttpContext);
        }
      }
      Object localObject = new ConnectException();
      ((ConnectException)localObject).initCause(localIOException3);
      throw ((Throwable)localObject);
      jdField_a_of_type_Ev.a(localIOException3, null);
    }
    if (bool) {}
  }
}
