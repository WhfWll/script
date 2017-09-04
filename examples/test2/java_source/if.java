public final class if
{
  public byte[] a;
  
  public if(byte[] paramArrayOfByte, int paramInt)
  {
    a = new byte[paramInt];
    System.arraycopy(paramArrayOfByte, 0, a, 0, paramInt);
  }
}
