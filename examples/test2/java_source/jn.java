public class jn
{
  public int a;
  public boolean a;
  public byte[] a;
  public boolean b = false;
  private boolean c = true;
  
  public jn()
  {
    jdField_a_of_type_Int = 1;
    jdField_a_of_type_Boolean = false;
    a(new byte[0]);
  }
  
  public jn(byte[] paramArrayOfByte)
  {
    jdField_a_of_type_Int = 1;
    jdField_a_of_type_Boolean = false;
    a(paramArrayOfByte);
  }
  
  private void a()
    throws IllegalStateException
  {
    if (!c) {
      throw new IllegalStateException();
    }
  }
  
  public final void a(int paramInt)
  {
    a();
    if ((paramInt < 0) || (paramInt > 2)) {
      throw new IllegalArgumentException();
    }
    jdField_a_of_type_Int = paramInt;
  }
  
  public final void a(boolean paramBoolean)
  {
    a();
    jdField_a_of_type_Boolean = paramBoolean;
  }
  
  public final void a(byte[] paramArrayOfByte)
  {
    a();
    jdField_a_of_type_ArrayOfByte = paramArrayOfByte;
  }
  
  public void b(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public String toString()
  {
    return new String(jdField_a_of_type_ArrayOfByte);
  }
}
