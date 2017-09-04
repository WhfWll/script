public abstract class kv
  extends li
  implements jo
{
  public kv(byte paramByte)
  {
    super(paramByte);
  }
  
  public final int a()
    throws jp
  {
    return a().length;
  }
  
  public final byte[] a()
    throws jp
  {
    try
    {
      byte[] arrayOfByte = c();
      return arrayOfByte;
    }
    catch (jm localJm)
    {
      throw new jp(localJm.getCause());
    }
  }
  
  public final byte[] a_()
    throws jp
  {
    try
    {
      byte[] arrayOfByte = b();
      return arrayOfByte;
    }
    catch (jm localJm)
    {
      throw new jp(localJm.getCause());
    }
  }
  
  public int b()
    throws jp
  {
    return 0;
  }
}
