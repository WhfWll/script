package com.google.common.util.concurrent;

import com.bangcle.andjni.JniLib;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

public final class ThreadFactoryBuilder
{
  private ThreadFactory backingThreadFactory = null;
  private Boolean daemon = null;
  private String nameFormat = null;
  private Integer priority = null;
  private Thread.UncaughtExceptionHandler uncaughtExceptionHandler = null;
  
  static
  {
    JniLib.a(ThreadFactoryBuilder.class, 963);
  }
  
  public ThreadFactoryBuilder() {}
  
  private static native ThreadFactory build(ThreadFactoryBuilder paramThreadFactoryBuilder);
  
  public native ThreadFactory build();
  
  public native ThreadFactoryBuilder setDaemon(boolean paramBoolean);
  
  public native ThreadFactoryBuilder setNameFormat(String paramString);
  
  public native ThreadFactoryBuilder setPriority(int paramInt);
  
  public native ThreadFactoryBuilder setThreadFactory(ThreadFactory paramThreadFactory);
  
  public native ThreadFactoryBuilder setUncaughtExceptionHandler(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler);
}
