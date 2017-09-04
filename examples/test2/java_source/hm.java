import java.io.IOException;

public final class hm
  extends fv
{
  private byte[] a;
  
  public hm(byte[] paramArrayOfByte)
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
    paramFs.a(20, a);
  }
  
  final boolean a()
  {
    return false;
  }
  
  final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof hm)) {
      return false;
    }
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
