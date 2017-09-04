package com.worklight.wlclient.api;

import com.bangcle.andjni.JniLib;
import java.util.HashMap;
import java.util.Map;

public class WLPushOptions
{
  private boolean alert = true;
  private boolean badge = true;
  private Map<String, String> parameters = new HashMap();
  private boolean sound = true;
  
  static
  {
    JniLib.a(WLPushOptions.class, 1248);
  }
  
  public WLPushOptions() {}
  
  public native void addSubscriptionParameter(String paramString1, String paramString2);
  
  public native void addSubscriptionParameters(Map<String, String> paramMap);
  
  public native String getSubscriptionParameter(String paramString);
  
  public native Map<String, String> getSubscriptionParameters();
}
