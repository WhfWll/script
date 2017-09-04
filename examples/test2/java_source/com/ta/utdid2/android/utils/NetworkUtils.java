package com.ta.utdid2.android.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import com.bangcle.andjni.JniLib;

public class NetworkUtils
{
  public static final String DEFAULT_WIFI_ADDRESS = "00-00-00-00-00-00";
  private static final String TAG = "NetworkUtils";
  private static final int[] WEAK_NETWORK_GROUP = { 4, 7, 2, 1 };
  public static final String WIFI = "Wi-Fi";
  private static ConnectivityManager sConnManager;
  
  static
  {
    JniLib.a(NetworkUtils.class, 1001);
    sConnManager = null;
  }
  
  public NetworkUtils() {}
  
  private static native String _convertIntToIp(int paramInt);
  
  public static native ConnectivityManager getConnManager(Context paramContext);
  
  public static native String[] getNetworkState(Context paramContext);
  
  public static native String getWifiAddress(Context paramContext);
  
  public static native String getWifiIpAddress(Context paramContext);
  
  public static native boolean isConnected(Context paramContext);
  
  public static native boolean isConnectedToWeakNetwork(Context paramContext);
  
  public static native boolean isWifi(Context paramContext);
}
