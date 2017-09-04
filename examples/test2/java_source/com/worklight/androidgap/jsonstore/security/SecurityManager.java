package com.worklight.androidgap.jsonstore.security;

import android.content.Context;
import com.bangcle.andjni.JniLib;

public class SecurityManager
{
  private static final int IV_NUM_BYTES = 16;
  private static final int LOCAL_KEY_NUM_BYTES = 32;
  private static SecurityManager instance;
  private Keychain keychain;
  
  static
  {
    JniLib.a(SecurityManager.class, 1100);
  }
  
  private SecurityManager(Context paramContext)
  {
    keychain = new Keychain(paramContext);
  }
  
  public static native SecurityManager getInstance(Context paramContext);
  
  public native void destroyKeychain();
  
  public native String getDPK(String paramString1, String paramString2)
    throws Exception;
  
  public native String getSalt(String paramString)
    throws Exception;
  
  public native boolean isDPKAvailable(String paramString);
  
  public native boolean storeDPK(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean1, boolean paramBoolean2)
    throws Exception;
}
