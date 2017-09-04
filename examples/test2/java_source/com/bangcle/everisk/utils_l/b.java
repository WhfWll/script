package com.bangcle.everisk.utils_l;

import java.io.EOFException;
import java.io.File;
import java.io.RandomAccessFile;

public final class b
  extends RandomAccessFile
{
  private boolean V;
  
  public b(File paramFile, String paramString)
  {
    super(paramFile, paramString);
  }
  
  public final int A()
  {
    int[] arrayOfInt = new int[4];
    arrayOfInt[0] = read();
    arrayOfInt[1] = read();
    arrayOfInt[2] = read();
    arrayOfInt[3] = read();
    if ((arrayOfInt[0] | arrayOfInt[1] | arrayOfInt[2] | arrayOfInt[3]) < 0) {
      throw new EOFException();
    }
    if (V)
    {
      i = arrayOfInt[3];
      j = arrayOfInt[2];
      k = arrayOfInt[1];
      return arrayOfInt[0] + ((i << 24) + (j << 16) + (k << 8));
    }
    int i = arrayOfInt[0];
    int j = arrayOfInt[1];
    int k = arrayOfInt[2];
    return arrayOfInt[3] + ((i << 24) + (j << 16) + (k << 8));
  }
  
  public final long B()
  {
    byte[] arrayOfByte = new byte[8];
    super.readFully(arrayOfByte);
    long l2;
    int j;
    if (V)
    {
      l1 = 0L;
      i = 7;
      for (;;)
      {
        l2 = l1;
        if (i < 0) {
          break;
        }
        j = i << 3;
        l2 = arrayOfByte[i];
        i -= 1;
        l1 = (l2 << j & 255L << j) + l1;
      }
    }
    long l1 = 0L;
    int i = 0;
    for (;;)
    {
      l2 = l1;
      if (i > 7) {
        break;
      }
      j = 7 - i << 3;
      l2 = arrayOfByte[i];
      i += 1;
      l1 = (255L << j & l2 << j) + l1;
    }
    return l2;
  }
  
  public final short C()
  {
    int[] arrayOfInt = new int[2];
    arrayOfInt[0] = read();
    arrayOfInt[1] = read();
    if ((arrayOfInt[0] | arrayOfInt[1]) < 0) {
      throw new EOFException();
    }
    if (V)
    {
      i = arrayOfInt[1];
      return (short)(arrayOfInt[0] + (i << 8));
    }
    int i = arrayOfInt[0];
    return (short)(arrayOfInt[1] + (i << 8));
  }
  
  public final void a(byte[] paramArrayOfByte)
  {
    super.readFully(paramArrayOfByte);
    if (V)
    {
      int j = 0;
      while (j < paramArrayOfByte.length / 2)
      {
        int i = paramArrayOfByte[j];
        paramArrayOfByte[j] = paramArrayOfByte[(paramArrayOfByte.length - j - 1)];
        paramArrayOfByte[(paramArrayOfByte.length - j - 1)] = i;
        j += 1;
      }
    }
  }
  
  public final void d(boolean paramBoolean)
  {
    V = paramBoolean;
  }
}
