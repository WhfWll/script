package com.ta.utdid2.android.utils;

import com.bangcle.andjni.JniLib;

public class TimeUtils
{
  public static final String TAG = TimeUtils.class.getName();
  public static final int TOTAL_M_S_ONE_DAY = 86400000;
  
  static
  {
    JniLib.a(TimeUtils.class, 1006);
  }
  
  public TimeUtils() {}
  
  public static native boolean isUpToDate(long paramLong, int paramInt);
}
