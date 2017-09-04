package net.sqlcipher;

public class CursorIndexOutOfBoundsException
  extends IndexOutOfBoundsException
{
  public CursorIndexOutOfBoundsException(int paramInt1, int paramInt2)
  {
    super("Index " + paramInt1 + " requested, with a size of " + paramInt2);
  }
  
  public CursorIndexOutOfBoundsException(String paramString)
  {
    super(paramString);
  }
}
