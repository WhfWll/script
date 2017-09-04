import java.io.IOException;

public class gs
  extends fv
{
  private static fe jdField_a_of_type_Fe = new fe(false);
  private static final byte[] jdField_a_of_type_ArrayOfByte = { -1 };
  private static fe jdField_b_of_type_Fe = new fe(true);
  private static final byte[] jdField_b_of_type_ArrayOfByte = { 0 };
  private byte[] c;
  
  public gs(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (byte[] arrayOfByte = jdField_a_of_type_ArrayOfByte;; arrayOfByte = jdField_b_of_type_ArrayOfByte)
    {
      c = arrayOfByte;
      return;
    }
  }
  
  gs(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length != 1) {
      throw new IllegalArgumentException("byte value should have 1 byte in it");
    }
    if (paramArrayOfByte[0] == 0)
    {
      c = jdField_b_of_type_ArrayOfByte;
      return;
    }
    if (paramArrayOfByte[0] == 255)
    {
      c = jdField_a_of_type_ArrayOfByte;
      return;
    }
    c = at.a(paramArrayOfByte);
  }
  
  static fe a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length != 1) {
      throw new IllegalArgumentException("byte value should have 1 byte in it");
    }
    if (paramArrayOfByte[0] == 0) {
      return jdField_a_of_type_Fe;
    }
    if (paramArrayOfByte[0] == 255) {
      return jdField_b_of_type_Fe;
    }
    return new fe(paramArrayOfByte);
  }
  
  final int a()
  {
    return 3;
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    paramFs.a(1, c);
  }
  
  final boolean a()
  {
    return false;
  }
  
  protected final boolean a(fv paramFv)
  {
    if ((paramFv == null) || (!(paramFv instanceof gs))) {}
    while (c[0] != c[0]) {
      return false;
    }
    return true;
  }
  
  public int hashCode()
  {
    return c[0];
  }
  
  public String toString()
  {
    if (c[0] != 0) {
      return "TRUE";
    }
    return "FALSE";
  }
}
