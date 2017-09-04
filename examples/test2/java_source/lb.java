import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;

public final class lb
  extends kv
{
  public lb(la paramLa)
  {
    super((byte)6);
    a(paramLa.c());
  }
  
  public lb(byte[] paramArrayOfByte)
    throws IOException
  {
    super((byte)6);
    paramArrayOfByte = new DataInputStream(new ByteArrayInputStream(paramArrayOfByte));
    b = paramArrayOfByte.readUnsignedShort();
    paramArrayOfByte.close();
  }
  
  protected final byte a()
  {
    return 2;
  }
  
  protected final byte[] b_()
    throws jm
  {
    return d();
  }
}
