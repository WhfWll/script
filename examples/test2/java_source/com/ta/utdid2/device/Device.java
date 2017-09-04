package com.ta.utdid2.device;

import com.bangcle.andjni.JniLib;

public class Device
{
  private String deviceId = "";
  private String imei = "";
  private String imsi = "";
  private long mCheckSum = 0L;
  private long mCreateTimestamp = 0L;
  private String utdid = "";
  
  static
  {
    JniLib.a(Device.class, 1013);
  }
  
  public Device() {}
  
  native long getCheckSum();
  
  native long getCreateTimestamp();
  
  public native String getDeviceId();
  
  public native String getImei();
  
  public native String getImsi();
  
  public native String getUtdid();
  
  native void setCheckSum(long paramLong);
  
  native void setCreateTimestamp(long paramLong);
  
  native void setDeviceId(String paramString);
  
  native void setImei(String paramString);
  
  native void setImsi(String paramString);
  
  native void setUtdid(String paramString);
}
