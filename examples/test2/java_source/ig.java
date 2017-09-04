public abstract class ig
{
  public int a;
  public long a;
  private byte[] a;
  
  public ig()
  {
    jdField_a_of_type_ArrayOfByte = new byte[4];
    jdField_a_of_type_Int = 0;
  }
  
  public abstract int a(byte[] paramArrayOfByte);
  
  public void a()
  {
    jdField_a_of_type_Long = 0L;
    jdField_a_of_type_Int = 0;
    int i = 0;
    while (i < jdField_a_of_type_ArrayOfByte.length)
    {
      jdField_a_of_type_ArrayOfByte[i] = 0;
      i += 1;
    }
  }
  
  public final void a(byte paramByte)
  {
    byte[] arrayOfByte = jdField_a_of_type_ArrayOfByte;
    int i = jdField_a_of_type_Int;
    jdField_a_of_type_Int = (i + 1);
    arrayOfByte[i] = paramByte;
    if (jdField_a_of_type_Int == jdField_a_of_type_ArrayOfByte.length)
    {
      a(jdField_a_of_type_ArrayOfByte, 0);
      jdField_a_of_type_Int = 0;
    }
    jdField_a_of_type_Long += 1L;
  }
  
  public abstract void a(long paramLong);
  
  public abstract void a(byte[] paramArrayOfByte, int paramInt);
  
  public final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    int j = paramInt1;
    for (;;)
    {
      paramInt1 = j;
      paramInt2 = i;
      if (jdField_a_of_type_Int == 0) {
        break;
      }
      paramInt1 = j;
      paramInt2 = i;
      if (i <= 0) {
        break;
      }
      a(paramArrayOfByte[j]);
      j += 1;
      i -= 1;
    }
    for (;;)
    {
      i = paramInt1;
      j = paramInt2;
      if (paramInt2 <= jdField_a_of_type_ArrayOfByte.length) {
        break;
      }
      a(paramArrayOfByte, paramInt1);
      paramInt1 += jdField_a_of_type_ArrayOfByte.length;
      paramInt2 -= jdField_a_of_type_ArrayOfByte.length;
      jdField_a_of_type_Long += jdField_a_of_type_ArrayOfByte.length;
    }
    while (j > 0)
    {
      a(paramArrayOfByte[i]);
      i += 1;
      j -= 1;
    }
  }
  
  public abstract void b();
}
