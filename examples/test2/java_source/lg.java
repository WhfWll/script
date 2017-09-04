import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;

public final class lg
  extends kp
{
  public lg(byte[] paramArrayOfByte)
    throws IOException
  {
    super((byte)11);
    paramArrayOfByte = new DataInputStream(new ByteArrayInputStream(paramArrayOfByte));
    b = paramArrayOfByte.readUnsignedShort();
    paramArrayOfByte.close();
  }
  
  protected final byte[] b_()
    throws jm
  {
    return new byte[0];
  }
}
