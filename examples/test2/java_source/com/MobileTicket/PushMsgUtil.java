package com.MobileTicket;

public class PushMsgUtil
{
  static
  {
    System.loadLibrary("encrypt");
  }
  
  public PushMsgUtil() {}
  
  public static native String decrypt(String paramString);
  
  public static native String encrypt(String paramString);
}
