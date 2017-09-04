package com.bangcle.everisk.utils_l;

import java.io.IOException;
import java.math.BigInteger;

public final class d
{
  private final byte[] Y = new byte[16];
  private final int Z;
  
  protected d(b paramB)
  {
    paramB.seek(0L);
    paramB.readFully(Y);
    byte[] arrayOfByte = Y;
    if ((arrayOfByte.length < 4) || (arrayOfByte[0] != Byte.MAX_VALUE) || (arrayOfByte[1] != 69) || (arrayOfByte[2] != 76) || (arrayOfByte[3] != 70)) {}
    for (int i = 0; i == 0; i = 1) {
      throw new IOException("Not an ELF file!");
    }
    if (Y[5] == 1) {
      bool = true;
    }
    paramB.d(bool);
    paramB.C();
    Z = paramB.C();
    paramB.A();
    switch (Y[4])
    {
    default: 
      throw new IOException("Unknown ELF class " + Y[4]);
    case 1: 
      arrayOfByte = new byte[4];
      paramB.a(arrayOfByte);
      new BigInteger(1, arrayOfByte).longValue();
      paramB.A();
      paramB.A();
    }
    for (;;)
    {
      paramB.A();
      paramB.C();
      paramB.C();
      paramB.C();
      paramB.C();
      paramB.C();
      paramB.C();
      return;
      arrayOfByte = new byte[8];
      paramB.a(arrayOfByte);
      new BigInteger(1, arrayOfByte).longValue();
      c.a(paramB);
      c.a(paramB);
    }
  }
  
  public final int F()
  {
    return Z & 0xFFFF;
  }
}
