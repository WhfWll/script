import java.io.IOException;
import java.io.OutputStream;

public abstract interface iz
{
  public abstract int a(String paramString, OutputStream paramOutputStream)
    throws IOException;
  
  public abstract int a(byte[] paramArrayOfByte, int paramInt, OutputStream paramOutputStream)
    throws IOException;
}
