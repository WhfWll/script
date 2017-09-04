import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;

public final class kz
  extends kp
{
  public kz(int paramInt)
  {
    super((byte)7);
    b = paramInt;
  }
  
  public kz(lc paramLc)
  {
    super((byte)7);
    b = paramLc.c();
  }
  
  public kz(byte[] paramArrayOfByte)
    throws IOException
  {
    super((byte)7);
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
