import java.io.IOException;

public abstract class fv
  extends fo
{
  fv() {}
  
  public static fv a(byte[] paramArrayOfByte)
    throws IOException
  {
    paramArrayOfByte = new fl(paramArrayOfByte);
    try
    {
      paramArrayOfByte = paramArrayOfByte.a();
      return paramArrayOfByte;
    }
    catch (ClassCastException paramArrayOfByte)
    {
      throw new IOException("cannot recognise object in stream");
    }
  }
  
  abstract int a()
    throws IOException;
  
  abstract void a(fs paramFs)
    throws IOException;
  
  abstract boolean a();
  
  abstract boolean a(fv paramFv);
  
  public final fv b()
  {
    return this;
  }
  
  fv c()
  {
    return this;
  }
  
  fv d()
  {
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    while (((paramObject instanceof fg)) && (a(((fg)paramObject).b()))) {
      return true;
    }
    return false;
  }
  
  public abstract int hashCode();
}
