import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;

public final class le
  extends kp
{
  private int[] a;
  
  public le(byte[] paramArrayOfByte)
    throws IOException
  {
    super((byte)9);
    DataInputStream localDataInputStream = new DataInputStream(new ByteArrayInputStream(paramArrayOfByte));
    b = localDataInputStream.readUnsignedShort();
    int i = 0;
    a = new int[paramArrayOfByte.length - 2];
    for (int j = localDataInputStream.read(); j != -1; j = localDataInputStream.read())
    {
      a[i] = j;
      i += 1;
    }
    localDataInputStream.close();
  }
  
  protected final byte[] b_()
    throws jm
  {
    return new byte[0];
  }
}
