import java.io.IOException;

public final class hh
  extends fv
{
  private byte[] a;
  
  hh(byte[] paramArrayOfByte)
  {
    a = paramArrayOfByte;
  }
  
  final int a()
  {
    return id.a(a.length) + 1 + a.length;
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    paramFs.a(19, a);
  }
  
  final boolean a()
  {
    return false;
  }
  
  final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof hh)) {
      return false;
    }
    paramFv = (hh)paramFv;
    return at.a(a, a);
  }
  
  public final int hashCode()
  {
    return at.a(a);
  }
  
  public final String toString()
  {
    return at.a(a);
  }
}
