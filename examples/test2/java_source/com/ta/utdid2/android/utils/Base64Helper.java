package com.ta.utdid2.android.utils;

import android.annotation.TargetApi;
import com.bangcle.andjni.JniLib;

public class Base64Helper
{
  static
  {
    JniLib.a(Base64Helper.class, 998);
  }
  
  public Base64Helper() {}
  
  @TargetApi(8)
  public static native String encodeToString(byte[] paramArrayOfByte, int paramInt);
}
