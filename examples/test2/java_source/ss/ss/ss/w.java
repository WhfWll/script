package ss.ss.ss;

import gK.g;
import gK.h;
import gK.m;
import gK.n;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

class w
{
  private final m a = new m(new x(this, paramG), new y(this));
  private int b;
  private final g c = n.a(a);
  
  public w(g paramG) {}
  
  private h b()
    throws IOException
  {
    int i = c.j();
    return c.c(i);
  }
  
  private void c()
    throws IOException
  {
    if (b > 0)
    {
      a.b();
      if (b != 0) {
        throw new IOException("compressedLimit > 0: " + b);
      }
    }
  }
  
  public List<r> a(int paramInt)
    throws IOException
  {
    b += paramInt;
    int i = c.j();
    if (i < 0) {
      throw new IOException("numberOfPairs < 0: " + i);
    }
    if (i > 1024) {
      throw new IOException("numberOfPairs > 1024: " + i);
    }
    ArrayList localArrayList = new ArrayList(i);
    paramInt = 0;
    while (paramInt < i)
    {
      h localH1 = b().e();
      h localH2 = b();
      if (localH1.f() == 0) {
        throw new IOException("name.size == 0");
      }
      localArrayList.add(new r(localH1, localH2));
      paramInt += 1;
    }
    c();
    return localArrayList;
  }
  
  public void a()
    throws IOException
  {
    c.close();
  }
}
