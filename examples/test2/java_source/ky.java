import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;

public final class ky
  extends kp
{
  public ky(lc paramLc)
  {
    super((byte)4);
    b = paramLc.c();
  }
  
  public ky(byte[] paramArrayOfByte)
    throws IOException
  {
    super((byte)4);
    paramArrayOfByte = new DataInputStream(new ByteArrayInputStream(paramArrayOfByte));
    b = paramArrayOfByte.readUnsignedShort();
    paramArrayOfByte.close();
  }
  
  protected final byte[] b_()
    throws jm
  {
    return d();
  }
}
