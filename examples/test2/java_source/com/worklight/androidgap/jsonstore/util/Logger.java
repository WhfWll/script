package com.worklight.androidgap.jsonstore.util;

import com.bangcle.andjni.JniLib;
import java.util.HashMap;

public class Logger
{
  private static final HashMap<String, Logger> instances = new HashMap();
  private String tag;
  
  static
  {
    JniLib.a(Logger.class, 1103);
  }
  
  private Logger(String paramString)
  {
    tag = paramString;
  }
  
  public static native Logger getLogger(String paramString);
  
  public native boolean isLoggable(int paramInt);
  
  public native void logDebug(String paramString);
  
  public native void logDebug(String paramString, Throwable paramThrowable);
  
  public native void logError(String paramString);
  
  public native void logError(String paramString, Throwable paramThrowable);
  
  public native void logInfo(String paramString);
  
  public native void logInfo(String paramString, Throwable paramThrowable);
  
  public native void logWarning(String paramString);
  
  public native void logWarning(String paramString, Throwable paramThrowable);
}
