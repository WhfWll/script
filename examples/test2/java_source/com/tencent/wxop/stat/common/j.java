package com.tencent.wxop.stat.common;

class j
  extends h
{
  private static final byte[] h;
  private static final byte[] i;
  int c;
  public final boolean d;
  public final boolean e;
  public final boolean f;
  private final byte[] j;
  private int k;
  private final byte[] l;
  
  static
  {
    if (!g.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      g = bool;
      h = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
      i = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
      return;
    }
  }
  
  public j(int paramInt, byte[] paramArrayOfByte)
  {
    a = paramArrayOfByte;
    boolean bool1;
    if ((paramInt & 0x1) == 0)
    {
      bool1 = true;
      d = bool1;
      if ((paramInt & 0x2) != 0) {
        break label101;
      }
      bool1 = true;
      label33:
      e = bool1;
      if ((paramInt & 0x4) == 0) {
        break label106;
      }
      bool1 = bool2;
      label47:
      f = bool1;
      if ((paramInt & 0x8) != 0) {
        break label111;
      }
      paramArrayOfByte = h;
      label63:
      l = paramArrayOfByte;
      j = new byte[2];
      c = 0;
      if (!e) {
        break label118;
      }
    }
    label101:
    label106:
    label111:
    label118:
    for (paramInt = 19;; paramInt = -1)
    {
      k = paramInt;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label33;
      bool1 = false;
      break label47;
      paramArrayOfByte = i;
      break label63;
    }
  }
  
  public boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    byte[] arrayOfByte1 = l;
    byte[] arrayOfByte2 = a;
    int n = 0;
    int m = k;
    int i3 = paramInt2 + paramInt1;
    int i1;
    switch (c)
    {
    default: 
      i1 = -1;
      paramInt2 = paramInt1;
      paramInt1 = i1;
      label64:
      if (paramInt1 != -1)
      {
        arrayOfByte2[0] = arrayOfByte1[(paramInt1 >> 18 & 0x3F)];
        arrayOfByte2[1] = arrayOfByte1[(paramInt1 >> 12 & 0x3F)];
        arrayOfByte2[2] = arrayOfByte1[(paramInt1 >> 6 & 0x3F)];
        n = 4;
        arrayOfByte2[3] = arrayOfByte1[(paramInt1 & 0x3F)];
        m -= 1;
        if (m == 0)
        {
          paramInt1 = n;
          if (f)
          {
            paramInt1 = 5;
            arrayOfByte2[4] = 13;
          }
          n = paramInt1 + 1;
          arrayOfByte2[paramInt1] = 10;
          m = 19;
          paramInt1 = n;
        }
      }
      break;
    }
    for (;;)
    {
      label172:
      if (paramInt2 + 3 <= i3)
      {
        n = (paramArrayOfByte[paramInt2] & 0xFF) << 16 | (paramArrayOfByte[(paramInt2 + 1)] & 0xFF) << 8 | paramArrayOfByte[(paramInt2 + 2)] & 0xFF;
        arrayOfByte2[paramInt1] = arrayOfByte1[(n >> 18 & 0x3F)];
        arrayOfByte2[(paramInt1 + 1)] = arrayOfByte1[(n >> 12 & 0x3F)];
        arrayOfByte2[(paramInt1 + 2)] = arrayOfByte1[(n >> 6 & 0x3F)];
        arrayOfByte2[(paramInt1 + 3)] = arrayOfByte1[(n & 0x3F)];
        paramInt2 += 3;
        paramInt1 += 4;
        m -= 1;
        if (m != 0) {
          break label1190;
        }
        if (!f) {
          break label1187;
        }
        m = paramInt1 + 1;
        arrayOfByte2[paramInt1] = 13;
        paramInt1 = m;
      }
      label739:
      label761:
      label938:
      label1106:
      label1184:
      label1187:
      for (;;)
      {
        m = paramInt1 + 1;
        arrayOfByte2[paramInt1] = 10;
        n = 19;
        paramInt1 = m;
        m = n;
        break label172;
        i1 = -1;
        paramInt2 = paramInt1;
        paramInt1 = i1;
        break label64;
        if (paramInt1 + 2 > i3) {
          break;
        }
        i1 = j[0];
        paramInt2 = paramInt1 + 1;
        paramInt1 = paramArrayOfByte[paramInt1];
        int i2 = paramArrayOfByte[paramInt2];
        c = 0;
        paramInt1 = (i1 & 0xFF) << 16 | (paramInt1 & 0xFF) << 8 | i2 & 0xFF;
        paramInt2 += 1;
        break label64;
        if (paramInt1 + 1 > i3) {
          break;
        }
        i1 = j[0];
        i2 = j[1];
        paramInt2 = paramInt1 + 1;
        paramInt1 = paramArrayOfByte[paramInt1];
        c = 0;
        paramInt1 = (i1 & 0xFF) << 16 | (i2 & 0xFF) << 8 | paramInt1 & 0xFF;
        break label64;
        if (paramBoolean)
        {
          if (paramInt2 - c == i3 - 1)
          {
            if (c > 0)
            {
              paramArrayOfByte = j;
              n = 1;
              i1 = paramArrayOfByte[0];
            }
            for (;;)
            {
              i1 = (i1 & 0xFF) << 4;
              c -= n;
              i2 = paramInt1 + 1;
              arrayOfByte2[paramInt1] = arrayOfByte1[(i1 >> 6 & 0x3F)];
              n = i2 + 1;
              arrayOfByte2[i2] = arrayOfByte1[(i1 & 0x3F)];
              paramInt1 = n;
              if (d)
              {
                i1 = n + 1;
                arrayOfByte2[n] = 61;
                paramInt1 = i1 + 1;
                arrayOfByte2[i1] = 61;
              }
              n = paramInt1;
              if (e)
              {
                n = paramInt1;
                if (f)
                {
                  arrayOfByte2[paramInt1] = 13;
                  n = paramInt1 + 1;
                }
                arrayOfByte2[n] = 10;
                n += 1;
              }
              i1 = paramInt2;
              if ((g) || (c == 0)) {
                break;
              }
              throw new AssertionError();
              i1 = paramArrayOfByte[paramInt2];
              paramInt2 += 1;
              n = 0;
            }
          }
          if (paramInt2 - c == i3 - 2) {
            if (c > 1)
            {
              byte[] arrayOfByte3 = j;
              n = 1;
              i1 = arrayOfByte3[0];
              if (c <= 0) {
                break label938;
              }
              i2 = j[n];
              n += 1;
              i1 = (i2 & 0xFF) << 2 | (i1 & 0xFF) << 10;
              c -= n;
              n = paramInt1 + 1;
              arrayOfByte2[paramInt1] = arrayOfByte1[(i1 >> 12 & 0x3F)];
              i2 = n + 1;
              arrayOfByte2[n] = arrayOfByte1[(i1 >> 6 & 0x3F)];
              paramInt1 = i2 + 1;
              arrayOfByte2[i2] = arrayOfByte1[(i1 & 0x3F)];
              if (!d) {
                break label1184;
              }
              n = paramInt1 + 1;
              arrayOfByte2[paramInt1] = 61;
              paramInt1 = n;
            }
          }
        }
        for (;;)
        {
          n = paramInt1;
          if (e)
          {
            n = paramInt1;
            if (f)
            {
              arrayOfByte2[paramInt1] = 13;
              n = paramInt1 + 1;
            }
            arrayOfByte2[n] = 10;
            n += 1;
          }
          i1 = paramInt2;
          break;
          i1 = paramArrayOfByte[paramInt2];
          paramInt2 += 1;
          n = 0;
          break label739;
          i2 = paramArrayOfByte[paramInt2];
          paramInt2 += 1;
          break label761;
          i1 = paramInt2;
          n = paramInt1;
          if (!e) {
            break;
          }
          i1 = paramInt2;
          n = paramInt1;
          if (paramInt1 <= 0) {
            break;
          }
          i1 = paramInt2;
          n = paramInt1;
          if (m == 19) {
            break;
          }
          if (f)
          {
            n = paramInt1 + 1;
            arrayOfByte2[paramInt1] = 13;
            paramInt1 = n;
          }
          for (;;)
          {
            n = paramInt1 + 1;
            arrayOfByte2[paramInt1] = 10;
            i1 = paramInt2;
            break;
            i2 = n;
            if (!g)
            {
              i2 = n;
              if (i1 != i3)
              {
                throw new AssertionError();
                if (paramInt2 != i3 - 1) {
                  break label1106;
                }
                arrayOfByte1 = j;
                n = c;
                c = (n + 1);
                arrayOfByte1[n] = paramArrayOfByte[paramInt2];
                i2 = paramInt1;
              }
            }
            for (;;)
            {
              b = i2;
              k = m;
              return true;
              i2 = paramInt1;
              if (paramInt2 == i3 - 2)
              {
                arrayOfByte1 = j;
                n = c;
                c = (n + 1);
                arrayOfByte1[n] = paramArrayOfByte[paramInt2];
                arrayOfByte1 = j;
                n = c;
                c = (n + 1);
                arrayOfByte1[n] = paramArrayOfByte[(paramInt2 + 1)];
                i2 = paramInt1;
              }
            }
          }
        }
      }
      label1190:
      continue;
      paramInt1 = 4;
      continue;
      paramInt1 = n;
    }
  }
}
