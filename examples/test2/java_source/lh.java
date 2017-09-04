import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class lh
  extends li
{
  protected final byte a()
  {
    return 2;
  }
  
  public final byte[] b()
    throws jm
  {
    try
    {
      Object localObject = new ByteArrayOutputStream();
      DataOutputStream localDataOutputStream = new DataOutputStream((OutputStream)localObject);
      int i = 0;
      while (i < null.length)
      {
        localDataOutputStream.writeUTF(null);
        i += 1;
      }
      localObject = ((ByteArrayOutputStream)localObject).toByteArray();
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new jm(localIOException);
    }
  }
  
  protected final byte[] b_()
    throws jm
  {
    try
    {
      Object localObject = new ByteArrayOutputStream();
      DataOutputStream localDataOutputStream = new DataOutputStream((OutputStream)localObject);
      localDataOutputStream.writeShort(b);
      localDataOutputStream.flush();
      localObject = ((ByteArrayOutputStream)localObject).toByteArray();
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new jm(localIOException);
    }
  }
}
