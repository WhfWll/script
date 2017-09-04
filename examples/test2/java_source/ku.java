import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class ku
  extends OutputStream
{
  private BufferedOutputStream a;
  
  public ku(OutputStream paramOutputStream)
  {
    a = new BufferedOutputStream(paramOutputStream);
  }
  
  public final void a(li paramLi)
    throws IOException, jm
  {
    byte[] arrayOfByte = paramLi.c();
    paramLi = paramLi.b();
    a.write(arrayOfByte, 0, arrayOfByte.length);
    a.write(paramLi, 0, paramLi.length);
  }
  
  public final void close()
    throws IOException
  {
    a.close();
  }
  
  public final void flush()
    throws IOException
  {
    a.flush();
  }
  
  public final void write(int paramInt)
    throws IOException
  {
    a.write(paramInt);
  }
  
  public final void write(byte[] paramArrayOfByte)
    throws IOException
  {
    a.write(paramArrayOfByte);
  }
  
  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    a.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}
