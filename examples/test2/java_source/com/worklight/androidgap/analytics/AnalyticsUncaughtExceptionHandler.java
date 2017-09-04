package com.worklight.androidgap.analytics;

import com.bangcle.andjni.JniLib;
import com.worklight.common.WLConfig;

public class AnalyticsUncaughtExceptionHandler
  implements Thread.UncaughtExceptionHandler
{
  private final Thread.UncaughtExceptionHandler defaultUEH = Thread.getDefaultUncaughtExceptionHandler();
  private final WLConfig wlConfig;
  
  static
  {
    JniLib.a(AnalyticsUncaughtExceptionHandler.class, 1090);
  }
  
  public AnalyticsUncaughtExceptionHandler(WLConfig paramWLConfig)
  {
    wlConfig = paramWLConfig;
  }
  
  public native void setDefaultUncaughtExceptionHandler();
  
  public native void uncaughtException(Thread paramThread, Throwable paramThrowable);
}
