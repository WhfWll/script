import java.io.IOException;
import java.io.OutputStream;

public final class hg
  extends fs
{
  public hg(OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  final fs a()
  {
    return this;
  }
  
  public final void a(fg paramFg)
    throws IOException
  {
    if (paramFg != null)
    {
      paramFg.b().c().a(this);
      return;
    }
    throw new IOException("null object detected");
  }
  
  final fs b()
  {
    return this;
  }
}
