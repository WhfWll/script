import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

public final class hk
  extends fy
{
  private int a = -1;
  
  public hk() {}
  
  hk(fh paramFh)
  {
    super(paramFh);
  }
  
  private int b()
    throws IOException
  {
    if (a < 0)
    {
      Enumeration localEnumeration = a.elements();
      for (int i = 0; localEnumeration.hasMoreElements(); i = ((fg)localEnumeration.nextElement()).b().c().a() + i) {}
      a = i;
    }
    return a;
  }
  
  final int a()
    throws IOException
  {
    int i = b();
    return i + (id.a(i) + 1);
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    fs localFs = paramFs.a();
    int i = b();
    paramFs.b(49);
    paramFs.a(i);
    paramFs = a.elements();
    while (paramFs.hasMoreElements()) {
      localFs.a((fg)paramFs.nextElement());
    }
  }
}
