package ss.ss.ss;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import ss.ss.f;

class m
  extends f
{
  m(d.c paramC, String paramString, Object[] paramArrayOfObject, p paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public void a()
  {
    try
    {
      d.f(c.c).a(b);
      return;
    }
    catch (IOException localIOException1)
    {
      ss.ss.d.a.log(Level.INFO, "FramedConnection.Listener failure for " + d.a(c.c), localIOException1);
      try
      {
        b.a(a.b);
        return;
      }
      catch (IOException localIOException2) {}
    }
  }
}
