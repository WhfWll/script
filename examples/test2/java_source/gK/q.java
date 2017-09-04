package gK;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

final class q
  extends a
{
  q(Socket paramSocket) {}
  
  protected IOException a(IOException paramIOException)
  {
    SocketTimeoutException localSocketTimeoutException = new SocketTimeoutException("timeout");
    if (paramIOException != null) {
      localSocketTimeoutException.initCause(paramIOException);
    }
    return localSocketTimeoutException;
  }
  
  protected void a()
  {
    try
    {
      a.close();
      return;
    }
    catch (Exception localException)
    {
      n.a.log(Level.WARNING, "Failed to close timed out socket " + a, localException);
      return;
    }
    catch (AssertionError localAssertionError)
    {
      if (n.a(localAssertionError))
      {
        n.a.log(Level.WARNING, "Failed to close timed out socket " + a, localAssertionError);
        return;
      }
      throw localAssertionError;
    }
  }
}
