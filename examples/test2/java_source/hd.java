import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;

public class hd
  extends fv
{
  private static fp[][] jdField_a_of_type_Array2dOfFp = new fp['Ā'][];
  private String jdField_a_of_type_JavaLangString;
  private byte[] jdField_a_of_type_ArrayOfByte;
  
  hd(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 1;
    BigInteger localBigInteger1 = null;
    long l1 = 0L;
    int k = 0;
    if (k != paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[k] & 0xFF;
      if (l1 <= 72057594037927808L)
      {
        l1 += (j & 0x7F);
        if ((j & 0x80) == 0)
        {
          j = i;
          long l2 = l1;
          if (i != 0)
          {
            if (l1 < 40L)
            {
              localStringBuffer.append('0');
              label94:
              j = 0;
              l2 = l1;
            }
          }
          else
          {
            localStringBuffer.append('.');
            localStringBuffer.append(l2);
            l1 = 0L;
            i = j;
          }
        }
        for (;;)
        {
          k += 1;
          break;
          if (l1 < 80L)
          {
            localStringBuffer.append('1');
            l1 -= 40L;
            break label94;
          }
          localStringBuffer.append('2');
          l1 -= 80L;
          break label94;
          l1 <<= 7;
        }
      }
      BigInteger localBigInteger2 = localBigInteger1;
      if (localBigInteger1 == null) {
        localBigInteger2 = BigInteger.valueOf(l1);
      }
      localBigInteger1 = localBigInteger2.or(BigInteger.valueOf(j & 0x7F));
      if ((j & 0x80) == 0)
      {
        if (i == 0) {
          break label308;
        }
        localStringBuffer.append('2');
        localBigInteger1 = localBigInteger1.subtract(BigInteger.valueOf(80L));
        i = 0;
      }
    }
    label308:
    for (;;)
    {
      localStringBuffer.append('.');
      localStringBuffer.append(localBigInteger1);
      l1 = 0L;
      localBigInteger1 = null;
      break;
      localBigInteger1 = localBigInteger1.shiftLeft(7);
      break;
      jdField_a_of_type_JavaLangString = localStringBuffer.toString();
      jdField_a_of_type_ArrayOfByte = at.a(paramArrayOfByte);
      return;
    }
  }
  
  static fp a(byte[] paramArrayOfByte)
  {
    Object localObject;
    if (paramArrayOfByte.length < 3)
    {
      localObject = new fp(paramArrayOfByte);
      return localObject;
    }
    int j = paramArrayOfByte[(paramArrayOfByte.length - 2)] & 0xFF;
    int i = paramArrayOfByte[(paramArrayOfByte.length - 1)] & 0x7F;
    label271:
    for (;;)
    {
      fp[][] arrayOfFp1;
      synchronized (jdField_a_of_type_Array2dOfFp)
      {
        localObject = jdField_a_of_type_Array2dOfFp[j];
        if (localObject != null) {
          break label271;
        }
        arrayOfFp1 = jdField_a_of_type_Array2dOfFp;
        localObject = new fp[''];
        arrayOfFp1[j] = localObject;
        arrayOfFp1 = localObject[i];
        if (arrayOfFp1 == null)
        {
          paramArrayOfByte = new fp(paramArrayOfByte);
          localObject[i] = paramArrayOfByte;
          return paramArrayOfByte;
        }
      }
      if (at.a(paramArrayOfByte, arrayOfFp1.b())) {
        return arrayOfFp1;
      }
      j = j + 1 & 0xFF;
      localObject = jdField_a_of_type_Array2dOfFp[j];
      if (localObject == null)
      {
        arrayOfFp1 = jdField_a_of_type_Array2dOfFp;
        localObject = new fp[''];
        arrayOfFp1[j] = localObject;
      }
      for (;;)
      {
        arrayOfFp1 = localObject[i];
        if (arrayOfFp1 == null)
        {
          paramArrayOfByte = new fp(paramArrayOfByte);
          localObject[i] = paramArrayOfByte;
          return paramArrayOfByte;
        }
        if (at.a(paramArrayOfByte, arrayOfFp1.b())) {
          return arrayOfFp1;
        }
        i = i + 1 & 0x7F;
        arrayOfFp1 = localObject[i];
        if (arrayOfFp1 == null)
        {
          paramArrayOfByte = new fp(paramArrayOfByte);
          localObject[i] = paramArrayOfByte;
          return paramArrayOfByte;
        }
        localObject = arrayOfFp1;
        if (at.a(paramArrayOfByte, arrayOfFp1.b())) {
          break;
        }
        return new fp(paramArrayOfByte);
      }
    }
  }
  
  private void a(ByteArrayOutputStream paramByteArrayOutputStream)
  {
    ic localIc = new ic(jdField_a_of_type_JavaLangString);
    int i = Integer.parseInt(localIc.a()) * 40;
    String str = localIc.a();
    if (str.length() <= 18)
    {
      long l = i;
      a(paramByteArrayOutputStream, Long.parseLong(str) + l);
    }
    for (;;)
    {
      if (a != -1) {}
      for (i = 1;; i = 0)
      {
        if (i == 0) {
          return;
        }
        str = localIc.a();
        if (str.length() > 18) {
          break label129;
        }
        a(paramByteArrayOutputStream, Long.parseLong(str));
        break;
        a(paramByteArrayOutputStream, new BigInteger(str).add(BigInteger.valueOf(i)));
        break;
      }
      label129:
      a(paramByteArrayOutputStream, new BigInteger(str));
    }
  }
  
  private static void a(ByteArrayOutputStream paramByteArrayOutputStream, long paramLong)
  {
    int i = 8;
    byte[] arrayOfByte = new byte[9];
    arrayOfByte[8] = ((byte)((int)paramLong & 0x7F));
    while (paramLong >= 128L)
    {
      paramLong >>= 7;
      i -= 1;
      arrayOfByte[i] = ((byte)((int)paramLong & 0x7F | 0x80));
    }
    paramByteArrayOutputStream.write(arrayOfByte, i, 9 - i);
  }
  
  private static void a(ByteArrayOutputStream paramByteArrayOutputStream, BigInteger paramBigInteger)
  {
    int j = (paramBigInteger.bitLength() + 6) / 7;
    if (j == 0)
    {
      paramByteArrayOutputStream.write(0);
      return;
    }
    byte[] arrayOfByte = new byte[j];
    int i = j - 1;
    while (i >= 0)
    {
      arrayOfByte[i] = ((byte)(paramBigInteger.intValue() & 0x7F | 0x80));
      paramBigInteger = paramBigInteger.shiftRight(7);
      i -= 1;
    }
    i = j - 1;
    arrayOfByte[i] = ((byte)(arrayOfByte[i] & 0x7F));
    paramByteArrayOutputStream.write(arrayOfByte, 0, arrayOfByte.length);
  }
  
  final int a()
    throws IOException
  {
    int i = b().length;
    return i + (id.a(i) + 1);
  }
  
  final void a(fs paramFs)
    throws IOException
  {
    byte[] arrayOfByte = b();
    paramFs.b(6);
    paramFs.a(arrayOfByte.length);
    paramFs.a(arrayOfByte);
  }
  
  final boolean a()
  {
    return false;
  }
  
  final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof hd)) {
      return false;
    }
    return jdField_a_of_type_JavaLangString.equals(jdField_a_of_type_JavaLangString);
  }
  
  protected final byte[] b()
  {
    try
    {
      if (jdField_a_of_type_ArrayOfByte == null)
      {
        localObject1 = new ByteArrayOutputStream();
        a((ByteArrayOutputStream)localObject1);
        jdField_a_of_type_ArrayOfByte = ((ByteArrayOutputStream)localObject1).toByteArray();
      }
      Object localObject1 = jdField_a_of_type_ArrayOfByte;
      return localObject1;
    }
    finally {}
  }
  
  public int hashCode()
  {
    return jdField_a_of_type_JavaLangString.hashCode();
  }
  
  public String toString()
  {
    return jdField_a_of_type_JavaLangString;
  }
}
