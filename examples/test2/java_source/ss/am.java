package ss;

import gK.g;
import java.io.Closeable;
import java.io.IOException;
import java.nio.charset.Charset;
import ss.ss.j;

public abstract class am
  implements Closeable
{
  public am() {}
  
  private Charset f()
  {
    ab localAb = a();
    if (localAb != null) {
      return localAb.a(j.c);
    }
    return j.c;
  }
  
  public abstract ab a();
  
  public abstract long b();
  
  public abstract g c();
  
  public void close()
  {
    j.a(c());
  }
  
  public final byte[] d()
    throws IOException
  {
    long l = b();
    if (l > 2147483647L) {
      throw new IOException("Cannot buffer entire body for content length: " + l);
    }
    g localG = c();
    try
    {
      byte[] arrayOfByte1 = localG.q();
      j.a(localG);
      if ((l != -1L) && (l != arrayOfByte1.length)) {
        throw new IOException("Content-Length and stream length disagree");
      }
    }
    finally
    {
      j.a(localG);
    }
    return arrayOfByte2;
  }
  
  public final String e()
    throws IOException
  {
    return new String(d(), f().name());
  }
}
