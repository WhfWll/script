package com.tencent.wxop.stat;

public class StatSpecifyReportedInfo
{
  private String a = null;
  private String b = null;
  private String c = null;
  private boolean d = false;
  private boolean e = false;
  
  public StatSpecifyReportedInfo() {}
  
  public String getAppKey()
  {
    return a;
  }
  
  public String getInstallChannel()
  {
    return b;
  }
  
  public String getVersion()
  {
    return c;
  }
  
  public boolean isImportant()
  {
    return e;
  }
  
  public boolean isSendImmediately()
  {
    return d;
  }
  
  public void setAppKey(String paramString)
  {
    a = paramString;
  }
  
  public void setImportant(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public void setInstallChannel(String paramString)
  {
    b = paramString;
  }
  
  public void setSendImmediately(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void setVersion(String paramString)
  {
    c = paramString;
  }
  
  public String toString()
  {
    return "StatSpecifyReportedInfo [appKey=" + a + ", installChannel=" + b + ", version=" + c + ", sendImmediately=" + d + ", isImportant=" + e + "]";
  }
}
