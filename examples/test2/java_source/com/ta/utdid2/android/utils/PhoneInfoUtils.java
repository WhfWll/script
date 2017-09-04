package com.ta.utdid2.android.utils;

import android.content.Context;
import com.bangcle.andjni.JniLib;

public class PhoneInfoUtils
{
  static
  {
    JniLib.a(PhoneInfoUtils.class, 1002);
  }
  
  public PhoneInfoUtils() {}
  
  public static native String getImei(Context paramContext);
  
  public static native String getImsi(Context paramContext);
  
  public static final native String getUniqueID();
}
