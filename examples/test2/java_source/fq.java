import java.io.ByteArrayInputStream;
import java.io.InputStream;

public abstract class fq
  extends fv
  implements fr
{
  byte[] a;
  
  public fq(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException("string cannot be null");
    }
    a = paramArrayOfByte;
  }
  
  public final fv a()
  {
    return b();
  }
  
  public final InputStream a()
  {
    return new ByteArrayInputStream(a);
  }
  
  final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof fq)) {
      return false;
    }
    paramFv = (fq)paramFv;
    return at.a(a, a);
  }
  
  public byte[] b()
  {
    return a;
  }
  
  final fv c()
  {
    return new he(a);
  }
  
  final fv d()
  {
    return new he(a);
  }
  
  public int hashCode()
  {
    return at.a(b());
  }
  
  public String toString()
  {
    return "#" + new String(jb.a(a));
  }
}
