import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public final class la
  extends kp
{
  public String a = null;
  public String b;
  
  public la(lc paramLc)
  {
    super((byte)5);
    jdField_b_of_type_JavaLangString = null;
    jdField_b_of_type_Int = paramLc.c();
  }
  
  public la(byte[] paramArrayOfByte)
    throws IOException
  {
    super((byte)5);
    jdField_b_of_type_JavaLangString = null;
    ko localKo = new ko(new ByteArrayInputStream(paramArrayOfByte));
    DataInputStream localDataInputStream = new DataInputStream(localKo);
    jdField_b_of_type_Int = localDataInputStream.readUnsignedShort();
    localDataInputStream.close();
    if (paramArrayOfByte.length > localKo.a())
    {
      paramArrayOfByte = new byte[paramArrayOfByte.length - localKo.a()];
      localDataInputStream.readFully(paramArrayOfByte);
      paramArrayOfByte = new String(paramArrayOfByte);
    }
    try
    {
      a = new JSONObject(paramArrayOfByte).optString("msgId", null);
      jdField_b_of_type_JavaLangString = paramArrayOfByte;
      return;
    }
    catch (JSONException paramArrayOfByte) {}
  }
  
  protected final byte[] b_()
    throws jm
  {
    return d();
  }
}
