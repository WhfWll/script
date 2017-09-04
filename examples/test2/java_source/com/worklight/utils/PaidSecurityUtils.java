package com.worklight.utils;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import java.lang.reflect.InvocationTargetException;

public class PaidSecurityUtils
{
  static
  {
    JniLib.a(PaidSecurityUtils.class, 1214);
  }
  
  public PaidSecurityUtils() {}
  
  private static native double UFa(double paramDouble);
  
  private static native double UFr(double paramDouble);
  
  public static native byte[] kpg(Context paramContext, String[] paramArrayOfString);
  
  private static native byte[] xpg(String[] paramArrayOfString, StringBuffer paramStringBuffer, byte[] paramArrayOfByte)
    throws ClassNotFoundException, IllegalAccessException, InvocationTargetException, NoSuchMethodException;
}
