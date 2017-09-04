package com.google.common.util.concurrent;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.VisibleForTesting;
import java.util.logging.Logger;

public final class UncaughtExceptionHandlers
{
  static
  {
    JniLib.a(UncaughtExceptionHandlers.class, 965);
  }
  
  private UncaughtExceptionHandlers() {}
  
  public static native Thread.UncaughtExceptionHandler systemExit();
  
  @VisibleForTesting
  static final class Exiter
    implements Thread.UncaughtExceptionHandler
  {
    private static final Logger logger = Logger.getLogger(Exiter.class.getName());
    private final Runtime runtime;
    
    static
    {
      JniLib.a(Exiter.class, 964);
    }
    
    Exiter(Runtime paramRuntime)
    {
      runtime = paramRuntime;
    }
    
    public native void uncaughtException(Thread paramThread, Throwable paramThrowable);
  }
}
