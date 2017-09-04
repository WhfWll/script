package com.MobileTicket;

import com.bangcle.andjni.JniLib;

public class CheckCodeUtil
{
  static
  {
    JniLib.a(CheckCodeUtil.class, 1);
  }
  
  public CheckCodeUtil() {}
  
  public static native String checkcode(String paramString);
  
  public static native String checkcode(String paramString1, String paramString2);
  
  public static native String decheckcode(String paramString);
  
  public static native String decheckcode(String paramString1, String paramString2);
}
