import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class kt
  extends InputStream
{
  private DataInputStream a;
  
  public kt(InputStream paramInputStream)
  {
    a = new DataInputStream(paramInputStream);
  }
  
  public final li a()
    throws IOException, jm
  {
    Object localObject = new ByteArrayOutputStream();
    int i = a.readByte();
    int j = (byte)(i >>> 4 & 0xF);
    if ((j <= 0) || (j > 14)) {
      throw at.a(32108);
    }
    long l = aa).a;
    ((ByteArrayOutputStream)localObject).write(i);
    ((ByteArrayOutputStream)localObject).write(li.a(l));
    byte[] arrayOfByte = new byte[(int)(l + ((ByteArrayOutputStream)localObject).size())];
    a.readFully(arrayOfByte, ((ByteArrayOutputStream)localObject).size(), arrayOfByte.length - ((ByteArrayOutputStream)localObject).size());
    localObject = ((ByteArrayOutputStream)localObject).toByteArray();
    System.arraycopy(localObject, 0, arrayOfByte, 0, localObject.length);
    return li.a(new ByteArrayInputStream(arrayOfByte));
  }
  
  public final int available()
    throws IOException
  {
    return a.available();
  }
  
  public final void close()
    throws IOException
  {
    a.close();
  }
  
  public final int read()
    throws IOException
  {
    return a.read();
  }
}
