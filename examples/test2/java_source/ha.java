import java.io.IOException;
import java.math.BigInteger;

public class ha
  extends fv
{
  private byte[] a;
  
  public ha(BigInteger paramBigInteger)
  {
    a = paramBigInteger.toByteArray();
  }
  
  public ha(byte[] paramArrayOfByte)
  {
    a = paramArrayOfByte;
  }
  
  final int a()
  {
    return id.a(a.length) + 1 + a.length;
  }
  
  public final BigInteger a()
  {
    return new BigInteger(a);
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    paramFs.a(2, a);
  }
  
  final boolean a()
  {
    return false;
  }
  
  final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof ha)) {
      return false;
    }
    paramFv = (ha)paramFv;
    return at.a(a, a);
  }
  
  public int hashCode()
  {
    int i = 0;
    int j = 0;
    while (i != a.length)
    {
      j ^= (a[i] & 0xFF) << i % 4;
      i += 1;
    }
    return j;
  }
  
  public String toString()
  {
    return a().toString();
  }
}
