package com.worklight.androidgap.jsonstore.security;

import android.content.Context;
import android.content.SharedPreferences;
import com.bangcle.andjni.JniLib;
import org.json.JSONException;

public class Keychain
{
  private static final String PREFS_NAME_DPK = "dpkPrefs";
  private static final String PREF_NAME_DPK = "dpk";
  private SharedPreferences prefs;
  
  static
  {
    JniLib.a(Keychain.class, 1099);
  }
  
  protected Keychain(Context paramContext)
  {
    prefs = paramContext.getSharedPreferences("dpkPrefs", 0);
  }
  
  private native String buildTag(String paramString);
  
  public native void destroy();
  
  public native DPKBean getDPKBean(String paramString)
    throws JSONException;
  
  public native boolean isDPKAvailable(String paramString);
  
  public native void setDPKBean(String paramString, DPKBean paramDPKBean);
}
