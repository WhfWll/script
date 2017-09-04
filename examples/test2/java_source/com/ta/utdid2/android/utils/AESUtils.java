package com.ta.utdid2.android.utils;

import com.bangcle.andjni.JniLib;

public class AESUtils
{
  public static final String TAG = "AESUtils";
  public static byte[] t = { 48, 48, 49, 55, 68, 67, 49, 66, 69, 50, 50, 53, 56, 53, 53, 52, 67, 70, 48, 50, 67, 53, 55, 66, 55, 56, 69, 55, 52, 48, 65, 53 };
  
  static
  {
    JniLib.a(AESUtils.class, 994);
  }
  
  public AESUtils() {}
  
  private static native void appendHex(StringBuffer paramStringBuffer, byte paramByte);
  
  public static native String decrypt(String paramString1, String paramString2);
  
  private static native byte[] decrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws Exception;
  
  public static native String encrypt(String paramString1, String paramString2);
  
  private static native byte[] encrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws Exception;
  
  public static native String fromHex(String paramString);
  
  private static native byte[] getRawKey(byte[] paramArrayOfByte)
    throws Exception;
  
  public static native byte[] toByte(String paramString);
  
  public static native String toHex(String paramString);
  
  public static native String toHex(byte[] paramArrayOfByte);
}
