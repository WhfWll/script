package ss;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import ss.ss.b;
import ss.ss.e;

public final class d
  implements Closeable, Flushable
{
  final e a;
  private final b b;
  
  public void close()
    throws IOException
  {
    b.close();
  }
  
  public void flush()
    throws IOException
  {
    b.flush();
  }
}
