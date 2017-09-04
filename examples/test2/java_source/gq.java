import java.io.IOException;

public final class gq
  extends fv
{
  private char[] a;
  
  gq(char[] paramArrayOfChar)
  {
    a = paramArrayOfChar;
  }
  
  final int a()
  {
    return id.a(a.length << 1) + 1 + (a.length << 1);
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    paramFs.b(30);
    paramFs.a(a.length << 1);
    int i = 0;
    while (i != a.length)
    {
      int j = a[i];
      paramFs.b((byte)(j >> 8));
      paramFs.b((byte)j);
      i += 1;
    }
  }
  
  final boolean a()
  {
    return false;
  }
  
  protected final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof gq)) {}
    Object localObject;
    do
    {
      return false;
      localObject = (gq)paramFv;
      paramFv = a;
      localObject = a;
      if (paramFv == localObject) {
        break;
      }
    } while ((paramFv == null) || (localObject == null) || (paramFv.length != localObject.length));
    int i = 0;
    for (;;)
    {
      if (i == paramFv.length) {
        break label68;
      }
      if (paramFv[i] != localObject[i]) {
        break;
      }
      i += 1;
    }
    label68:
    return true;
  }
  
  public final int hashCode()
  {
    char[] arrayOfChar = a;
    if (arrayOfChar == null)
    {
      j = 0;
      return j;
    }
    int j = arrayOfChar.length;
    int i = j + 1;
    for (;;)
    {
      int k = j - 1;
      j = i;
      if (k < 0) {
        break;
      }
      i = i * 257 ^ arrayOfChar[k];
      j = k;
    }
  }
  
  public final String toString()
  {
    return new String(a);
  }
}
