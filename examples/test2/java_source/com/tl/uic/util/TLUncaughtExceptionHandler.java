package com.tl.uic.util;

import com.bangcle.andjni.JniLib;

public class TLUncaughtExceptionHandler
  implements Thread.UncaughtExceptionHandler
{
  private final Thread.UncaughtExceptionHandler defaultUEH = Thread.getDefaultUncaughtExceptionHandler();
  
  static
  {
    JniLib.a(TLUncaughtExceptionHandler.class, 1066);
  }
  
  public TLUncaughtExceptionHandler() {}
  
  public final native void setDefaultUncaughtExceptionHandler();
  
  public final native void uncaughtException(Thread paramThread, Throwable paramThrowable);
}
