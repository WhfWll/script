import java.io.IOException;

public class gy
  extends fv
{
  private byte[] a;
  
  gy(byte[] paramArrayOfByte)
  {
    a = paramArrayOfByte;
  }
  
  final int a()
  {
    int i = a.length;
    return i + (id.a(i) + 1);
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    paramFs.a(24, a);
  }
  
  final boolean a()
  {
    return false;
  }
  
  final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof gy)) {
      return false;
    }
    return at.a(a, a);
  }
  
  public int hashCode()
  {
    return at.a(a);
  }
}
