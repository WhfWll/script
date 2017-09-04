package ss;

import gK.f;
import java.io.IOException;
import java.nio.charset.Charset;
import ss.ss.j;

public abstract class ai
{
  public ai() {}
  
  public static ai a(ab paramAb, String paramString)
  {
    Object localObject = j.c;
    ab localAb = paramAb;
    if (paramAb != null)
    {
      Charset localCharset = paramAb.a();
      localObject = localCharset;
      localAb = paramAb;
      if (localCharset == null)
      {
        localObject = j.c;
        localAb = ab.a(paramAb + "; charset=utf-8");
      }
    }
    return a(localAb, paramString.getBytes((Charset)localObject));
  }
  
  public static ai a(ab paramAb, byte[] paramArrayOfByte)
  {
    return a(paramAb, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static ai a(ab paramAb, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException("content == null");
    }
    j.a(paramArrayOfByte.length, paramInt1, paramInt2);
    return new aj(paramAb, paramInt2, paramArrayOfByte, paramInt1);
  }
  
  public abstract ab a();
  
  public abstract void a(f paramF)
    throws IOException;
  
  public long b()
    throws IOException
  {
    return -1L;
  }
}
