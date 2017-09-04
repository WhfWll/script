import java.io.ByteArrayOutputStream;
import java.io.IOException;

public abstract class fo
  implements fg
{
  public fo() {}
  
  public final byte[] a()
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    new fs(localByteArrayOutputStream).a(this);
    return localByteArrayOutputStream.toByteArray();
  }
  
  public final byte[] a(String paramString)
    throws IOException
  {
    if (paramString.equals("DER"))
    {
      paramString = new ByteArrayOutputStream();
      new hg(paramString).a(this);
      return paramString.toByteArray();
    }
    if (paramString.equals("DL"))
    {
      paramString = new ByteArrayOutputStream();
      new hs(paramString).a(this);
      return paramString.toByteArray();
    }
    return a();
  }
  
  public abstract fv b();
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof fg)) {
      return false;
    }
    paramObject = (fg)paramObject;
    return b().equals(paramObject.b());
  }
  
  public int hashCode()
  {
    return b().hashCode();
  }
}
