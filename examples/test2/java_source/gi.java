import java.io.IOException;
import java.util.Enumeration;

public final class gi
  extends fw
{
  public gi() {}
  
  public gi(fh paramFh)
  {
    super(paramFh);
  }
  
  final int a()
    throws IOException
  {
    Enumeration localEnumeration = a();
    for (int i = 0; localEnumeration.hasMoreElements(); i = ((fg)localEnumeration.nextElement()).b().a() + i) {}
    return i + 2 + 2;
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    paramFs.b(48);
    paramFs.b(128);
    Enumeration localEnumeration = a();
    while (localEnumeration.hasMoreElements()) {
      paramFs.a((fg)localEnumeration.nextElement());
    }
    paramFs.b(0);
    paramFs.b(0);
  }
}
