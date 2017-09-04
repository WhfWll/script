package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;

public final class WXAppLaunchData
{
  public static final String ACTION_HANDLE_WXAPPLAUNCH = ".ACTION_HANDLE_WXAPPLAUNCH";
  public static final String ACTION_HANDLE_WXAPP_RESULT = ".ACTION_HANDLE_WXAPP_RESULT";
  public static final String ACTION_HANDLE_WXAPP_SHOW = ".ACTION_HANDLE_WXAPP_SHOW";
  public int launchType;
  public String message;
  
  public WXAppLaunchData() {}
  
  public static class Builder
  {
    public Builder() {}
    
    public static WXAppLaunchData fromBundle(Bundle paramBundle)
    {
      WXAppLaunchData localWXAppLaunchData = new WXAppLaunchData();
      launchType = paramBundle.getInt("_wxapplaunchdata_launchType");
      message = paramBundle.getString("_wxapplaunchdata_message");
      return localWXAppLaunchData;
    }
    
    public static Bundle toBundle(WXAppLaunchData paramWXAppLaunchData)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("_wxapplaunchdata_launchType", launchType);
      localBundle.putString("_wxapplaunchdata_message", message);
      return localBundle;
    }
  }
}
