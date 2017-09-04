package com.ta.utdid2.android.utils;

import com.bangcle.andjni.JniLib;

public class StringUtils
{
  static
  {
    JniLib.a(StringUtils.class, 1004);
  }
  
  public StringUtils() {}
  
  public static native String convertObjectToString(Object paramObject);
  
  public static native int hashCode(String paramString);
  
  public static native boolean isEmpty(String paramString);
}
