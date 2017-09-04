import java.io.IOException;
import java.util.Enumeration;

public final class ht
  extends fw
{
  private int a = -1;
  
  public ht() {}
  
  public ht(fh paramFh)
  {
    super(paramFh);
  }
  
  private int c()
    throws IOException
  {
    if (a < 0)
    {
      Enumeration localEnumeration = a();
      for (int i = 0; localEnumeration.hasMoreElements(); i = ((fg)localEnumeration.nextElement()).b().d().a() + i) {}
      a = i;
    }
    return a;
  }
  
  final int a()
    throws IOException
  {
    int i = c();
    return i + (id.a(i) + 1);
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    fs localFs = paramFs.b();
    int i = c();
    paramFs.b(48);
    paramFs.a(i);
    paramFs = a();
    while (paramFs.hasMoreElements()) {
      localFs.a((fg)paramFs.nextElement());
    }
  }
}
