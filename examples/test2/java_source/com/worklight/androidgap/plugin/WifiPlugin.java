package com.worklight.androidgap.plugin;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import com.bangcle.andjni.JniLib;
import java.util.Random;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

public class WifiPlugin
  extends CordovaPlugin
{
  private static final String[] MACArray = { "egg", "bar", "least" };
  private static final String[] SSIDArray;
  public static final String TAG = "Wifi";
  private static final Random randomGenerator;
  private Context ctx;
  WifiManager wifiManager;
  
  static
  {
    JniLib.a(WifiPlugin.class, 1149);
    randomGenerator = new Random();
    SSIDArray = new String[] { "foo", "spam", "last" };
  }
  
  public WifiPlugin() {}
  
  private static native ScanResult createScanResult(String paramString1, String paramString2, int paramInt);
  
  private native WifiConnection getCurrentSsid(Context paramContext);
  
  private static native int getStrength(ScanResult paramScanResult);
  
  private static native boolean isEmulator();
  
  private native JSONArray resultToJSONArray(Iterable<ScanResult> paramIterable);
  
  private native void scanWifi(CallbackContext paramCallbackContext);
  
  private static native String toAllCaps(String paramString);
  
  public native boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException;
  
  static enum Action
  {
    ACQUIRE_WIFI;
    
    private Action() {}
  }
  
  private class WifiConnection
  {
    private String MAC = null;
    private String SSID = null;
    
    static
    {
      JniLib.a(WifiConnection.class, 1148);
    }
    
    public WifiConnection(String paramString1, String paramString2)
    {
      SSID = paramString1;
      MAC = paramString2;
    }
    
    public native String getMAC();
    
    public native String getSSID();
  }
}
