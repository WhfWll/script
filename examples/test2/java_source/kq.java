import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;

public final class kq
  extends kp
{
  public int a;
  
  public kq(byte[] paramArrayOfByte)
    throws IOException
  {
    super((byte)2);
    paramArrayOfByte = new DataInputStream(new ByteArrayInputStream(paramArrayOfByte));
    paramArrayOfByte.readByte();
    a = paramArrayOfByte.readUnsignedByte();
    paramArrayOfByte.close();
  }
  
  public final boolean a()
  {
    return false;
  }
  
  protected final byte[] b_()
    throws jm
  {
    return new byte[0];
  }
}
