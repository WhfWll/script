import java.io.IOException;
import java.io.OutputStream;

final class ft
  extends fs
{
  private boolean a = true;
  
  public ft(OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  public final void b(int paramInt)
    throws IOException
  {
    if (a)
    {
      a = false;
      return;
    }
    super.b(paramInt);
  }
}
