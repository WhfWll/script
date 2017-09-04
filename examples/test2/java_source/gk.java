import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

public final class gk
  extends fy
{
  public gk() {}
  
  public gk(fh paramFh)
  {
    super(paramFh);
  }
  
  final int a()
    throws IOException
  {
    Enumeration localEnumeration = a.elements();
    for (int i = 0; localEnumeration.hasMoreElements(); i = ((fg)localEnumeration.nextElement()).b().a() + i) {}
    return i + 2 + 2;
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    paramFs.b(49);
    paramFs.b(128);
    Enumeration localEnumeration = a.elements();
    while (localEnumeration.hasMoreElements()) {
      paramFs.a((fg)localEnumeration.nextElement());
    }
    paramFs.b(0);
    paramFs.b(0);
  }
}
