import java.io.IOException;
import java.io.OutputStream;

public final class hs
  extends fs
{
  public hs(OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  public final void a(fg paramFg)
    throws IOException
  {
    if (paramFg != null)
    {
      paramFg.b().d().a(this);
      return;
    }
    throw new IOException("null object detected");
  }
}
