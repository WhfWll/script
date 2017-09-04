public final class ij
  extends ih
{
  private ig a;
  
  public ij()
  {
    jdField_a_of_type_Ig = new ii();
  }
  
  public final if a(int paramInt)
  {
    int k = paramInt / 8;
    Object localObject = jdField_a_of_type_Ig;
    localObject = new byte[16];
    byte[] arrayOfByte = new byte[k];
    int i = 0;
    paramInt = k;
    jdField_a_of_type_Ig.a(jdField_a_of_type_ArrayOfByte, 0, jdField_a_of_type_ArrayOfByte.length);
    jdField_a_of_type_Ig.a(b, 0, b.length);
    jdField_a_of_type_Ig.a((byte[])localObject);
    if (paramInt > localObject.length) {}
    for (int j = localObject.length;; j = paramInt)
    {
      System.arraycopy(localObject, 0, arrayOfByte, i, j);
      i += j;
      paramInt -= j;
      if (paramInt == 0) {
        break label134;
      }
      jdField_a_of_type_Ig.a();
      jdField_a_of_type_Ig.a((byte[])localObject, 0, localObject.length);
      break;
    }
    label134:
    return new if(arrayOfByte, k);
  }
  
  public final void b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    super.a(paramArrayOfByte1, paramArrayOfByte2);
  }
}
