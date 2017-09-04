package com.ta.utdid2.aid;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class AidStorageController
{
  private static final String KEY_PREF_AID_GEN_TIME = "rKrMJgyAEbVtSQGi";
  private static final String KEY_PREF_AID_VALUE = "EvQwnbilKezpOJey";
  private static final String PREF_AID = "OfJbkLdFbPOMbGyP";
  private static final String TAG;
  private static Map<String, Long> sAidGenTimeMapInSP = new ConcurrentHashMap();
  private static Map<String, String> sAidMapInSP;
  
  static
  {
    JniLib.a(AidStorageController.class, 993);
    TAG = AidStorageController.class.getName();
    sAidMapInSP = new ConcurrentHashMap();
  }
  
  public AidStorageController() {}
  
  public static native long getAidGenTimeFromSP(Context paramContext, String paramString1, String paramString2);
  
  public static native String getAidValueFromSP(Context paramContext, String paramString1, String paramString2);
  
  private static native String getEncodedAppName(String paramString1, String paramString2);
  
  public static native void setAidValueToSP(Context paramContext, String paramString1, String paramString2, String paramString3);
}
