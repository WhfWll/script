package com.ta.utdid2.android.utils;

import com.bangcle.andjni.JniLib;
import java.lang.reflect.Method;

public class DebugUtils
{
  public static boolean DBG = false;
  private static final String PROPERTY_DEBUG = "alidebug";
  private static Class<?> mClassType;
  private static Method mGetIntMethod;
  private static Method mGetMethod;
  
  static
  {
    JniLib.a(DebugUtils.class, 999);
    boolean bool = true;
    if (getInt("alidebug", 0) == 1) {}
    for (;;)
    {
      DBG = bool;
      mClassType = null;
      mGetMethod = null;
      mGetIntMethod = null;
      return;
      bool = false;
    }
  }
  
  public DebugUtils() {}
  
  public static native String get(String paramString);
  
  public static native int getInt(String paramString, int paramInt);
  
  private static native void init();
}
