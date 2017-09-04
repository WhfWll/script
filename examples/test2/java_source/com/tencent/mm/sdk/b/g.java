package com.tencent.mm.sdk.b;

import android.os.Debug;
import android.os.Handler;
import android.os.Process;

public final class g
  implements Runnable
{
  private static final String bf;
  private static final String bg;
  final Runnable aQ;
  final String aR;
  final Object aS;
  final Thread aT;
  String aU;
  long aV;
  final a aW;
  long aX;
  long aY;
  long aZ;
  long ba;
  long bb;
  long bc;
  long bd;
  float be = -1.0F;
  final Handler handler;
  int priority;
  boolean started = false;
  
  static
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("taskName = %s");
    localStringBuilder.append("|token = %s");
    localStringBuilder.append("|handler = %s");
    localStringBuilder.append("|threadName = %s");
    localStringBuilder.append("|threadId = %d");
    localStringBuilder.append("|priority = %d");
    localStringBuilder.append("|addTime = %d");
    localStringBuilder.append("|delayTime = %d");
    localStringBuilder.append("|usedTime = %d");
    localStringBuilder.append("|cpuTime = %d");
    localStringBuilder.append("|started = %b");
    bf = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("taskName = %s");
    localStringBuilder.append(" | addTime = %s");
    localStringBuilder.append(" | endTime = %s");
    localStringBuilder.append(" | usedTime = %d");
    localStringBuilder.append(" | cpuTime = %d");
    localStringBuilder.append(" | threadCpuTime = %d");
    localStringBuilder.append(" | totalCpuTime = %d");
    localStringBuilder.append(" | threadCpuRate = %.1f");
    bg = localStringBuilder.toString();
  }
  
  g(Thread paramThread, Handler paramHandler, Runnable paramRunnable, Object paramObject, a paramA)
  {
    aT = paramThread;
    if (paramThread != null)
    {
      aU = paramThread.getName();
      aV = paramThread.getId();
      priority = paramThread.getPriority();
    }
    handler = paramHandler;
    aQ = paramRunnable;
    paramHandler = paramRunnable.getClass().getName();
    paramRunnable = paramRunnable.toString();
    paramThread = paramHandler;
    if (!h.h(paramRunnable))
    {
      int i = paramRunnable.indexOf('|');
      paramThread = paramHandler;
      if (i > 0) {
        paramThread = paramHandler + "_" + paramRunnable.substring(i + 1);
      }
    }
    aR = paramThread;
    aS = paramObject;
    aW = paramA;
    aX = System.currentTimeMillis();
  }
  
  public final void run()
  {
    int i = Process.myTid();
    new StringBuilder("/proc/self/task/").append(i).append("/stat");
    ba = System.currentTimeMillis();
    bb = Debug.threadCpuTimeNanos();
    bc = -1L;
    bd = -1L;
    started = true;
    aQ.run();
    bc = (-1L - bc);
    bd = (-1L - bd);
    aZ = System.currentTimeMillis();
    ba = (aZ - ba);
    bb = ((Debug.threadCpuTimeNanos() - bb) / 1000000L);
    if (bd != 0L) {
      be = ((float)(100L * bc) / (float)bd);
    }
    if (aW != null) {
      aW.c(aQ, this);
    }
  }
  
  public static abstract interface a
  {
    public abstract void c(Runnable paramRunnable, g paramG);
  }
}
