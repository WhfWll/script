package ss.ss.ss;

import gK.e;
import java.io.IOException;
import java.util.Set;
import ss.ss.f;

class j
  extends f
{
  j(d paramD, String paramString, Object[] paramArrayOfObject, int paramInt1, e paramE, int paramInt2, boolean paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public void a()
  {
    try
    {
      boolean bool = d.h(f).a(b, c, d, e);
      if (bool) {
        f.i.a(b, a.l);
      }
      if ((bool) || (e)) {
        synchronized (f)
        {
          d.i(f).remove(Integer.valueOf(b));
          return;
        }
      }
      return;
    }
    catch (IOException localIOException) {}
  }
}
