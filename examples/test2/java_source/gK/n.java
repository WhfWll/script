package gK;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;

public final class n
{
  static final Logger a = Logger.getLogger(n.class.getName());
  
  private n() {}
  
  public static f a(v paramV)
  {
    if (paramV == null) {
      throw new IllegalArgumentException("sink == null");
    }
    return new r(paramV);
  }
  
  public static g a(w paramW)
  {
    if (paramW == null) {
      throw new IllegalArgumentException("source == null");
    }
    return new s(paramW);
  }
  
  private static v a(OutputStream paramOutputStream, x paramX)
  {
    if (paramOutputStream == null) {
      throw new IllegalArgumentException("out == null");
    }
    if (paramX == null) {
      throw new IllegalArgumentException("timeout == null");
    }
    return new o(paramX, paramOutputStream);
  }
  
  public static v a(Socket paramSocket)
    throws IOException
  {
    if (paramSocket == null) {
      throw new IllegalArgumentException("socket == null");
    }
    a localA = c(paramSocket);
    return localA.a(a(paramSocket.getOutputStream(), localA));
  }
  
  private static w a(InputStream paramInputStream, x paramX)
  {
    if (paramInputStream == null) {
      throw new IllegalArgumentException("in == null");
    }
    if (paramX == null) {
      throw new IllegalArgumentException("timeout == null");
    }
    return new p(paramX, paramInputStream);
  }
  
  static boolean a(AssertionError paramAssertionError)
  {
    return (paramAssertionError.getCause() != null) && (paramAssertionError.getMessage() != null) && (paramAssertionError.getMessage().contains("getsockname failed"));
  }
  
  public static w b(Socket paramSocket)
    throws IOException
  {
    if (paramSocket == null) {
      throw new IllegalArgumentException("socket == null");
    }
    a localA = c(paramSocket);
    return localA.a(a(paramSocket.getInputStream(), localA));
  }
  
  private static a c(Socket paramSocket)
  {
    return new q(paramSocket);
  }
}
