package com.tl.uic.util;

import com.bangcle.andjni.JniLib;

public final class LogInternal
{
  public static final int DEBUG = 2;
  public static final int ERROR = 1;
  public static final int INFO = 3;
  public static final int VERBOSE = 5;
  public static final int WARNING = 4;
  private static boolean _isDEBUG = false;
  private static volatile LogInternal _myInstance;
  
  static
  {
    JniLib.a(LogInternal.class, 1062);
  }
  
  private LogInternal() {}
  
  public static native String getExceptionMessage(Throwable paramThrowable, String paramString);
  
  public static native String getExceptionString(Throwable paramThrowable, String paramString);
  
  public static native LogInternal getInstance();
  
  public static native String getStackTrace(Throwable paramThrowable);
  
  public static native String getTLLibErrorExceptionMessage(Throwable paramThrowable, String paramString);
  
  public static native String getTLLibErrorExceptionString(Throwable paramThrowable, String paramString);
  
  public static native boolean isDEBUG();
  
  public static native void log(String paramString);
  
  public static native void log(String paramString, int paramInt);
  
  public static native Boolean logException(Throwable paramThrowable, String paramString);
  
  public static native void logException(Throwable paramThrowable);
  
  public static native void setIsDEBUG(boolean paramBoolean);
}
