package ss.ss.gK;

import java.io.IOException;

public final class q
  extends Exception
{
  public IOException a()
  {
    return (IOException)super.getCause();
  }
}
