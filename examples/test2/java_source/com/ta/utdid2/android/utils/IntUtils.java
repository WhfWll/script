package com.ta.utdid2.android.utils;

import com.bangcle.andjni.JniLib;

public class IntUtils
{
  static
  {
    JniLib.a(IntUtils.class, 1000);
  }
  
  public IntUtils() {}
  
  public static native byte[] getBytes(int paramInt);
  
  public static native byte[] getBytes(byte[] paramArrayOfByte, int paramInt);
}
