import java.io.IOException;

public class ho
  extends fv
{
  private byte[] a;
  
  ho(byte[] paramArrayOfByte)
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
    paramFs.b(23);
    int j = a.length;
    paramFs.a(j);
    int i = 0;
    while (i != j)
    {
      paramFs.b(a[i]);
      i += 1;
    }
  }
  
  final boolean a()
  {
    return false;
  }
  
  final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof ho)) {
      return false;
    }
    return at.a(a, a);
  }
  
  public int hashCode()
  {
    return at.a(a);
  }
  
  public String toString()
  {
    return at.a(a);
  }
}
