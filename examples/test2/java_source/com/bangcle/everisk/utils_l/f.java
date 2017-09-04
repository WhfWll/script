package com.bangcle.everisk.utils_l;

import com.bangcle.everisk.shell.LibProc;

public final class f
{
  private String ab = "";
  private long ac = 0L;
  private long ad = 0L;
  private long ae = 0L;
  private long af = 0L;
  
  public f(String paramString, long paramLong1, long paramLong2, long paramLong3)
  {
    ab = paramString;
    ac = paramLong1;
    ad = paramLong2;
    ae = paramLong3;
  }
  
  public final void G()
  {
    if (af < ad) {
      af += ac;
    }
    for (;;)
    {
      try
      {
        LibProc.a("RiskStubShell.Delay", "wait " + af + " second for " + ab);
        Thread.sleep(af * 1000L);
        return;
      }
      catch (Exception localException) {}
      if (af < ae) {
        af += af;
      }
    }
  }
}
