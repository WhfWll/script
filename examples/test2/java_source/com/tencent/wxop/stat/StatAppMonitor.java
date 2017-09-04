package com.tencent.wxop.stat;

public class StatAppMonitor
  implements Cloneable
{
  public static final int FAILURE_RESULT_TYPE = 1;
  public static final int LOGIC_FAILURE_RESULT_TYPE = 2;
  public static final int SUCCESS_RESULT_TYPE = 0;
  private String a = null;
  private long b = 0L;
  private long c = 0L;
  private int d = 0;
  private long e = 0L;
  private int f = 0;
  private int g = 1;
  
  public StatAppMonitor(String paramString)
  {
    a = paramString;
  }
  
  public StatAppMonitor(String paramString, int paramInt1, int paramInt2, long paramLong1, long paramLong2, long paramLong3, int paramInt3)
  {
    a = paramString;
    b = paramLong1;
    c = paramLong2;
    d = paramInt1;
    e = paramLong3;
    f = paramInt2;
    g = paramInt3;
  }
  
  public StatAppMonitor clone()
  {
    try
    {
      StatAppMonitor localStatAppMonitor = (StatAppMonitor)super.clone();
      return localStatAppMonitor;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
  
  public String getInterfaceName()
  {
    return a;
  }
  
  public long getMillisecondsConsume()
  {
    return e;
  }
  
  public long getReqSize()
  {
    return b;
  }
  
  public long getRespSize()
  {
    return c;
  }
  
  public int getResultType()
  {
    return d;
  }
  
  public int getReturnCode()
  {
    return f;
  }
  
  public int getSampling()
  {
    return g;
  }
  
  public void setInterfaceName(String paramString)
  {
    a = paramString;
  }
  
  public void setMillisecondsConsume(long paramLong)
  {
    e = paramLong;
  }
  
  public void setReqSize(long paramLong)
  {
    b = paramLong;
  }
  
  public void setRespSize(long paramLong)
  {
    c = paramLong;
  }
  
  public void setResultType(int paramInt)
  {
    d = paramInt;
  }
  
  public void setReturnCode(int paramInt)
  {
    f = paramInt;
  }
  
  public void setSampling(int paramInt)
  {
    int i = paramInt;
    if (paramInt <= 0) {
      i = 1;
    }
    g = i;
  }
}
