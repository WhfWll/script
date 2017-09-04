package com.ta.utdid2.aid;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import com.ut.device.a;

public class AidManager
{
  private static final int NUM_DAY_OUT_OF_DATE = 1;
  private static final String TAG = AidManager.class.getName();
  private static AidManager sAidManager;
  private Context mContext;
  
  static
  {
    JniLib.a(AidManager.class, 990);
    sAidManager = null;
  }
  
  private AidManager(Context paramContext)
  {
    mContext = paramContext;
  }
  
  private native String genAidValue(String paramString1, String paramString2, String paramString3);
  
  public static native AidManager getInstance(Context paramContext);
  
  public native String getValue(String paramString1, String paramString2, String paramString3);
  
  public native void requestAid(String paramString1, String paramString2, String paramString3, a paramA);
}
