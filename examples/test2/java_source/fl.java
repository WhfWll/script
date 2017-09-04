import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Vector;

public final class fl
  extends FilterInputStream
{
  private final int jdField_a_of_type_Int;
  private final boolean jdField_a_of_type_Boolean;
  private final byte[][] jdField_a_of_type_Array2dOfByte;
  
  private fl(InputStream paramInputStream)
  {
    this(paramInputStream, id.a(paramInputStream));
  }
  
  private fl(InputStream paramInputStream, int paramInt)
  {
    this(paramInputStream, paramInt, false);
  }
  
  private fl(InputStream paramInputStream, int paramInt, boolean paramBoolean)
  {
    super(paramInputStream);
    jdField_a_of_type_Int = paramInt;
    jdField_a_of_type_Boolean = paramBoolean;
    jdField_a_of_type_Array2dOfByte = new byte[11][];
  }
  
  public fl(byte[] paramArrayOfByte)
  {
    this(new ByteArrayInputStream(paramArrayOfByte), paramArrayOfByte.length);
  }
  
  public fl(byte[] paramArrayOfByte, byte paramByte)
  {
    this(new ByteArrayInputStream(paramArrayOfByte), paramArrayOfByte.length, true);
  }
  
  static int a(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    int i = paramInt & 0x1F;
    paramInt = i;
    if (i == 31)
    {
      i = 0;
      int j = paramInputStream.read();
      paramInt = j;
      if ((j & 0x7F) == 0) {
        throw new IOException("corrupted stream - invalid high tag number found");
      }
      while ((paramInt >= 0) && ((paramInt & 0x80) != 0))
      {
        i = (paramInt & 0x7F | i) << 7;
        paramInt = paramInputStream.read();
      }
      if (paramInt < 0) {
        throw new EOFException("EOF found inside tag value.");
      }
      paramInt = paramInt & 0x7F | i;
    }
    return paramInt;
  }
  
  private static fh a(hw paramHw)
    throws IOException
  {
    paramHw = new fl(paramHw);
    fh localFh = new fh();
    for (;;)
    {
      fv localFv = paramHw.a();
      if (localFv == null) {
        break;
      }
      localFh.a(localFv);
    }
    return localFh;
  }
  
  private fv a(int paramInt1, int paramInt2, int paramInt3)
    throws IOException
  {
    int i = 0;
    if ((paramInt1 & 0x20) != 0) {}
    Object localObject;
    for (boolean bool = true;; bool = false)
    {
      localObject = new hw(this, paramInt3);
      if ((paramInt1 & 0x40) == 0) {
        break;
      }
      return new gp(bool, paramInt2, ((hw)localObject).a());
    }
    if ((paramInt1 & 0x80) != 0) {
      return new ga((InputStream)localObject).a(bool, paramInt2);
    }
    if (bool)
    {
      switch (paramInt2)
      {
      default: 
        throw new IOException("unknown tag " + paramInt2 + " encountered");
      case 4: 
        localObject = a((hw)localObject);
        fq[] arrayOfFq = new fq[a.size()];
        paramInt1 = i;
        while (paramInt1 != arrayOfFq.length)
        {
          arrayOfFq[paramInt1] = ((fq)((fh)localObject).a(paramInt1));
          paramInt1 += 1;
        }
        return new gf(arrayOfFq);
      case 16: 
        if (jdField_a_of_type_Boolean) {
          return new ia(((hw)localObject).a());
        }
        return gw.a(a((hw)localObject));
      case 17: 
        return gw.a(a((hw)localObject));
      }
      return new gu(a((hw)localObject));
    }
    return a(paramInt2, (hw)localObject, jdField_a_of_type_Array2dOfByte);
  }
  
  static fv a(int paramInt, hw paramHw, byte[][] paramArrayOfByte)
    throws IOException
  {
    switch (paramInt)
    {
    case 7: 
    case 8: 
    case 9: 
    case 11: 
    case 13: 
    case 14: 
    case 15: 
    case 16: 
    case 17: 
    case 21: 
    case 25: 
    case 29: 
    default: 
      throw new IOException("unknown tag " + paramInt + " encountered");
    case 3: 
      return gr.a(paramHw.a(), paramHw);
    case 30: 
      return new gq(a(paramHw));
    case 1: 
      return fe.a(a(paramHw, paramArrayOfByte));
    case 10: 
      return fi.a(a(paramHw, paramArrayOfByte));
    case 24: 
      return new fk(paramHw.a());
    case 27: 
      return new gx(paramHw.a());
    case 22: 
      return new gz(paramHw.a());
    case 2: 
      return new fm(paramHw.a());
    case 5: 
      return hb.a;
    case 18: 
      return new hc(paramHw.a());
    case 6: 
      return fp.a(a(paramHw, paramArrayOfByte));
    case 4: 
      return new he(paramHw.a());
    case 19: 
      return new hh(paramHw.a());
    case 20: 
      return new hm(paramHw.a());
    case 28: 
      return new hq(paramHw.a());
    case 23: 
      return new gc(paramHw.a());
    case 12: 
      return new hp(paramHw.a());
    }
    return new hr(paramHw.a());
  }
  
  private static byte[] a(hw paramHw, byte[][] paramArrayOfByte)
    throws IOException
  {
    int i = paramHw.a();
    if (paramHw.a() < paramArrayOfByte.length)
    {
      byte[] arrayOfByte2 = paramArrayOfByte[i];
      byte[] arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte2 == null)
      {
        arrayOfByte1 = new byte[i];
        paramArrayOfByte[i] = arrayOfByte1;
      }
      jd.a(paramHw, arrayOfByte1);
      return arrayOfByte1;
    }
    return paramHw.a();
  }
  
  private static char[] a(hw paramHw)
    throws IOException
  {
    int j = paramHw.a() / 2;
    char[] arrayOfChar = new char[j];
    int i = 0;
    while (i < j)
    {
      int k = paramHw.read();
      if (k < 0) {
        break;
      }
      int m = paramHw.read();
      if (m < 0) {
        break;
      }
      arrayOfChar[i] = ((char)(k << 8 | m & 0xFF));
      i += 1;
    }
    return arrayOfChar;
  }
  
  private int b()
    throws IOException
  {
    return b(this, jdField_a_of_type_Int);
  }
  
  static int b(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    int i = 0;
    int k = paramInputStream.read();
    if (k < 0) {
      throw new EOFException("EOF found when length expected");
    }
    int j;
    if (k == 128) {
      j = -1;
    }
    do
    {
      do
      {
        return j;
        j = k;
      } while (k <= 127);
      int m = k & 0x7F;
      if (m > 4) {
        throw new IOException("DER length more than 4 bytes: " + m);
      }
      k = 0;
      j = i;
      for (i = k; j < m; i = k + (i << 8))
      {
        k = paramInputStream.read();
        if (k < 0) {
          throw new EOFException("EOF found reading length");
        }
        j += 1;
      }
      if (i < 0) {
        throw new IOException("corrupted stream - negative length found");
      }
      j = i;
    } while (i < paramInt);
    throw new IOException("corrupted stream - out of bounds length found");
  }
  
  final int a()
  {
    return jdField_a_of_type_Int;
  }
  
  public final fv a()
    throws IOException
  {
    int j = read();
    if (j <= 0)
    {
      if (j == 0) {
        throw new IOException("unexpected end-of-contents marker");
      }
      return null;
    }
    int k = a(this, j);
    if ((j & 0x20) != 0) {}
    int m;
    for (int i = 1;; i = 0)
    {
      m = b();
      if (m >= 0) {
        break label247;
      }
      if (i != 0) {
        break;
      }
      throw new IOException("indefinite length primitive encoding encountered");
    }
    Object localObject = new ga(new hy(this, jdField_a_of_type_Int), jdField_a_of_type_Int);
    if ((j & 0x40) != 0) {
      return new fd(k, (ga)localObject).a();
    }
    if ((j & 0x80) != 0) {
      return new gn(true, k, (ga)localObject).a();
    }
    switch (k)
    {
    default: 
      throw new IOException("unknown BER object encountered");
    case 4: 
      return new gh((ga)localObject).a();
    case 16: 
      return new gj((ga)localObject).a();
    case 17: 
      return new gl((ga)localObject).a();
    }
    return new gv((ga)localObject).a();
    try
    {
      label247:
      localObject = a(j, k, m);
      return localObject;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new fj("corrupted stream detected", localIllegalArgumentException);
    }
  }
}
